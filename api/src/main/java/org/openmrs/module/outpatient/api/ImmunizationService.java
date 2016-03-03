package org.openmrs.module.outpatient.api;

import org.openmrs.api.OpenmrsService;
import org.openmrs.module.outpatient.Immunization;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Transactional
public interface ImmunizationService extends OpenmrsService {

    // get list of All admission
    @Transactional(readOnly = true)
    List<Immunization> getAllImmunization();
    //gets an admission
    @Transactional(readOnly = true)
    Immunization getImmunization(Integer immunizationId);

    //Saves immunization
    Immunization saveImmunization(Immunization immunization);

    //deletes an immunization
    void purgeImmunization(Immunization immunization);
}
