package org.openmrs.module.codbr.fragment.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.openmrs.Patient;
import org.openmrs.module.codbr.web.controller.AddPatController;
import org.openmrs.module.htmlformentry.FormEntryContext;
import org.openmrs.module.htmlformentry.FormSubmissionError;
import org.openmrs.ui.framework.SimpleObject;
import org.openmrs.ui.framework.UiUtils;
import org.openmrs.ui.framework.annotation.FragmentParam;
import org.openmrs.ui.framework.page.PageModel;
import org.springframework.web.bind.annotation.RequestParam;

public class FoetalDeathRedirectFragmentController {
	
	public void controller(PageModel model, HttpServletRequest request,
			@FragmentParam(value = "returnUrl", required = false) String returnUrl)
	
	   
			   {
		
		
		String patIdentifier = AddPatController.createSystemID();
		model.addAttribute("patientIdentifier", patIdentifier);
		model.addAttribute("returnUrl", returnUrl);
			   }
	
	
	 public Object submit(@RequestParam(value="locationName", required=false) String locationName,
	            @RequestParam(value="properties", required=false) String[] properties,
	            @RequestParam(value="encounterType", required=false) String encounterType,
	            @RequestParam(value="formType", required=false) String formType,
	            @RequestParam(value = "returnUrl", required = false) String returnUrl,
	            HttpServletRequest request, UiUtils ui) 
	 {
		 
		 	
		 Patient p = AddPatController.createPatient(request);
		 	return returnHelper(null, null);

		 	
		 
	 }
	 
		private SimpleObject returnHelper(List<FormSubmissionError> validationErrors, FormEntryContext context) {
			
			return SimpleObject.create("success", true);
		
		}

}
