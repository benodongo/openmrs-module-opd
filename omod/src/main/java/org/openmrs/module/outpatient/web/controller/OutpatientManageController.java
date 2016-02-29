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
import org.openmrs.module.outpatient.api.OutpatientService;
import org.openmrs.module.outpatient.api.ImmunizationService;
import org.openmrs.module.outpatient.api.MaternalService;
import org.openmrs.api.context.Context;
import org.openmrs.validator.PatientIdentifierValidator;
import org.springframework.stereotype.Controller;
import org.openmrs.web.WebConstants;
//import org.openmrs.module.outpatient.usermethod.ConvertStringToDate;
import org.springframework.web.context.request.WebRequest;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import  org.openmrs.module.outpatient.*;



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

//display the dashboard
    @RequestMapping(value = "/module/outpatient/manage", method = RequestMethod.GET)
    public void manage(ModelMap model) {
        model.addAttribute("user", Context.getAuthenticatedUser());
    }
    //list outpatients in search
    @RequestMapping(value = "/module/outpatient/findPatient", method = RequestMethod.GET)
    public void findPatient(ModelMap model) {
        PatientService patientService=Context.getPatientService();
        OutpatientService outpatientService=Context.getService(OutpatientService.class);

        List<Patient> patientList=patientService.getAllPatients();
        List<Outpatient>outpatientList=outpatientService.getAllOutpatient();
        List<Patient>patients=new ArrayList<Patient>();

        Boolean check=true;

        for(Patient patient:patientList)
        {	check=true;

            for(Outpatient outpatient:outpatientList)
            {
                if(patient==outpatient.getPatient())
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

        model.addAttribute("patientList", patients);

    }
    //listing outpatients
    @RequestMapping(value = "/module/outpatient/outpatient.form", method = RequestMethod.GET)
    public void outpatientForm(ModelMap model, @RequestParam(value ="id", required = true)Integer patientId) {

        model.addAttribute("patientId", patientId);

    }

    //Save outpatient
    @RequestMapping(value = "/module/outpatient/saveOutpatient.form", method = RequestMethod.POST)
    public String saveOutpatient(ModelMap model,WebRequest request, HttpSession httpSession,
                                 @RequestParam(required = true, value = "outpatient_id") Integer patientId,
                                 @RequestParam(required = true, value = "opd_id") String opdId)
    {
        OutpatientService outpatientService=Context.getService(OutpatientService.class);


        try{

            Outpatient outpatient=new Outpatient();
            PatientService patientService=Context.getPatientService();
            Patient patient=patientService.getPatient(patientId);

            outpatient.setOutPatientId(patientId);
            outpatient.setOpdId(opdId);
            outpatient.setPatient(patient);
            //save outpatient
            outpatientService.saveOutpatient(outpatient);
            httpSession.setAttribute(WebConstants.OPENMRS_MSG_ATTR, "Added outpatient details Successfully");

        }
        catch (Exception ex)
        {
            httpSession.setAttribute(WebConstants.OPENMRS_MSG_ATTR, "Error adding Inpatient");
            return "redirect:outpatient.form?id="+patientId;
        }

        return "redirect:processRequest.form?id="+patientId;

    }

    //Display Immunization Form
    @RequestMapping(value = "/module/outpatient/immunization.form", method = RequestMethod.GET)
    public void admissionForm(ModelMap model,
                              @RequestParam(value = "id", required = true)String opdId) {
        model.addAttribute("opdId", opdId);
    }

    //Save immunization  Form
    @RequestMapping(value = "/module/outpatient/saveImmunization.form", method = RequestMethod.POST)
    public String saveAdmission(ModelMap model,HttpSession httpSession,WebRequest webRequest,
                                @RequestParam(value = "opd_id", required = true)Integer patientId,
                                @RequestParam(value = "polio1_date", required = true)Date polio1Date,
                                @RequestParam(value = "polio2_date", required = true)Date polio2Date,
                                @RequestParam(value = "polio3_date", required = true)Date polio3Date,
                                @RequestParam(value = "measles_date", required = true)Date measlesDate,
                                @RequestParam(value = "yellow_fever_date", required = true)Date yelloFeverDate,
                                @RequestParam(value="pcv", required= true)Date pcv){

        ImmunizationService immunizationService=Context.getService(ImmunizationService.class);
        OutpatientService outpatientService=Context.getService(OutpatientService.class);
        try{
            Outpatient outpatient=outpatientService.getOutpatient(patientId);
            Patient patient=outpatient.getPatient();

            //check if patient is alive
            if(patient.getDead())
            {
               // httpSession.setAttribute(WebConstants.OPENMRS_MSG_ATTR, "Patient is Dead");
               // return "redirect:listInpatient.form";
            }
            Immunization immunization=new Immunization();
            immunization.setPolio1Date(polio1Date);
            immunization.setPolio2Date(polio2Date);
            immunization.setPolio3Date(polio3Date);
            immunization.setMeaslesDate(measlesDate);
            immunization.setYellowFeverDate(yelloFeverDate);
            immunization.setPcv(pcv);
            immunization.setChangedBy(Context.getAuthenticatedUser().toString());
            immunization.setDateCreated(new Date());

            //save immunization
            immunizationService.saveImmunization(immunization);
            httpSession.setAttribute(WebConstants.OPENMRS_MSG_ATTR, "Records added  details Successfully");
        }
        catch (Exception ex)
        {
            httpSession.setAttribute(WebConstants.OPENMRS_MSG_ATTR, "Failed to save immunization details");
            return "redirect:processRequest.form?id="+patientId;

        }


        return "redirect:processRequest.form?id="+patientId;

    }
    @RequestMapping(value = "/module/outpatient/saveMaternal.form", method = RequestMethod.POST)
    public String saveAdmission(ModelMap model,HttpSession httpSession,WebRequest webRequest,
                                @RequestParam(value = "opd_id", required = true)Integer patientId,
                                @RequestParam(value= "anc_visits",required= true)String ancVisits,
                                @RequestParam(value="marital_status", required=true)Integer maritalStatus,
                                @RequestParam(value="parity", required=true)String parity,
                                @RequestParam(value="gravida", required=true) String gravida,
                                @RequestParam(value="last_menstrual" ,required=true) Date lastMenstrual,
                                @RequestParam(value="estimated_delivery", required=true)Date estimatedDelivery
                                ){

        MaternalService maternalService=Context.getService(MaternalService.class);
        OutpatientService outpatientService=Context.getService(OutpatientService.class);
        try{
            Outpatient outpatient=outpatientService.getOutpatient(patientId);
            Patient patient=outpatient.getPatient();

            //check if patient is alive
            if(patient.getDead())
            {
                // httpSession.setAttribute(WebConstants.OPENMRS_MSG_ATTR, "Patient is Dead");
                // return "redirect:listInpatient.form";
            }
            Maternal maternal=new Maternal();
            maternal.setAncVisits(ancVisits);
            maternal.setMaritalStatus(maritalStatus);
            maternal.setParity(parity);
            maternal.setGravida(gravida);
            maternal.setLastMenstrual(lastMenstrual);
            maternal.setEstimatedDelivery(estimatedDelivery);
            maternal.setChangedBy(Context.getAuthenticatedUser().toString());
            maternal.setDateCreated(new Date());
            //save maternal
            maternalService.saveMaternal(maternal);
            httpSession.setAttribute(WebConstants.OPENMRS_MSG_ATTR, "Added maternal details Successfully");
        }
        catch (Exception ex)
        {
            httpSession.setAttribute(WebConstants.OPENMRS_MSG_ATTR, "Failed to save maternal details");
            return "redirect:processRequest.form?id="+patientId;

        }


        return "redirect:processRequest.form?id="+patientId;

    }


    //create patient form
    @RequestMapping(value = "/module/outpatient/create", method = RequestMethod.GET)
    public void create(ModelMap model) {
        List<Patient> allPatients = Context.getPatientService().getAllPatients();
        model.addAttribute("patients", allPatients);
    }
    //maternal  form
    @RequestMapping(value = "/module/outpatient/maternity", method = RequestMethod.GET)
    public void maternity(ModelMap model) {
        List<Patient> allPatients = Context.getPatientService().getAllPatients();
        model.addAttribute("patients", allPatients);
    }
    //antenatal
    @RequestMapping(value = "/module/outpatient/antenatal", method = RequestMethod.GET)
    public void antenatal(ModelMap model) {
        List<Patient> allPatients = Context.getPatientService().getAllPatients();
        model.addAttribute("patients", allPatients);
    }
    //postnatal  form
    @RequestMapping(value = "/module/outpatient/postnatal", method = RequestMethod.GET)
    public void postnatal(ModelMap model) {
        List<Patient> allPatients = Context.getPatientService().getAllPatients();
        model.addAttribute("patients", allPatients);
    }



}
