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

public class Hiv extends BaseOpenmrsObject implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id;
    private Integer hivId;
    private Date admissionDate;
    private Integer serialCounter;
    private Date artDate;
    private String eligibilityReason;
    private String clinicalStage;
    private String cd4Value;
    private String height;
    private String weight;
    private Date ctxDate;
    private Date tbDate;
    private String tbReg;
    private String originalRegime;
    //set outpatient class
    private Outpatient outpatient;
    private Set<OutpatientEncounter>encounters;

    //change and creation meta-data
    private String  createdBy;

    private Date dateCreated;

    private String changedBy;

    private Date dateChanged;


    //getters and setters


    public Integer getHivId() {
        return hivId;
    }

    public void setHivId(Integer hivId) {
        this.hivId = hivId;
    }

    public Date getAdmissionDate() {
        return admissionDate;
    }

    public void setAdmissionDate(Date admissionDate) {
        this.admissionDate = admissionDate;
    }

    public Integer getSerialCounter() {
        return serialCounter;
    }

    public void setSerialCounter(Integer serialCounter) {
        this.serialCounter = serialCounter;
    }

    public Date getArtDate() {
        return artDate;
    }

    public void setArtDate(Date artDate) {
        this.artDate = artDate;
    }

    public String getEligibilityReason() {
        return eligibilityReason;
    }

    public void setEligibilityReason(String eligibilityReason) {
        this.eligibilityReason = eligibilityReason;
    }

    public String getClinicalStage() {
        return clinicalStage;
    }

    public void setClinicalStage(String clinicalStage) {
        this.clinicalStage = clinicalStage;
    }

    public String getCd4Value() {
        return cd4Value;
    }

    public void setCd4Value(String cd4Value) {
        this.cd4Value = cd4Value;
    }

    public String getHeight() {
        return height;
    }

    public void setHeight(String height) {
        this.height = height;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public Date getCtxDate() {
        return ctxDate;
    }

    public void setCtxDate(Date ctxDate) {
        this.ctxDate = ctxDate;
    }

    public Date getTbDate() {
        return tbDate;
    }

    public void setTbDate(Date tbDate) {
        this.tbDate = tbDate;
    }

    public String getTbReg() {
        return tbReg;
    }

    public void setTbReg(String tbReg) {
        this.tbReg = tbReg;
    }

    public String getOriginalRegime() {
        return originalRegime;
    }

    public void setOriginalRegime(String originalRegime) {
        this.originalRegime = originalRegime;
    }

    //getters nad setters for changes

    public String getChangedBy() {
        return changedBy;
    }

    public void setChangedBy(String changedBy) {
        this.changedBy = changedBy;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public Date getDateChanged() {
        return dateChanged;
    }

    public void setDateChanged(Date dateChanged) {
        this.dateChanged = dateChanged;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }
    //setter for class and mappings


    public Set<OutpatientEncounter> getEncounters() {
        return encounters;
    }

    public void setEncounters(Set<OutpatientEncounter> encounters) {
        this.encounters = encounters;
    }

    public Outpatient getOutpatient() {
        return outpatient;
    }

    public void setOutpatient(Outpatient outpatient) {
        this.outpatient = outpatient;
    }

    @Override
    public Integer getId() {
        return getHivId();
    }

    @Override
    public void setId(Integer id) {
        setHivId(id);
    }

}
