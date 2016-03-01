package org.openmrs.module.outpatient.api.impl;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.api.impl.BaseOpenmrsService;
import org.openmrs.module.outpatient.Maternal;
import org.openmrs.module.outpatient.api.MaternalService;
import org.openmrs.module.outpatient.api.db.MaternalDAO;

import java.util.List;

/**
 * Created
 */
public class MaternalServiceImpl extends BaseOpenmrsService implements MaternalService {

    protected final Log log = LogFactory.getLog(this.getClass());

    private MaternalDAO dao;

    /**
     * @param dao the dao to set
     */
    public void setDao(MaternalDAO dao) {
        this.dao = dao;
    }

    /**
     * @return the dao
     */
    public MaternalDAO getDao() {
        return dao;
    }


    @Override
    public List<Maternal> getAllMaternal() {
        return dao.getAllMaternal();
    }

    @Override
    public Maternal getMaternal(Integer maternalId) {
        return dao.getMaternal(maternalId);
    }

    @Override
    public Maternal saveMaternal(Maternal maternal) {
        return dao.saveMaternal(maternal);
    }

    @Override
    public void purgeMaternal(Maternal maternal) {
        dao.purgeMaternal(maternal);

    }
}
