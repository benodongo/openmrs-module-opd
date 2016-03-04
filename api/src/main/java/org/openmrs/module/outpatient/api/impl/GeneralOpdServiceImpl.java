package org.openmrs.module.outpatient.api.impl;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.api.impl.BaseOpenmrsService;
import org.openmrs.module.outpatient.GeneralOpd;
import org.openmrs.module.outpatient.api.GeneralOpdService;
import org.openmrs.module.outpatient.api.db.GeneralOpdDAO;

import java.util.List;

/**
 * Created
 */
public class GeneralOpdServiceImpl extends BaseOpenmrsService implements GeneralOpdService {

    protected final Log log = LogFactory.getLog(this.getClass());

    private GeneralOpdDAO dao;

    /**
     * @param dao the dao to set
     */
    public void setDao(GeneralOpdDAO dao) {
        this.dao = dao;
    }

    /**
     * @return the dao
     */
    public GeneralOpdDAO getDao() {
        return dao;
    }


    @Override
    public List<GeneralOpd> getAllGeneralOpd() {
        return dao.getAllGeneralOpd();
    }

    @Override
    public GeneralOpd getGeneralOpd(Integer generalOpdId) {
        return dao.getGeneralOpd(generalOpdId);
    }

    @Override
    public GeneralOpd saveGeneralOpd(GeneralOpd generalOpd) {
        return dao.saveGeneralOpd(generalOpd);
    }

    @Override
    public void purgeGeneralOpd(GeneralOpd generalOpd) {
        dao.purgeGeneralOpd(generalOpd);

    }
}
