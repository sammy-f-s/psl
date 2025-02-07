/*
 * This file is part of the PSL software.
 * Copyright 2011-2015 University of Maryland
 * Copyright 2013-2023 The Regents of the University of California
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.linqs.psl.reasoner.sgd;

import org.linqs.psl.application.learning.weight.TrainingMap;
import org.linqs.psl.config.Options;
import org.linqs.psl.evaluation.EvaluationInstance;
import org.linqs.psl.model.atom.GroundAtom;
import org.linqs.psl.model.atom.ObservedAtom;
import org.linqs.psl.model.predicate.StandardPredicate;
import org.linqs.psl.model.rule.WeightedRule;
import org.linqs.psl.reasoner.Reasoner;
import org.linqs.psl.reasoner.sgd.term.SGDObjectiveTerm;
import org.linqs.psl.reasoner.term.TermStore;
import org.linqs.psl.util.ArrayUtils;
import org.linqs.psl.util.IteratorUtils;
import org.linqs.psl.util.Logger;
import org.linqs.psl.util.MathUtils;
import org.linqs.psl.util.RandUtils;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/**
 * Uses an SGD optimization method to optimize its GroundRules.
 */
public class SGDReasoner extends Reasoner<SGDObjectiveTerm> {
    private static final Logger log = Logger.getLogger(SGDReasoner.class);

    private static final float EPSILON = 1e-8f;

    /**
     * The SGD Extension to use.
     */
    public static enum SGDExtension {
        NONE,
        ADAGRAD,
        ADAM
    }

    /**
     * The SGD learning schedule to use.
     */
    public static enum SGDLearningSchedule {
        CONSTANT,
        STEPDECAY
    }

    private int maxIterations;

    private float firstOrderTolerance;
    private float firstOrderNorm;

    private boolean watchMovement;
    private float movementThreshold;

    private float initialLearningRate;
    private float learningRateInverseScaleExp;
    private float adamBeta1;
    private float adamBeta2;
    private float[] accumulatedGradientSquares;
    private float[] accumulatedGradientMean;
    private float[] accumulatedGradientVariance;
    private boolean coordinateStep;
    private SGDLearningSchedule learningSchedule;
    private SGDExtension sgdExtension;

    public SGDReasoner() {
        maxIterations = Options.SGD_MAX_ITER.getInt();

        firstOrderTolerance = Options.SGD_FIRST_ORDER_THRESHOLD.getFloat();
        firstOrderNorm = Options.SGD_FIRST_ORDER_NORM.getFloat();

        watchMovement = Options.SGD_MOVEMENT.getBoolean();
        movementThreshold = Options.SGD_MOVEMENT_THRESHOLD.getFloat();

        initialLearningRate = Options.SGD_LEARNING_RATE.getFloat();
        learningRateInverseScaleExp = Options.SGD_INVERSE_TIME_EXP.getFloat();
        learningSchedule = SGDLearningSchedule.valueOf(Options.SGD_LEARNING_SCHEDULE.getString().toUpperCase());

        adamBeta1 = Options.SGD_ADAM_BETA_1.getFloat();
        adamBeta2 = Options.SGD_ADAM_BETA_2.getFloat();
        accumulatedGradientSquares = null;
        accumulatedGradientMean = null;
        accumulatedGradientVariance = null;
        coordinateStep = Options.SGD_COORDINATE_STEP.getBoolean();
        sgdExtension = SGDExtension.valueOf(Options.SGD_EXTENSION.getString().toUpperCase());
    }

