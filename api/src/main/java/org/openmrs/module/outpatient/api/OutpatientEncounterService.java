package org.openmrs.module.outpatient.api;

import org.openmrs.api.EncounterService;
import org.openmrs.api.OpenmrsService;
import org.openmrs.module.outpatient.OutpatientEncounter;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by benson.
 */
@Transactional
public interface OutpatientEncounterService extends OpenmrsService {


    @Transactional(readOnly = true)
    List<OutpatientEncounter> getAllOutpatientEncounters();

    @Transactional(readOnly = true)
    OutpatientEncounter getOutpatientEncounter(Integer encounterId);

    OutpatientEncounter saveOutpatientEncounter(OutpatientEncounter encounter);

    void purgeOutpatientEncounter( OutpatientEncounter encounter);
}
