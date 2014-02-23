package org.openmrs.module.codbr.fragment.controller;

import org.openmrs.ui.framework.annotation.FragmentParam;
import org.openmrs.ui.framework.page.PageModel;
import org.springframework.web.bind.annotation.RequestParam;

public class BirthRedirectFragmentController {
	
	public void controller(/*@FragmentParam("patient") Patient patient,*/
			   @FragmentParam(value = "formId", required = false) String formId,
			   @RequestParam(value = "section", required = false) String section,
			   PageModel model)
			   
			   {
				   
		model.addAttribute("section", section);
			   }

}
