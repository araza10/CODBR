package org.openmrs.module.codbr.fragment.controller.content;

import javax.servlet.http.HttpSession;

import org.openmrs.Encounter;
import org.openmrs.Form;
import org.openmrs.Patient;
import org.openmrs.api.FormService;
import org.openmrs.module.htmlformentry.FormEntryContext.Mode;
import org.openmrs.module.htmlformentry.FormEntrySession;
import org.openmrs.module.htmlformentry.HtmlForm;
import org.openmrs.module.htmlformentry.HtmlFormEntryService;
import org.openmrs.module.htmlformentry.HtmlFormEntryUtil;
import org.openmrs.ui.framework.UiUtils;
import org.openmrs.ui.framework.annotation.FragmentParam;
import org.openmrs.ui.framework.annotation.SpringBean;
import org.openmrs.ui.framework.fragment.FragmentActionRequest;
import org.openmrs.ui.framework.fragment.FragmentConfiguration;
import org.openmrs.ui.framework.fragment.FragmentModel;
import org.openmrs.ui.framework.resource.ResourceFactory;
import org.springframework.web.bind.annotation.RequestParam;

public class EnterHtmlFormFragmentController {
	
    public void controller(FragmentConfiguration config,
           /* UiSessionContext sessionContext,*/
            UiUtils ui,
            @SpringBean("htmlFormEntryService") HtmlFormEntryService htmlFormEntryService,
            @SpringBean("formService") FormService formService,
           /* @SpringBean("coreResourceFactory") ResourceFactory resourceFactory,
            @SpringBean("featureToggles") FeatureToggleProperties featureToggles,*/
            @FragmentParam("patient") Patient patient,
            @FragmentParam(value = "htmlForm", required = false) HtmlForm hf,
            @FragmentParam(value = "htmlFormId", required = false) Integer htmlFormId,
            @FragmentParam(value = "formId", required = false) Form form,
            @FragmentParam(value = "formUuid", required = false) String formUuid,
            @FragmentParam(value = "definitionUiResource", required = false) String definitionUiResource,
            @FragmentParam(value = "encounter", required = false) Encounter encounter,
            /*@FragmentParam(value = "visit", required = false) VisitDomainWrapper visit,*/
            @FragmentParam(value = "createVisit", required = false) Boolean createVisit,
            @FragmentParam(value = "returnUrl", required = false) String returnUrl,
            @FragmentParam(value = "automaticValidation", defaultValue = "true") boolean automaticValidation,
            FragmentModel model,
            HttpSession httpSession) throws Exception {

		config.require("patient",
				"htmlForm | htmlFormId | formId | formUuid | definitionResource | encounter");
		htmlFormId = 1;
		if (hf == null) {
			if (htmlFormId != null) {
				hf = htmlFormEntryService.getHtmlForm(htmlFormId);
			} else if (form != null) {
				hf = htmlFormEntryService.getHtmlFormByForm(form);
			} else if (formUuid != null) {
				form = formService.getFormByUuid(formUuid);
				hf = htmlFormEntryService.getHtmlFormByForm(form);
			}
		}
		if (hf == null && encounter != null) {
			form = encounter.getForm();
			if (form == null) {
				throw new IllegalArgumentException(
						"Cannot view a form-less encounter unless you specify which form to use");
			}
			hf = HtmlFormEntryUtil.getService().getHtmlFormByForm(
					encounter.getForm());
			if (hf == null)
				throw new IllegalArgumentException(
						"The form for the specified encounter ("
								+ encounter.getForm()
								+ ") does not have an HtmlForm associated with it");
		}
		if (hf == null)
			throw new RuntimeException("Could not find HTML Form");

		// the code below doesn't handle the HFFS case where you might want to
		// _add_ data to an existing encounter
		FormEntrySession fes;
		if (encounter != null) {
			fes = new FormEntrySession(patient, encounter, Mode.EDIT, hf,
					httpSession);
		} else {
			fes = new FormEntrySession(patient, hf, httpSession);
		}
		if (returnUrl != null) {
			fes.setReturnUrl(returnUrl);
		}

		// Ensure we've generated the form's HTML (and thus set up the
		// submission actions, etc) before we do anything
		fes.getHtmlToDisplay();

		// Context.setVolatileUserData(FORM_IN_PROGRESS_KEY, session);

		model.addAttribute("command", fes);


}


}
