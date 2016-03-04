package org.openmrs.module.outpatient.api.impl;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.api.impl.BaseOpenmrsService;
import org.openmrs.module.outpatient.Treatment;
import org.openmrs.module.outpatient.api.TreatmentService;
import org.openmrs.module.outpatient.api.db.TreatmentDAO;

import java.util.List;

/**
 * Created
 */
public class TreatmentServiceImpl extends BaseOpenmrsService implements TreatmentService {

    protected final Log log = LogFactory.getLog(this.getClass());

    private TreatmentDAO dao;

    /**
     * @param dao the dao to set
     */
    public void setDao(TreatmentDAO dao) {
        this.dao = dao;
    }

    /**
     * @return the dao
     */
    public TreatmentDAO getDao() {
        return dao;
    }


    @Override
    public List<Treatment> getAllTreatment() {
        return dao.getAllTreatment();
    }

    @Override
    public Treatment getTreatment(Integer treatmentId) {
        return dao.getTreatment(treatmentId);
    }

    @Override
    public Treatment saveTreatment(Treatment treatment) {
        return dao.saveTreatment(treatment);
    }

    @Override
    public void purgeTreatment(Treatment treatment) {
        dao.purgeTreatment(treatment);

    }
}
