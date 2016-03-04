package org.openmrs.module.outpatient.api.db;

import org.openmrs.module.outpatient.Treatment;
import org.openmrs.module.outpatient.Treatment;

import java.util.List;

/**
 * Created by benson.
 */
public interface TreatmentDAO {

    //save all Treatment

    List<Treatment> getAllTreatment();
    //gets an Treatment
    Treatment getTreatment(Integer treatmentId);

    //Saves Treatment
    Treatment saveTreatment(Treatment treatment);

    //deletes an Treatment
    void purgeTreatment(Treatment treatment);
}
