package org.openmrs.module.outpatient.api.db;
import org.openmrs.module.outpatient.OutpatientEncounter;
import java.util.List;


public interface OutpatientEncounterDAO {

    List<OutpatientEncounter> getAllOutpatientEncounters();

    OutpatientEncounter getOutpatientEncounter(Integer encounterId);

    OutpatientEncounter saveOutpatientEncounter(OutpatientEncounter encounter);

    void purgeOutpatientEncounter( OutpatientEncounter encounter);
}