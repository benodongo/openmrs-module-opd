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

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * It is a model class. It should extend either {@link BaseOpenmrsObject} or {@link BaseOpenmrsMetadata}.
 */
public class Outpatient extends BaseOpenmrsObject implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Integer id;
    private Integer outPatientId;

    private String opdId;
    private Patient patient;
    private Set<Immunization> immunizations;
    private Set<Maternal> maternals;
    private Set<Hiv>hivs;
    private Set<GeneralOpd> generalOpds;

    //change and creation meta-data
    private String  createdBy;

    private Date dateCreated;

    private String changedBy;

    private Date dateChanged;

    //Setters and Getters
    public Integer getOutPatientId() {
        return outPatientId;
    }

    public void setOutPatientId(Integer outPatientId) {
        this.outPatientId = outPatientId;
    }
    public String getOpdId(){
        return opdId;
    }

    public void setOpdId(String opdId) {
        this.opdId = opdId;
    }
    //patient


    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public Set<Immunization> getImmunizations() {
        return immunizations;
    }

    public void setImmunizations(Set<Immunization> immunizations) {
        this.immunizations = immunizations;
    }

    public Set<Maternal> getMaternals() {
        return maternals;
    }

    public void setMaternals(Set<Maternal> maternals) {
        this.maternals = maternals;
    }

    public Set<Hiv> getHivs() {
        return hivs;
    }

    public void setHivs(Set<Hiv> hivs) {
        this.hivs = hivs;
    }

    public Set<GeneralOpd> getGeneralOpds() {
        return generalOpds;
    }

    public void setGeneralOpds(Set<GeneralOpd> generalOpds) {
        this.generalOpds = generalOpds;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public String getChangedBy() {
        return changedBy;
    }

    public void setChangedBy(String changedBy) {
        this.changedBy = changedBy;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public Date getDateChanged() {
        return dateChanged;
    }

    public void setDateChanged(Date dateChanged) {
        this.dateChanged = dateChanged;
    }

	@Override
	public Integer getId() {
		return getOutPatientId();
	}
	
	@Override
	public void setId(Integer id) {
		setOutPatientId(id);
	}
	
}