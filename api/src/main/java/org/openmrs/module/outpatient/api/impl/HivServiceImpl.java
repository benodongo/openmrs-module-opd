package org.openmrs.module.outpatient.api.impl;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.api.impl.BaseOpenmrsService;
import org.openmrs.module.outpatient.Hiv;
import org.openmrs.module.outpatient.api.HivService;
import org.openmrs.module.outpatient.api.db.HivDAO;

import java.util.List;

/**
 * Created
 */
public class HivServiceImpl extends BaseOpenmrsService implements HivService {

    protected final Log log = LogFactory.getLog(this.getClass());

    private HivDAO dao;

    /**
     * @param dao the dao to set
     */
    public void setDao(HivDAO dao) {
        this.dao = dao;
    }

    /**
     * @return the dao
     */
    public HivDAO getDao() {
        return dao;
    }


    @Override
    public List<Hiv> getAllHiv() {
        return dao.getAllHiv();
    }

    @Override
    public Hiv getHiv(Integer hivId) {
        return dao.getHiv(hivId);
    }

    @Override
    public Hiv saveHiv(Hiv hiv) {
        return dao.saveHiv(hiv);
    }

    @Override
    public void purgeHiv(Hiv hiv) {
        dao.purgeHiv(hiv);

    }
}
