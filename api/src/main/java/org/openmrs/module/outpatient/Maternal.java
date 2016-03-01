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
public class Maternal extends BaseOpenmrsObject implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id;
    private Integer maternalId;
    private String ancVisits;
    private String maritalStatus;
    private String parity;
    private String gravida;
    private Date lastMenstrual;
    private Date estimatedDelivery;

    //added fields
    private String createdBy;

    private Date dateCreated;

    private String changedBy;

    private Date dateChanged;


    //Mapping
    private Set<OutpatientEncounter>encounters;

    private Outpatient outpatient;

    //getters and setters


    public Integer getMaternalId() {
        return maternalId;
    }

    public void setMaternalId(Integer maternalId) {
        this.maternalId = maternalId;
    }

    public String getAncVisits() {
        return ancVisits;
    }

    public void setAncVisits(String ancVisits) {
        this.ancVisits = ancVisits;
    }

    public String getMaritalStatus() {
        return maritalStatus;
    }

    public void setMaritalStatus(String maritalStatus) {
        this.maritalStatus = maritalStatus;
    }

    public String getParity() {
        return parity;
    }

    public void setParity(String parity) {
        this.parity = parity;
    }

    public String getGravida() {
        return gravida;
    }

    public void setGravida(String gravida) {
        this.gravida = gravida;
    }

    public Date getLastMenstrual() {
        return lastMenstrual;
    }

    public void setLastMenstrual(Date lastMenstrual) {
        this.lastMenstrual = lastMenstrual;
    }

    public Date getEstimatedDelivery() {
        return estimatedDelivery;
    }

    public void setEstimatedDelivery(Date estimatedDelivery) {
        this.estimatedDelivery = estimatedDelivery;
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
        return getMaternalId();
    }

    @Override
    public void setId(Integer id) {
        setMaternalId(id);
    }

}
