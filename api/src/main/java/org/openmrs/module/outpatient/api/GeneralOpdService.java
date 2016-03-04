package org.openmrs.module.outpatient.api;

import org.openmrs.api.OpenmrsService;
import org.openmrs.module.outpatient.GeneralOpd;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Transactional
public interface GeneralOpdService extends OpenmrsService {

    // get list of AllGeneralOpd
    @Transactional(readOnly = true)
    List<GeneralOpd> getAllGeneralOpd();
    //gets one opd
    @Transactional(readOnly = true)
    GeneralOpd getGeneralOpd(Integer generalOpdId);

    //Saves GeneralOpd
    GeneralOpd saveGeneralOpd(GeneralOpd generalOpd);

    //deletes GeneralOpd
    void purgeGeneralOpd(GeneralOpd generalOpd);
}
