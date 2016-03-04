package org.openmrs.module.outpatient.api.db.hibernate;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.SessionFactory;
import org.openmrs.module.outpatient.GeneralOpd;
import org.openmrs.module.outpatient.api.db.GeneralOpdDAO;

import java.util.List;

/**
 * Created by benson.
 */
public class HibernateGeneralOpdDAO implements GeneralOpdDAO {
    protected final Log log = LogFactory.getLog(this.getClass());

    private SessionFactory sessionFactory;

    /**
     * @param sessionFactory the sessionFactory to set
     */
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    /**
     * @return the sessionFactory
     */
    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    @Override
    public List<GeneralOpd> getAllGeneralOpd() {
        return sessionFactory.getCurrentSession().createCriteria(GeneralOpd.class).list();
    }

    @Override
    public GeneralOpd getGeneralOpd(Integer generalOpdId) {
        return (GeneralOpd) sessionFactory.getCurrentSession().get(GeneralOpd.class, generalOpdId);
    }

    @Override
    public GeneralOpd saveGeneralOpd(GeneralOpd generalOpd) {
        sessionFactory.getCurrentSession().save(generalOpd);
        return generalOpd;
    }

    @Override
    public void purgeGeneralOpd(GeneralOpd generalOpd) {
        sessionFactory.getCurrentSession().delete(generalOpd);

    }
}
