package org.openmrs.module.outpatient.api.db.hibernate;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.SessionFactory;
import org.openmrs.module.outpatient.Vital;
import org.openmrs.module.outpatient.api.db.VitalDAO;

import java.util.List;

/**
 * Created by benson.
 */
public class HibernateVitalDAO implements VitalDAO {
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
    public List<Vital> getAllVital() {
        return sessionFactory.getCurrentSession().createCriteria(Vital.class).list();
    }

    @Override
    public Vital getVital(Integer vitalId) {
        return (Vital) sessionFactory.getCurrentSession().get(Vital.class, vitalId);
    }

    @Override
    public Vital saveVital(Vital vital) {
        sessionFactory.getCurrentSession().save(vital);
        return vital;
    }

    @Override
    public void purgeVital(Vital vital) {
        sessionFactory.getCurrentSession().delete(vital);

    }
}
