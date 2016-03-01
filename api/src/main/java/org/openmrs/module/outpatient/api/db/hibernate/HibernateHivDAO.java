package org.openmrs.module.outpatient.api.db.hibernate;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.SessionFactory;
import org.openmrs.module.outpatient.Hiv;
import org.openmrs.module.outpatient.api.db.HivDAO;

import java.util.List;

/**
 * Created by benson.
 */
public class HibernateHivDAO implements HivDAO {
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
    public List<Hiv> getAllHiv() {
        return sessionFactory.getCurrentSession().createCriteria(Hiv.class).list();
    }

    @Override
    public Hiv getHiv(Integer hivId) {
        return (Hiv) sessionFactory.getCurrentSession().get(Hiv.class, hivId);
    }

    @Override
    public Hiv saveHiv(Hiv hiv) {
        sessionFactory.getCurrentSession().save(hiv);
        return hiv;
    }

    @Override
    public void purgeHiv(Hiv hiv) {
        sessionFactory.getCurrentSession().delete(hiv);

    }
}
