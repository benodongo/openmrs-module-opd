package org.openmrs.module.outpatient.api.db.hibernate;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.SessionFactory;
import org.openmrs.module.outpatient.OutpatientEncounter;
import org.openmrs.module.outpatient.api.db.OutpatientEncounterDAO;

import java.util.List;

/**
 * Created by Benson
 */
public class HibernateOutpatientEncounterDAO implements OutpatientEncounterDAO {
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
    public List<OutpatientEncounter> getAllOutpatientEncounters() {
        return sessionFactory.getCurrentSession().createCriteria(OutpatientEncounter.class).list();
    }

    @Override
    public OutpatientEncounter getOutpatientEncounter(Integer encounterId) {
        return (OutpatientEncounter)sessionFactory.getCurrentSession().get(OutpatientEncounter.class, encounterId);
    }

    @Override
    public OutpatientEncounter saveOutpatientEncounter(OutpatientEncounter encounter) {
        sessionFactory.getCurrentSession().save(encounter);
        return encounter;
    }

    @Override
    public void purgeOutpatientEncounter(OutpatientEncounter encounter) {
        sessionFactory.getCurrentSession().delete(encounter);
    }
}
