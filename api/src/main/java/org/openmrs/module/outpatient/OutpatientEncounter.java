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
package org.openmrs.module.outpatient;

import java.io.Serializable;
import org.openmrs.Encounter;


public class OutpatientEncounter extends Encounter implements Serializable {

    private static final long serialVersionUID = 1L;
private Integer outpatientEncounterId;
private Immunization immunization;
private Maternal maternal;
private Hiv hiv;

//getters and setters

    public Integer getOutpatientEncounterId() {
        return outpatientEncounterId;
    }

    public void setOutpatientEncounterId(Integer outpatientEncounterId) {
        this.outpatientEncounterId = outpatientEncounterId;
    }

    public Immunization getImmunization() {
        return immunization;
    }

    public void setImmunization(Immunization immunization) {
        this.immunization = immunization;
    }

    public Maternal getMaternal() {
        return maternal;
    }

    public void setMaternal(Maternal maternal) {
        this.maternal = maternal;
    }

    public Hiv getHiv() {
        return hiv;
    }

    public void setHiv(Hiv hiv) {
        this.hiv = hiv;
    }

    @Override
public Integer getId() {
    return getOutpatientEncounterId();
}
    @Override
    public void setId(Integer id) {
        setOutpatientEncounterId(id);
    }
}