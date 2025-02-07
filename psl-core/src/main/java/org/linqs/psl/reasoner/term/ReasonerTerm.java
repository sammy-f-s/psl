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

import org.linqs.psl.model.rule.Rule;

public interface ReasonerTerm {
    /**
     * The number of variables this term uses.
     */
    public int size();

    /**
     * Whether this term is convex.
     * Reasoners may treat non-convex terms differently.
     */
    public boolean isConvex();

    /**
     * Get the rule this term was generated from.
     */
    public Rule getRule();

    /**
     * Evaluate the term using the given variable values (indexed according to the AtomStore).
     */
    public float evaluate(float[] variableValues);
}
