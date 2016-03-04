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
import org.openmrs.BaseOpenmrsObject;
import org.openmrs.BaseOpenmrsMetadata;
import org.openmrs.Patient;
import org.openmrs.PatientIdentifier;
import org.openmrs.module.outpatient.Outpatient;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class GeneralOpd extends BaseOpenmrsObject implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private Integer generalOpdId;

    private Date visitDate;

    private Integer hivStatus;

    private Integer hivIntervention;

    private Integer nutritionStatus;

    private String guardian;

    private String referralFrom;


    //added fields
    private String  createdBy;

    private Date dateCreated;

    private String changedBy;

    private Date dateChanged;


    //Mapping

    private Outpatient outpatient;

    private Treatment treatment;
    private Set<OutpatientEncounter>encounters;

    //    Getters and setters


    public Integer getGeneralOpdId() {
        return generalOpdId;
    }

    public void setGeneralOpdId(Integer generalOpdId) {
        this.generalOpdId = generalOpdId;
    }

    public Date getVisitDate() {
        return visitDate;
    }

    public void setVisitDate(Date visitDate) {
        this.visitDate = visitDate;
    }

    public Integer getHivStatus() {
        return hivStatus;
    }

    public void setHivStatus(Integer hivStatus) {
        this.hivStatus = hivStatus;
    }

    public Integer getHivIntervention() {
        return hivIntervention;
    }

    public void setHivIntervention(Integer hivIntervention) {
        this.hivIntervention = hivIntervention;
    }

    public Integer getNutritionStatus() {
        return nutritionStatus;
    }

    public void setNutritionStatus(Integer nutritionStatus) {
        this.nutritionStatus = nutritionStatus;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public String getChangedBy() {
        return changedBy;
    }

    public void setChangedBy(String changedBy) {
        this.changedBy = changedBy;
    }

    public Date getDateChanged() {
        return dateChanged;
    }

    public void setDateChanged(Date dateChanged) {
        this.dateChanged = dateChanged;
    }

    public String getGuardian() {
        return guardian;
    }

    public void setGuardian(String guardian) {
        this.guardian = guardian;
    }

    public String getReferralFrom() {
        return referralFrom;
    }

    public void setReferralFrom(String referralFrom) {
        this.referralFrom = referralFrom;
    }

    //Mappings Getters and Setters


    public Outpatient getOutpatient() {
        return outpatient;
    }

    public void setOutpatient(Outpatient outpatient) {
        this.outpatient = outpatient;
    }

    public Treatment getTreatment() {
        return treatment;
    }

    public void setTreatment(Treatment treatment) {
        this.treatment = treatment;
    }

    public Set<OutpatientEncounter> getEncounters() {
        return encounters;
    }

    public void setEncounters(Set<OutpatientEncounter> encounters) {
        this.encounters = encounters;
    }

    @Override
    public Integer getId() {
        return generalOpdId;
    }

    @Override
    public void setId(Integer id) {
        setGeneralOpdId(id);
    }



}