    @Override
    public double optimize(TermStore<SGDObjectiveTerm> termStore, List<EvaluationInstance> evaluations, TrainingMap trainingMap) {
        termStore.initForOptimization();
        initForOptimization(termStore);

        long termCount = 0;
        float meanMovement = 0.0f;
        float learningRate = 0.0f;
        double change = 0.0;
        double objective = 0.0;
        // Starting on the second iteration, keep track of the previous iteration's objective value.
        // The variable values from the term store cannot be used to calculate the objective during an
        // optimization pass because they are being updated in the variableUpdate() method.
        // Note that the number of variables may change in the first iteration (since grounding may happen then).
        double oldObjective = Double.POSITIVE_INFINITY;
        float[] prevGradient = null;
        float[] prevVariableValues = null;
        // Save and use the variable values with the lowest computed objective.
        double lowestObjective = Double.POSITIVE_INFINITY;
        float[] lowestVariableValues = null;
        int lowestIteration = 0;

        long totalTime = 0;
        boolean breakSGD = false;
        int iteration = 1;

        while(!breakSGD) {
            long start = System.currentTimeMillis();

            termCount = 0;
            meanMovement = 0.0f;
            objective = 0.0;
            learningRate = calculateAnnealedLearningRate(iteration);

            boolean useNonConvex = false;
            if ((iteration >= nonconvexPeriod) && (iteration % nonconvexPeriod < nonconvexRounds)) {
                useNonConvex = true;
            }

            if (iteration > 1) {
                // Reset gradients for next round.
                Arrays.fill(prevGradient, 0.0f);
            }

            for (SGDObjectiveTerm term : termStore) {
                if (iteration > 1) {
                    objective += term.evaluate(prevVariableValues);
                    addTermGradient(term, prevGradient, prevVariableValues, termStore.getVariableAtoms());
                }

                termCount++;
                meanMovement += variableUpdate(term, termStore, iteration, learningRate);
            }

            evaluate(termStore, iteration, evaluations, trainingMap);

            termStore.iterationComplete();

            if (termCount != 0) {
                meanMovement /= termCount;
            }

            if (iteration == 1) {
                // Initialize old variables values and gradient.
                prevGradient = new float[termStore.getVariableValues().length];
                prevVariableValues = Arrays.copyOf(termStore.getVariableValues(), termStore.getVariableValues().length);
                lowestVariableValues = Arrays.copyOf(termStore.getVariableValues(), termStore.getVariableValues().length);
            } else {
                clipGradient(prevGradient, prevVariableValues);
                breakSGD = breakOptimization(iteration, objective, oldObjective, prevGradient, meanMovement, termCount);

                // Update lowest objective and variable values.
                if (objective < lowestObjective) {
                    lowestIteration = iteration - 1;
                    lowestObjective = objective;
                    System.arraycopy(prevVariableValues, 0, lowestVariableValues, 0, lowestVariableValues.length);
                }

                // Update old variables values and objective.
                System.arraycopy(termStore.getVariableValues(), 0, prevVariableValues, 0, prevVariableValues.length);
                oldObjective = objective;
            }

            long end = System.currentTimeMillis();
            totalTime += end - start;

            if (iteration > 1 && log.isTraceEnabled()) {
                log.trace("Iteration {} -- Objective: {}, Normalized Objective: {}, Gradient Norm: {}, Iteration Time: {}, Total Optimization Time: {}",
                        iteration - 1, objective, objective / termCount, MathUtils.pNorm(prevGradient, firstOrderNorm), (end - start), totalTime);
            }

            iteration++;
        }
        optimizationComplete();

        // Compute final objective and update lowest variable values, then set termStore values with lowest values.
        objective = computeObjective(termStore);
        if (objective < lowestObjective) {
            lowestIteration = iteration - 1;
            lowestObjective = objective;
            lowestVariableValues = prevVariableValues;
        }

        float[] variableValues = termStore.getVariableValues();
        System.arraycopy(lowestVariableValues, 0, variableValues, 0, variableValues.length);

        // Compute variable change and log optimization information.
        change = termStore.sync();
        log.info("Final Objective: {}, Final Normalized Objective: {}, Total Optimization Time: {}, Total Number of Iterations: {}", lowestObjective, lowestObjective / termCount, totalTime, iteration);
        log.debug("Movement of variables from initial state: {}", change);
        log.debug("Optimized with {} variables and {} terms.", termStore.getVariableCounts(), termCount);
        log.debug("Lowest objective reached at iteration: {}", lowestIteration);

        return lowestObjective;
    }

    private void initForOptimization(TermStore termStore) {
        switch (sgdExtension) {
            case NONE:
                break;
            case ADAGRAD:
                accumulatedGradientSquares = new float[termStore.getVariableCounts().unobserved];
                break;
            case ADAM:
                int unobservedCount = termStore.getVariableCounts().unobserved;
                accumulatedGradientMean = new float[unobservedCount];
                accumulatedGradientVariance = new float[unobservedCount];
                break;
            default:
                throw new IllegalArgumentException(String.format("Unsupported SGD Extensions: '%s'", sgdExtension));
        }
    }

    private void optimizationComplete() {
        accumulatedGradientSquares = null;
        accumulatedGradientMean = null;
        accumulatedGradientVariance = null;
    }

    private boolean breakOptimization(int iteration, double objective, double oldObjective, float[] gradient, float movement, long termCount) {
        // Always break when the allocated iterations is up.
        if (iteration > (int)(maxIterations * budget)) {
            return true;
        }

        // Run through the maximum number of iterations.
        if (runFullIterations) {
            return false;
        }

        // Do not break if there is too much movement.
        if (watchMovement && movement > movementThreshold) {
            return false;
        }

        // Break if the norm of the gradient is zero.
        if (MathUtils.equals(MathUtils.pNorm(gradient, firstOrderNorm), 0.0f, firstOrderTolerance)) {
            return true;
        }

        // Break if the objective has not changed.
        if (objectiveBreak && MathUtils.equals(objective / termCount, oldObjective / termCount, tolerance)) {
            return true;
        }

        return false;
    }

    private void clipGradient(float[] gradient, float[] variableValues) {
        for(int i = 0; i < gradient.length; i++) {
            if (MathUtils.equals(variableValues[i], 0.0f) && gradient[i] > 0.0f) {
                gradient[i] = 0.0f;
            } else if (MathUtils.equals(variableValues[i], 1.0f) && gradient[i] < 0.0f) {
                gradient[i] = 0.0f;
            }
        }
    }

