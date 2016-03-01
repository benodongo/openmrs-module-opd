/**
 * The contents of this file are subject to the OpenMRS Public License
 * Version 1.0 (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at
 * http://license.openmrs.org
 *
 * Software distributed under the License is distributed on an "AS IS"
 * basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
 * License for the specific language governing rights and limitations
 * under the License.
 *
 * Copyright (C) OpenMRS, LLC.  All Rights Reserved.
 */
package org.openmrs.module.outpatient.api.db;

import org.openmrs.module.outpatient.api.OutpatientService;
import org.openmrs.module.outpatient.Outpatient;
import java.util.List;

/**
 *  Database methods for {@link OutpatientService}.
 */
public interface OutpatientDAO {

    List<Outpatient> getAllOutpatient();
    //gets an outpatient
    Outpatient getOutpatient(Integer opdId);
    //Saves a outpatient Identifiers
    Outpatient saveOutpatient(Outpatient outpatient);

    public Outpatient getOutpatientbyIdentifier(String opdId);

    //deletes an outpatient record
    void purgeOutpatient(Outpatient outpatient);
}