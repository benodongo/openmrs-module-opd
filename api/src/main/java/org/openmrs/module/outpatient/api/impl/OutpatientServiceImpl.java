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
 * Copyright (C) OpenMRS, LLC.  All Rights Reserved.
 */
package org.openmrs.module.outpatient.api.impl;

import org.openmrs.api.impl.BaseOpenmrsService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.module.outpatient.Outpatient;
import org.openmrs.module.outpatient.api.OutpatientService;
import org.openmrs.module.outpatient.api.db.OutpatientDAO;
import java.util.List;

/**
 * It is a default implementation of {@link OutpatientService}.
 */
public class OutpatientServiceImpl extends BaseOpenmrsService implements OutpatientService {
	
	protected final Log log = LogFactory.getLog(this.getClass());
	
	private OutpatientDAO dao;
	
	/**
     * @param dao the dao to set
     */
    public void setDao(OutpatientDAO dao) {
	    this.dao = dao;
    }
    
    /**
     * @return the dao
     */
    public OutpatientDAO getDao() {
	    return dao;
    }



    @Override
    public List<Outpatient> getAllOutpatient() {
        return dao.getAllOutpatient();
    }

    @Override
    public Outpatient getOutpatient(Integer opdId) {
        return dao.getOutpatient(opdId);
    }
    @Override
    public Outpatient getOutpatientbyIdentifier(String opdId) {
        return dao.getOutpatientbyIdentifier(opdId);
    }
    @Override
    public Outpatient saveOutpatient(Outpatient outpatient) {
        return dao.saveOutpatient(outpatient);
    }

    @Override
    public void purgeOutpatient(Outpatient outpatient) {
        dao.purgeOutpatient(outpatient);
    }
}