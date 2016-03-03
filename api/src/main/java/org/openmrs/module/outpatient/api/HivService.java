package org.openmrs.module.outpatient.api;

import org.openmrs.api.OpenmrsService;
import org.openmrs.module.outpatient.Hiv;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Transactional
public interface HivService extends OpenmrsService {

    // get list of AllHiv
    @Transactional(readOnly = true)
    List<Hiv> getAllHiv();
    //gets one matenal
    @Transactional(readOnly = true)
    Hiv getHiv(Integer hivId);

    //Saves Hiv
    Hiv saveHiv(Hiv hiv);

    //deletes Hiv
    void purgeHiv(Hiv hiv);
}
