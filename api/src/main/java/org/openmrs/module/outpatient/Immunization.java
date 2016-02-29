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
public class Immunization extends BaseOpenmrsObject implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id;

    private Integer immunizationId;

    private Date bcgDate;
    private Date polio1Date;
    private Date polio2Date;
    private Date polio3Date;
    private Date measlesDate;
    private Date yellowFeverDate;
    private Date pcv;

    //added fields
    private String createdBy;

    private Date dateCreated;

    private String changedBy;

    private Date dateChanged;


    //Mapping

    private Outpatient outpatient;


    //    Getters and setters

    public Date getBcgDate() {
        return bcgDate;
    }

    public void setBcgDate(Date bcgDate) {
        this.bcgDate = bcgDate;
    }

    public Date getPolio1Date() {
        return polio1Date;
    }

    public void setPolio1Date(Date polio1Date) {
        this.polio1Date = polio1Date;
    }

    public Date getPolio2Date() {
        return polio2Date;
    }

    public void setPolio2Date(Date polio2Date) {
        this.polio2Date = polio2Date;
    }

    public Date getPolio3Date() {
        return polio3Date;
    }

    public void setPolio3Date(Date polio3Date) {
        this.polio3Date = polio3Date;
    }

    public Date getMeaslesDate() {
        return measlesDate;
    }

    public void setMeaslesDate(Date measlesDate) {
        this.measlesDate = measlesDate;
    }

    public Date getYellowFeverDate() {
        return yellowFeverDate;
    }

    public void setYellowFeverDate(Date yellowFeverDate) {
        this.yellowFeverDate = yellowFeverDate;
    }
    public String getCreatedBy() {
        return createdBy;
    }

    public Date getPcv() {
        return pcv;
    }

    public void setPcv(Date pcv) {
        this.pcv = pcv;
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

    public Integer getImmunizationId() {
        return immunizationId;
    }

    public void setImmunizationId(Integer immunizationId) {
        this.immunizationId = immunizationId;
    }
    //Mappings Getters and Setters


    public Outpatient getOutpatient() {
        return outpatient;
    }

    public void setOutpatient(Outpatient outpatient) {
        this.outpatient = outpatient;
    }
    @Override
    public Integer getId() {
        return getImmunizationId();
    }

    @Override
    public void setId(Integer id) {
        setImmunizationId(id);
    }

}




