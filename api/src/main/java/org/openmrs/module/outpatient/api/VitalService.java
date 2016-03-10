package org.openmrs.module.outpatient.api;

import org.openmrs.api.OpenmrsService;
import org.openmrs.module.outpatient.Vital;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Transactional
public interface VitalService extends OpenmrsService {

    // get list of AllVital
    @Transactional(readOnly = true)
    List<Vital> getAllVital();
    //gets one Vital
    @Transactional(readOnly = true)
    Vital getVital(Integer vitalId);

    //Saves Vital
    Vital saveVital(Vital vital);

    //deletes Vital
    void purgeVital(Vital vital);
}
