package org.openmrs.module.outpatient.api.db.hibernate;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.SessionFactory;
import org.openmrs.module.outpatient.Treatment;
import org.openmrs.module.outpatient.api.db.TreatmentDAO;

import java.util.List;

/**
 * Created by benson.
 */
public class HibernateTreatmentDAO implements TreatmentDAO {
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
    public List<Treatment> getAllTreatment() {
        return sessionFactory.getCurrentSession().createCriteria(Treatment.class).list();
    }

    @Override
    public Treatment getTreatment(Integer treatmentId) {
        return (Treatment) sessionFactory.getCurrentSession().get(Treatment.class, treatmentId);
    }

    @Override
    public Treatment saveTreatment(Treatment treatment) {
        sessionFactory.getCurrentSession().save(treatment);
        return treatment;
    }

    @Override
    public void purgeTreatment(Treatment treatment) {
        sessionFactory.getCurrentSession().delete(treatment);

    }
}
