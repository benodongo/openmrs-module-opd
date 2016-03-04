package org.openmrs.module.outpatient.api.db;

import org.openmrs.module.outpatient.GeneralOpd;
import org.openmrs.module.outpatient.GeneralOpd;

import java.util.List;

/**
 * Created by benson.
 */
public interface GeneralOpdDAO {

    //save all GeneralOpd

    List<GeneralOpd> getAllGeneralOpd();
    //gets an GeneralOpd
    GeneralOpd getGeneralOpd(Integer generalOpdId);

    //Saves GeneralOpd
    GeneralOpd saveGeneralOpd(GeneralOpd generalOpd);

    //deletes an GeneralOpd
    void purgeGeneralOpd(GeneralOpd generalOpd);
}
