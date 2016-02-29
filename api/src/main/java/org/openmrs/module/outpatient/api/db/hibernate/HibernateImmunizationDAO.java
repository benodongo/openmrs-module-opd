package org.openmrs.module.outpatient.api.db.hibernate;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.SessionFactory;
import org.openmrs.module.outpatient.Immunization;
import org.openmrs.module.outpatient.api.db.ImmunizationDAO;

import java.util.List;

/**
 * Created by benson.
 */
public class HibernateImmunizationDAO implements ImmunizationDAO {
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
    public List<Immunization> getAllImmunization() {
        return sessionFactory.getCurrentSession().createCriteria(Immunization.class).list();
    }

    @Override
    public Immunization getImmunization(Integer immunizationId) {
        return (Immunization) sessionFactory.getCurrentSession().get(Immunization.class, immunizationId);
    }

    @Override
    public Immunization saveImmunization(Immunization immunization) {
         sessionFactory.getCurrentSession().save(immunization);
        return immunization;
    }

    @Override
    public void purgeImmunization(Immunization immunization) {
        sessionFactory.getCurrentSession().delete(immunization);

    }
}
