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
package org.linqs.psl.reasoner.term;

import org.linqs.psl.database.Database;
import org.linqs.psl.model.atom.GroundAtom;
import org.linqs.psl.model.atom.ObservedAtom;
import org.linqs.psl.model.rule.GroundRule;
import org.linqs.psl.model.rule.Rule;
import org.linqs.psl.util.IteratorUtils;
import org.linqs.psl.util.Parallel;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * A place to store terms that are to be optimized.
 */
public abstract class TermStore<T extends ReasonerTerm> implements Iterable<T> {
    protected Database database;
    protected TermGenerator<T> termGenerator;

    private final String threadResourceKey;

    public TermStore(Database database, TermGenerator<T> termGenerator) {
        this.database = database;
        this.termGenerator = termGenerator;
        threadResourceKey = "termstore::objectid::" + System.identityHashCode(this);
    }

    /**
     * An internal add that will always be called to add new terms.
     * User will use add(GroundRule) which will generate terms and call this method.
     * This may be called in parallel, it is up to implementing classes to guarantee thread safety.
     */
    protected abstract int add(GroundRule groundRule, T term, Hyperplane hyperplane);

    /**
     * Remove any existing terms and prepare for a new set.
     */
    public abstract void clear();

    /**
     * Ensure that the underlying structures can have the required term capacity.
     * This is more of a hint to the store about how much memory will be used.
     * This is best called on an empty store so it can prepare.
     */
    public abstract void ensureCapacity(long capacity);

    public abstract T get(long index);

    public abstract Iterator<T> iterator();

    public abstract long size();

    public Database getDatabase() {
        return database;
    }

    public TermGenerator<T> getTermGenerator() {
        return termGenerator;
    }

    public void setTermGenerator(TermGenerator<T> termGenerator) {
        this.termGenerator = termGenerator;
    }

    /**
     * Convert the ground rule into terms and add it to this term store.
     * Return the number of terms added.
     * Note that this may be called in parallel.
     */
    public int add(GroundRule groundRule) {
        // Get the grounding resources for this thread,
        if (!Parallel.hasThreadObject(threadResourceKey)) {
            Parallel.putThreadObject(threadResourceKey, new ThreadResources());
        }
        @SuppressWarnings("unchecked")
        ThreadResources resources = (ThreadResources)Parallel.getThreadObject(threadResourceKey);

        resources.newTerms.clear();
        resources.newHyperplane.clear();

        termGenerator.createTerm(groundRule, resources.newTerms, resources.newHyperplane);

        int count = 0;
        for (int i = 0; i < resources.newTerms.size(); i++) {
            count += add(groundRule, resources.newTerms.get(i), resources.newHyperplane.get(i));
        }

        resources.newTerms.clear();
        resources.newHyperplane.clear();

        return count;
    }

    /**
     * Reset all atoms and terms.
     * Atom values are used to reset variables.
     * Does NOT clear().
     */
    public void reset() {
        database.getAtomStore().resetValues();
    }

    /**
     * Sync all the atom values into atoms.
     */
    public double sync() {
        return database.getAtomStore().sync();
    }

    /**
     * Close down the term store, it will not be used any more.
     */
    public void close() {
        clear();

        termGenerator = null;
        database = null;
    }

    /**
     * A notification by the Reasoner that a single iteration is complete.
     * TermStores may use this as a chance to update and data structures.
     */
    public void iterationComplete() {
    }

    /**
     * A notification by the Reasoner that optimization is about to begin.
     * TermStores may use this as a chance to finalize data structures.
     */
    public void initForOptimization() {
    }

    /**
     * Get all the terms associated with this rule.
     */
    public Iterable<T> getTerms(Rule rule) {
        final Rule finalRule = rule;

        return IteratorUtils.filter(this, new IteratorUtils.FilterFunction<T>() {
            public boolean keep(T term) {
                return finalRule.equals(term.getRule());
            }
        });
    }

    /**
     * Get all the atoms associated with each variable from the AtomStore.
     */
    public GroundAtom[] getVariableAtoms() {
        return database.getAtomStore().getAtoms();
    }

    /**
     * Get all the variable (atom) values from the AtomStore.
     */
    public float[] getVariableValues() {
        return database.getAtomStore().getAtomValues();
    }

    /**
     * Get the total number of all (obs/unobs) variables.
     */
    public int getNumVariables() {
        return database.getAtomStore().size();
    }

    /**
     * Get a count of all the types of atoms.
     */
    public AtomCount getVariableCounts() {
        AtomCount count = new AtomCount();

        for (GroundAtom atom : database.getAtomStore()) {
            if (atom instanceof ObservedAtom) {
                count.observed++;
            } else {
                count.unobserved++;
            }
        }

        return count;
    }

    /**
     * Get the number of terms associated with the given rule.
     */
    public long count(Rule rule) {
        int count = 0;

        for (T term : getTerms(rule)) {
            count++;
        }

        return count;
    }

    private class ThreadResources {
        public List<T> newTerms;
        public List<Hyperplane> newHyperplane;

        public ThreadResources() {
            newTerms = new ArrayList<T>();
            newHyperplane = new ArrayList<Hyperplane>();
        }
    }

    public class AtomCount {
        public int observed;
        public int unobserved;

        public AtomCount() {
            observed = 0;
            unobserved = 0;
        }

        @Override
        public String toString() {
            return String.format("%d unobserved and %d observed", unobserved, observed);
        }
    }
}
