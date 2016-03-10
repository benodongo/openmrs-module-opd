package org.openmrs.module.outpatient.api.impl;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.api.impl.BaseOpenmrsService;
import org.openmrs.module.outpatient.Vital;
import org.openmrs.module.outpatient.api.VitalService;
import org.openmrs.module.outpatient.api.db.VitalDAO;

import java.util.List;

/**
 * Created
 */
public class VitalServiceImpl extends BaseOpenmrsService implements VitalService {

    protected final Log log = LogFactory.getLog(this.getClass());

    private VitalDAO dao;

    /**
     * @param dao the dao to set
     */
    public void setDao(VitalDAO dao) {
        this.dao = dao;
    }

    /**
     * @return the dao
     */
    public VitalDAO getDao() {
        return dao;
    }


    @Override
    public List<Vital> getAllVital() {
        return dao.getAllVital();
    }

    @Override
    public Vital getVital(Integer vitalId) {
        return dao.getVital(vitalId);
    }

    @Override
    public Vital saveVital(Vital vital) {
        return dao.saveVital(vital);
    }

    @Override
    public void purgeVital(Vital vital) {
        dao.purgeVital(vital);

    }
}
