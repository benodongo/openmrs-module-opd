package org.openmrs.module.outpatient;

import org.openmrs.BaseOpenmrsObject;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by benson
 */
public class Treatment extends BaseOpenmrsObject implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id;

    private Integer treatmentId;

    private Integer generalOpdId;

    private Date treatmentDate;

    private String diagnosis;

    private String treatment;

    private String outcome;

    private String causeOfDeath;

    private String referralTo;

    private String remarks;

    private GeneralOpd generalOpd;

    //change and creation meta-data
    private String  createdBy;

    private Date dateCreated;

    private String changedBy;

    private Date dateChanged;


    public Integer getTreatmentId() {
        return treatmentId;
    }

    public void setTreatmentId(Integer treatmentId) {
        this.treatmentId = treatmentId;
    }

    public Integer getGeneralOpdId() {
        return generalOpdId;
    }

    public void setGeneralOpdId(Integer generalOpdId) {
        this.generalOpdId = generalOpdId;
    }

    public Date getTreatmentDate() {
        return treatmentDate;
    }

    public void setTreatmentDate(Date treatmentDate) {
        this.treatmentDate = treatmentDate;
    }

    public String getDiagnosis() {
        return diagnosis;
    }

    public void setDiagnosis(String diagnosis) {
        this.diagnosis = diagnosis;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getReferralTo() {
        return referralTo;
    }

    public void setReferralTo(String referralTo) {
        this.referralTo = referralTo;
    }

    public String getCauseOfDeath() {
        return causeOfDeath;
    }

    public void setCauseOfDeath(String causeOfDeath) {
        this.causeOfDeath = causeOfDeath;
    }

    public String getOutcome() {
        return outcome;
    }

    public void setOutcome(String outcome) {
        this.outcome = outcome;
    }

    public String getTreatment() {
        return treatment;
    }

    public void setTreatment(String treatment) {
        this.treatment = treatment;
    }


    public GeneralOpd getGeneralOpd() {
        return generalOpd;
    }

    public void setGeneralOpd(GeneralOpd generalOpd) {
        this.generalOpd = generalOpd;
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
        return getTreatmentId();
    }

    @Override
    public void setId(Integer id) {
        setTreatmentId(id);
    }


}