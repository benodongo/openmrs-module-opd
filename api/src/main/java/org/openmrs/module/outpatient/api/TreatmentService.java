package org.openmrs.module.outpatient.api;

import org.openmrs.api.OpenmrsService;
import org.openmrs.module.outpatient.Treatment;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Transactional
public interface TreatmentService extends OpenmrsService {

    // get list of AllTreatment
    @Transactional(readOnly = true)
    List<Treatment> getAllTreatment();
    //gets one Treatment
    @Transactional(readOnly = true)
    Treatment getTreatment(Integer treatmentId);

    //Saves Treatment
    Treatment saveTreatment(Treatment treatment);

    //deletes Treatment
    void purgeTreatment(Treatment treatment);
}
