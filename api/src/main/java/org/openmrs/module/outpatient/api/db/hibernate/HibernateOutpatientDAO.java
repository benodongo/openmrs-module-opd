/**
 * The contents of this file are subject to the OpenMRS Public License
 * Version 1.0 (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at
 * http://license.openmrs.org
 *
 * Software distributed under the License is distributed on an "AS IS"
 * basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
 * License for the specific language governing rights and limitations
 * under the License.
 *
 * Copyright (C) OpenMRS, LLC.  All Rights Reserve
package org.openmrs.module.outpatient.api.db.hibernate;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.SessionFactory;
import org.openmrs.outpatient.Outpatient;
import org.openmrs.module.outpatient.api.db.OutpatientDAO;

/**
 * It is a default implementation of  {@link OutpatientDAO}.
 */
package org.openmrs.module.outpatient.api.db.hibernate;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.SessionFactory;
import org.openmrs.module.outpatient.Outpatient;
import org.openmrs.module.outpatient.api.db.OutpatientDAO;

import java.util.List;

public class HibernateOutpatientDAO implements OutpatientDAO {
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
    public List<Outpatient> getAllOutpatient() {
        return sessionFactory.getCurrentSession().createCriteria(Outpatient.class).list();
    }

    @Override
    public Outpatient getOutpatient(Integer opdId) {
        return (Outpatient) sessionFactory.getCurrentSession().get(Outpatient.class, opdId);
    }


    @Override
    public Outpatient saveOutpatient(Outpatient outpatient) {
        sessionFactory.getCurrentSession().save(outpatient);
        return outpatient;
    }

    @Override
    public Outpatient getOutpatientbyIdentifier(String opdId) {
        Outpatient outpatient = null;
        outpatient = (Outpatient) sessionFactory.getCurrentSession().createQuery("from Outpatient p where p.opdId = :opdId").setString(
                "opdId", opdId).uniqueResult();
        return outpatient;
    }

    @Override
    public void purgeOutpatient(Outpatient outpatient) {
        sessionFactory.getCurrentSession().delete(outpatient);

    }
}