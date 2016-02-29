package org.openmrs.module.outpatient.web.controller;

import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.*;
import org.openmrs.api.*;
import org.openmrs.api.context.Context;
import org.openmrs.module.outpatient.*;
import org.openmrs.module.outpatient.api.ImmunizationService;
//import org.openmrs.module.outpatient.api.OutpatientEncounterService;
import org.openmrs.module.outpatient.api.OutpatientService;
//import org.openmrs.module.outpatient.api.WardService;
import org.openmrs.module.web.extension.provider.Link;
import org.openmrs.util.MetadataComparator;
import org.openmrs.util.OpenmrsConstants;
import org.openmrs.web.WebConstants;
import org.springframework.orm.ObjectRetrievalFailureException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;

@Controller
public class OutpatientDashboardController {
    /** Logger for this class and subclasses */
    protected final Log log = LogFactory.getLog(getClass());

    /**
     * render the patient dashboard model and direct to the view
     */

    @RequestMapping(value="/module/outpatient/outpatientDashboardForm.form", method = RequestMethod.GET)
    protected void renderDashboard(@RequestParam(required = true, value = "id") Integer patientId, ModelMap map)
           throws Exception {
        //Services
        OutpatientService outpatientService=Context.getService(OutpatientService.class);

        Outpatient outpatient=null;

        try {
            outpatient = outpatientService.getOutpatient(patientId);
        }
        catch (ObjectRetrievalFailureException noPatientEx) {
            log.warn("There is no patient with id: '" + patientId + "'", noPatientEx);
        }

        if (outpatient == null) {
//            throw new ServletException("There is no patient with id: '" + patientId + "'");
//            return "redirect:inpatient.form?id="+patientId;
        }

         log.debug("outpatient: '" + outpatient + "'");
          map.put("outpatient", outpatient);
    }
    //process Search request
    @RequestMapping(value = "/module/outpatient/processRequest.form", method = RequestMethod.GET)
    public String processRequest(ModelMap model,
                                 @RequestParam(required = true, value = "id") Integer id) {

        OutpatientService outpatientService=Context.getService(OutpatientService.class);
        Outpatient outpatient=null;

        try {
            outpatient = outpatientService.getOutpatient(id);
        }
        catch (ObjectRetrievalFailureException noPatientEx) {
            log.warn("There is no patient with id: '" + id + "'", noPatientEx);
        }

        if (outpatient == null) {
//            throw new ServletException("There is no patient with id: '" + patientId + "'");
            return "redirect:outpatient.form?id="+id;
        }

        return "redirect:outpatientDashboardForm.form?id="+id;
    }

}

