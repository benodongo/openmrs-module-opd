package org.openmrs.module.outpatient.api.db;

import org.openmrs.module.outpatient.Hiv;
import org.openmrs.module.outpatient.Hiv;

import java.util.List;

/**
 * Created by benson.
 */
public interface HivDAO {

    //save all Hiv

    List<Hiv> getAllHiv();
    //gets an Hiv
    Hiv getHiv(Integer hivId);

    //Saves Hiv
    Hiv saveHiv(Hiv hiv);

    //deletes an Hiv
    void purgeHiv(Hiv hiv);
}
