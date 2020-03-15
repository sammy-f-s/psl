/*
 * This file is part of the PSL software.
 * Copyright 2011-2015 University of Maryland
 * Copyright 2013-2020 The Regents of the University of California
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

package org.linqs.psl.reasoner.bool;

import org.linqs.psl.TestModel;
import org.linqs.psl.application.inference.InferenceApplication;
import org.linqs.psl.application.inference.mpe.MPEInference;
import org.linqs.psl.config.Config;
import org.linqs.psl.config.Options;
import org.linqs.psl.database.Database;
import org.linqs.psl.grounding.AtomRegisterGroundRuleStore;
import org.linqs.psl.model.predicate.StandardPredicate;
import org.linqs.psl.reasoner.bool.BooleanMCSat;
import org.linqs.psl.reasoner.term.blocker.ConstraintBlockerTermStore;
import org.linqs.psl.reasoner.term.blocker.ConstraintBlockerTermGenerator;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.HashSet;
import java.util.Set;

public class BooleanMCSatTest {
    private TestModel.ModelInformation info;

    @Before
    public void setup() {
        Config.init();
        info = TestModel.getModel();

        Options.INFERENCE_REASONER.set(BooleanMCSat.class.getName());
        Options.INFERENCE_GRS.set(AtomRegisterGroundRuleStore.class.getName());
        Options.INFERENCE_TG.set(ConstraintBlockerTermGenerator.class.getName());
        Options.INFERENCE_TS.set(ConstraintBlockerTermStore.class.getName());
    }

    @After
    public void clear() {
        Config.init();
    }

    /**
     * A quick test that only checks to see if MPEInference works with BooleanMCSat.
     * This is not a targeted or exhaustive test, just a starting point.
     */
    @Test
    public void baseTest() {
        Set<StandardPredicate> toClose = new HashSet<StandardPredicate>();
        Database inferDB = info.dataStore.getDatabase(info.targetPartition, toClose, info.observationPartition);
        InferenceApplication inference = new MPEInference(info.model, inferDB);

        inference.inference();
        inference.close();
        inferDB.close();
    }
}