    private void addTermGradient(SGDObjectiveTerm term, float[] gradient, float[] variableValues, GroundAtom[] variableAtoms) {
        int size = term.size();
        WeightedRule rule = (WeightedRule)term.getRule();
        int[] variableIndexes = term.getVariableIndexes();
        float dot = term.dot(variableValues);

        for (int i = 0 ; i < size; i++) {
            if (variableAtoms[variableIndexes[i]] instanceof ObservedAtom) {
                continue;
            }

            gradient[variableIndexes[i]] += term.computePartial(i, dot, rule.getWeight());
        }
    }

    private double computeObjective(TermStore<SGDObjectiveTerm> termStore) {
        double objective = 0.0;

        float[] variableValues = termStore.getVariableValues();
        for (SGDObjectiveTerm term : termStore) {
            objective += term.evaluate(variableValues);
        }

        return objective;
    }

    private float calculateAnnealedLearningRate(int iteration) {
        switch (learningSchedule) {
            case CONSTANT:
                return initialLearningRate;
            case STEPDECAY:
                return initialLearningRate / ((float)Math.pow(iteration, learningRateInverseScaleExp));
            default:
                throw new IllegalArgumentException(String.format("Illegal value found for SGD learning schedule: '%s'", learningSchedule));
        }
    }

    /**
     * Update the random variables by taking a step in the direction of the negative gradient of the term.
     */
    private float variableUpdate(SGDObjectiveTerm term, TermStore termStore,
                                int iteration, float learningRate) {
        float movement = 0.0f;
        float variableStep = 0.0f;
        float newValue = 0.0f;
        float partial = 0.0f;

        GroundAtom[] variableAtoms = termStore.getVariableAtoms();
        float[] variableValues = termStore.getVariableValues();

        int size = term.size();
        WeightedRule rule = (WeightedRule)term.getRule();
        int[] variableIndexes = term.getVariableIndexes();
        float dot = term.dot(variableValues);

        for (int i = 0 ; i < size; i++) {
            if (variableAtoms[variableIndexes[i]] instanceof ObservedAtom) {
                continue;
            }

            partial = term.computePartial(i, dot, rule.getWeight());
            variableStep = computeVariableStep(variableIndexes[i], iteration, learningRate, partial);

            newValue = Math.max(0.0f, Math.min(1.0f, variableValues[variableIndexes[i]] - variableStep));
            movement += Math.abs(newValue - variableValues[variableIndexes[i]]);
            variableValues[variableIndexes[i]] = newValue;

            if (coordinateStep) {
                dot = term.dot(variableValues);
            }
        }

        return movement;
    }

    /**
     * Compute the step for a single variable according SGD or one of it's extensions.
     * For details on the math behind the SGD extensions see the corresponding papers listed below:
     *  - AdaGrad: https://jmlr.org/papers/volume12/duchi11a/duchi11a.pdf
     *  - Adam: https://arxiv.org/pdf/1412.6980.pdf
     */
    private float computeVariableStep(int variableIndex, int iteration, float learningRate, float partial) {
        float step = 0.0f;
        float adaptedLearningRate = 0.0f;

        switch (sgdExtension) {
            case NONE:
                step = partial * learningRate;
                break;
            case ADAGRAD:
                accumulatedGradientSquares = ArrayUtils.ensureCapacity(accumulatedGradientSquares, variableIndex);
                accumulatedGradientSquares[variableIndex] = accumulatedGradientSquares[variableIndex] + partial * partial;

                adaptedLearningRate = learningRate / (float)Math.sqrt(accumulatedGradientSquares[variableIndex] + EPSILON);
                step = partial * adaptedLearningRate;
                break;
            case ADAM:
                float biasedGradientMean = 0.0f;
                float biasedGradientVariance = 0.0f;

                accumulatedGradientMean = ArrayUtils.ensureCapacity(accumulatedGradientMean, variableIndex);
                accumulatedGradientMean[variableIndex] = adamBeta1 * accumulatedGradientMean[variableIndex] + (1.0f - adamBeta1) * partial;

                accumulatedGradientVariance = ArrayUtils.ensureCapacity(accumulatedGradientVariance, variableIndex);
                accumulatedGradientVariance[variableIndex] = adamBeta2 * accumulatedGradientVariance[variableIndex] + (1.0f - adamBeta2) * partial * partial;

                biasedGradientMean = accumulatedGradientMean[variableIndex] / (1.0f - (float)Math.pow(adamBeta1, iteration));
                biasedGradientVariance = accumulatedGradientVariance[variableIndex] / (1.0f - (float)Math.pow(adamBeta2, iteration));
                adaptedLearningRate = learningRate / ((float)Math.sqrt(biasedGradientVariance) + EPSILON);
                step = biasedGradientMean * adaptedLearningRate;
                break;
            default:
                throw new IllegalArgumentException(String.format("Unsupported SGD Extensions: '%s'", sgdExtension));
        }

        return step;
    }

    @Override
    public void close() {
    }
}
