package org.openmrs.module.codbr.page.controller;

import org.apache.commons.lang3.StringUtils;
import org.openmrs.ui.framework.page.PageModel;
import org.springframework.web.bind.annotation.RequestParam;

public class DataEntryFormsPageController {
	
	public void controller(@RequestParam(value = "section", required = false) String section,
			   PageModel model) {

if (section.equalsIgnoreCase("birth")) {
section = "birth";
}

model.addAttribute("section", section);
}

}
