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
package org.openmrs.module.outpatient.web.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.*;
import org.openmrs.api.PatientService;
import org.openmrs.api.PersonService;
import org.openmrs.api.context.Context;
import org.openmrs.validator.PatientIdentifierValidator;
import org.springframework.stereotype.Controller;
import org.openmrs.web.WebConstants;
//import org.openmrs.module.outpatient.usermethod.ConvertStringToDate;
import org.springframework.web.context.request.WebRequest;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.*;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


/**
 * The main controller.
 */
@Controller
public class  OutpatientManageController {
	
	protected final Log log = LogFactory.getLog(getClass());
    //add  an outpatient

//display the dashboard
    @RequestMapping(value = "/module/outpatient/manage", method = RequestMethod.GET)
    public void manage(ModelMap model) {
        model.addAttribute("user", Context.getAuthenticatedUser());
    }
    //create patient form
    @RequestMapping(value = "/module/outpatient/create", method = RequestMethod.GET)
    public void create(ModelMap model) {
        List<Patient> allPatients = Context.getPatientService().getAllPatients();
        model.addAttribute("patients", allPatients);
    }
    //immunization  form
    @RequestMapping(value = "/module/outpatient/immunization", method = RequestMethod.GET)
    public void immunization(ModelMap model) {
        List<Patient> allPatients = Context.getPatientService().getAllPatients();
        model.addAttribute("patients", allPatients);
    }
    //maternity form
    @RequestMapping(value = "/module/outpatient/maternity", method = RequestMethod.GET)
    public void maternity(ModelMap model) {
        List<Patient> allPatients = Context.getPatientService().getAllPatients();
        model.addAttribute("patients", allPatients);
    }
    //postnatal form
    @RequestMapping(value = "/module/outpatient/postnatal", method = RequestMethod.GET)
    public void postnatal(ModelMap model) {
        List<Patient> allPatients = Context.getPatientService().getAllPatients();
        model.addAttribute("patients", allPatients);
    }
     //register patient(child)
    @RequestMapping(value = "/module/outpatient/registerchild.form", method=RequestMethod.POST)
    public String  registerpatient(ModelMap model, WebRequest webRequest, HttpSession httpSession,
                                   @RequestParam(value = "givenName", required = true) String givenName,
                                   @RequestParam(value = "familyName", required = true) String familyName,
                                   @RequestParam(value = "middleName", required = false) String middleName,
                                   @RequestParam(value = "dateofbirth", required = true) String dateofbirth,
                                   @RequestParam(value = "gender", required = true) String gender,
                                   @RequestParam(value = "nationalId", required = true) String nationalId,
                                   @RequestParam(value = "address",required = false) String address,
                                   @RequestParam(value = "city", required = true) String city,
                                   @RequestParam(value = "postalcode", required = false) String postalcode,
                                   @RequestParam(value = "country", required = true) String country
    )
    {
        try {
            //creating the services
            PatientService patientService=Context.getPatientService();
            PersonService personService=Context.getPersonService();

            Patient patient=new Patient();
            PersonName personName = new PersonName();

            //adding the names
            personName.setGivenName(givenName);
            personName.setFamilyName(familyName);
            personName.setMiddleName(middleName);

            patient.addName(personName);

            patient.setGender(gender);
           // ConvertStringToDate convertStringToDate=new ConvertStringToDate();
           // Date birthdate=dateofbirth;
            //patient.setBirthdate(dateofbirth);

            //Address and location
            PersonAddress personAddress=new PersonAddress();
            personAddress.setAddress1(address);
            personAddress.setCityVillage(city);
            personAddress.setPostalCode(postalcode);
            personAddress.setCountry(country);
            patient.addAddress(personAddress);

            //create a patient Identifer
            PatientIdentifier openmrsId = new PatientIdentifier();

//            String TARGET_ID_KEY = "patientmodule.idType";
//            String TARGET_ID = Context.getAdministrationService().getGlobalProperty(TARGET_ID_KEY);

            PatientIdentifierType patientIdentifierType = patientService.getPatientIdentifierTypeByUuid("8d79403a-c2cc-11de-8d13-0010c6dffd0f");

            openmrsId.setIdentifier(nationalId);
            openmrsId.setDateCreated(new Date());
            openmrsId.setLocation(Context.getLocationService().getDefaultLocation());
            openmrsId.setIdentifierType(patientIdentifierType);


            PatientIdentifierValidator.validateIdentifier(openmrsId);
            patient.addIdentifier(openmrsId);
            //saving the patient
            if (!patientService.isIdentifierInUseByAnotherPatient(openmrsId)) {
                patientService.savePatient(patient);
            }

            httpSession.setAttribute(WebConstants.OPENMRS_MSG_ATTR, "Registered Successfully");
            return "redirect:create.form";
        }
        catch (Exception ex)
        {
            httpSession.setAttribute(WebConstants.OPENMRS_MSG_ATTR, "Registration failed-Patient Id taken");
            return "redirect:create.form";

        }

    }
    //list outpatients in search
    @RequestMapping(value = "/module/outpatient/findPatient", method = RequestMethod.GET)
    public void findPatient(ModelMap model) {
        PatientService patientService=Context.getPatientService();
        //InpatientService inpatientService=Context.getService(InpatientService.class);

        List<Patient> patientList=patientService.getAllPatients();
      //  List<Inpatient>inpatientList=inpatientService.getAllInpatient();
        List<Patient>patients=new ArrayList<Patient>();

        Boolean check=true;

      /*  for(Patient patient:patientList)
        {	check=true;

            for(Inpatient inpatient:inpatientList)
            {
                if(patient==inpatient.getPatient())
                {
                    check=false;
                    break;
                }
            }

            if(check)
            {
                patients.add(patient);
            }

        }
 */
        model.addAttribute("patientList", patients);

    }
}
