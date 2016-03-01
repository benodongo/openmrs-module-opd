package org.openmrs.module.outpatient.api;

import org.openmrs.api.OpenmrsService;
import org.openmrs.module.outpatient.Maternal;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Transactional
public interface MaternalService extends OpenmrsService {

    // get list of Allmaternal
    @Transactional(readOnly = true)
    List<Maternal> getAllMaternal();
    //gets one matenal
    @Transactional(readOnly = true)
    Maternal getMaternal(Integer maternalId);

    //Saves maternal
    Maternal saveMaternal(Maternal maternal);

    //deletes maternal
    void purgeMaternal(Maternal maternal);
}
