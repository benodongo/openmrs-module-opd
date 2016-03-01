package org.openmrs.module.outpatient.api.db;

import org.openmrs.module.outpatient.Maternal;
import org.openmrs.module.outpatient.Maternal;

import java.util.List;

/**
 * Created by benson.
 */
public interface MaternalDAO {

    //save all Maternal

    List<Maternal> getAllMaternal();
    //gets an Maternal
    Maternal getMaternal(Integer maternalId);

    //Saves maternal
    Maternal saveMaternal(Maternal maternal);

    //deletes an maternal
    void purgeMaternal(Maternal maternal);
}
