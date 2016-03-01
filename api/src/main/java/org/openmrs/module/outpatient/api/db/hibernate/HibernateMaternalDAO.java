package org.openmrs.module.outpatient.api.db.hibernate;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.SessionFactory;
import org.openmrs.module.outpatient.Maternal;
import org.openmrs.module.outpatient.api.db.MaternalDAO;

import java.util.List;

/**
 * Created by benson.
 */
public class HibernateMaternalDAO implements MaternalDAO {
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
    public List<Maternal> getAllMaternal() {
        return sessionFactory.getCurrentSession().createCriteria(Maternal.class).list();
    }

    @Override
    public Maternal getMaternal(Integer maternalId) {
        return (Maternal) sessionFactory.getCurrentSession().get(Maternal.class, maternalId);
    }

    @Override
    public Maternal saveMaternal(Maternal maternal) {
        sessionFactory.getCurrentSession().save(maternal);
        return maternal;
    }

    @Override
    public void purgeMaternal(Maternal maternal) {
        sessionFactory.getCurrentSession().delete(maternal);

    }
}
