package org.openmrs.module.outpatient;

import org.openmrs.BaseOpenmrsObject;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by benson 0n 8/3/2016
 */
public class Vital extends BaseOpenmrsObject implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id;

    private Integer vitalId;
    private String height;
    private String weight;
    private String bmi;
    private String temperature;
    private String pulse;
    private String respiratory;
    private String bloodPressure;
    private String oxygenSat;

    private Integer generalOpdId;


    private GeneralOpd generalOpd;

    //change and creation meta-data
    private String  createdBy;

    private Date dateCreated;

    private String changedBy;

    private Date dateChanged;

    public Integer getVitalId() {
        return vitalId;
    }

    public void setVitalId(Integer vitalId) {
        this.vitalId = vitalId;
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

    public String getBmi() {
        return bmi;
    }

    public void setBmi(String bmi) {
        this.bmi = bmi;
    }

    public String getTemperature() {
        return temperature;
    }

    public void setTemperature(String temperature) {
        this.temperature = temperature;
    }

    public String getPulse() {
        return pulse;
    }

    public void setPulse(String pulse) {
        this.pulse = pulse;
    }

    public String getRespiratory() {
        return respiratory;
    }

    public void setRespiratory(String respiratory) {
        this.respiratory = respiratory;
    }

    public String getBloodPressure() {
        return bloodPressure;
    }

    public void setBloodPressure(String bloodPressure) {
        this.bloodPressure = bloodPressure;
    }

    public String getOxygenSat() {
        return oxygenSat;
    }

    public void setOxygenSat(String oxygenSat) {
        this.oxygenSat = oxygenSat;
    }

    public Integer getGeneralOpdId() {
        return generalOpdId;
    }

    public void setGeneralOpdId(Integer generalOpdId) {
        this.generalOpdId = generalOpdId;
    }

    public GeneralOpd getGeneralOpd() {
        return generalOpd;
    }

    public void setGeneralOpd(GeneralOpd generalOpd) {
        this.generalOpd = generalOpd;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
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

    public Date getDateChanged() {
        return dateChanged;
    }

    public void setDateChanged(Date dateChanged) {
        this.dateChanged = dateChanged;
    }

    @Override
    public Integer getId() {
        return getVitalId();
    }

    @Override
    public void setId(Integer id) {
        setVitalId(id);
    }


}
