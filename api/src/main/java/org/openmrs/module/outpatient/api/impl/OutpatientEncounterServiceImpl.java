package org.openmrs.module.outpatient.api.impl;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.api.impl.BaseOpenmrsService;
import org.openmrs.module.outpatient.OutpatientEncounter;
import org.openmrs.module.outpatient.api.OutpatientEncounterService;
import org.openmrs.module.outpatient.api.db.OutpatientEncounterDAO;

import java.util.List;

public class OutpatientEncounterServiceImpl extends BaseOpenmrsService implements OutpatientEncounterService {


    protected final Log log = LogFactory.getLog(this.getClass());

    private OutpatientEncounterDAO dao;

    /**
     * @param dao the dao to set
     */
    public void setDao(OutpatientEncounterDAO dao) {
        this.dao = dao;
    }

    /**
     * @return the dao
     */
    public OutpatientEncounterDAO getDao() {
        return dao;
    }


    @Override
    public List<OutpatientEncounter> getAllOutpatientEncounters() {
        return dao.getAllOutpatientEncounters();
    }

    @Override
    public OutpatientEncounter getOutpatientEncounter(Integer encounterId) {
        return dao.getOutpatientEncounter(encounterId);
    }

    @Override
    public OutpatientEncounter saveOutpatientEncounter(OutpatientEncounter encounter) {
        return dao.saveOutpatientEncounter(encounter);
    }

    @Override
    public void purgeOutpatientEncounter(OutpatientEncounter encounter) {
        dao.purgeOutpatientEncounter(encounter);

    }
}
