package org.openmrs.module.outpatient.api.impl;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.api.impl.BaseOpenmrsService;
import org.openmrs.module.outpatient.Immunization;
import org.openmrs.module.outpatient.api.ImmunizationService;
import org.openmrs.module.outpatient.api.db.ImmunizationDAO;

import java.util.List;

/**
 * Created
 */
public class ImmunizationServiceImpl extends BaseOpenmrsService implements ImmunizationService {

    protected final Log log = LogFactory.getLog(this.getClass());

    private ImmunizationDAO dao;

    /**
     * @param dao the dao to set
     */
    public void setDao(ImmunizationDAO dao) {
        this.dao = dao;
    }

    /**
     * @return the dao
     */
    public ImmunizationDAO getDao() {
        return dao;
    }


    @Override
    public List<Immunization> getAllImmunization() {
        return dao.getAllImmunization();
    }

    @Override
    public Immunization getImmunization(Integer immunizationId) {
        return dao.getImmunization(immunizationId);
    }

    @Override
    public Immunization saveImmunization(Immunization immunization) {
        return dao.saveImmunization(immunization);
    }

    @Override
    public void purgeImmunization(Immunization immunization) {
        dao.purgeImmunization(immunization);

    }
}
