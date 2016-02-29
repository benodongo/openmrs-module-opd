package org.openmrs.module.outpatient.api.db;

import org.openmrs.module.outpatient.Immunization;
import org.openmrs.module.outpatient.Immunization;

import java.util.List;

/**
 * Created by benson.
 */
public interface ImmunizationDAO {

 //save all immunization

    List<Immunization> getAllImmunization();
    //gets an immunization
    Immunization getImmunization(Integer immunizationId);

    //Saves admission
    Immunization saveImmunization(Immunization immunization);

    //deletes an admission
    void purgeImmunization(Immunization immunization);
}
