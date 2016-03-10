package org.openmrs.module.outpatient.api.db;

import org.openmrs.module.outpatient.Vital;
import org.openmrs.module.outpatient.Vital;

import java.util.List;

/**
 * Created by benson.
 */
public interface VitalDAO {

    //save all Vital

    List<Vital> getAllVital();
    //gets an Vital
    Vital getVital(Integer vitalId);

    //Saves Vital
    Vital saveVital(Vital vital);

    //deletes an Vital
    void purgeVital(Vital vital);
}
