package org.openmrs.module.codbr.page.controller;

import org.apache.commons.lang3.StringUtils;
import org.openmrs.ui.framework.page.PageModel;
import org.springframework.web.bind.annotation.RequestParam;

public class DataEntryFormsPageController {
	
	public void controller(@RequestParam(value = "section", required = false) String section,
			   PageModel model) {
String htmlSection = null;
if (section.equalsIgnoreCase("birth")) {
section = "birth";
htmlSection = "birthHtml";
}
else if(section.equalsIgnoreCase("foetal"))
{
	section = "foetal";
	htmlSection = "foetalHtml";
}

else if(section.equalsIgnoreCase("verbal"))
{
	section = "verbal";
}

else if(section.equalsIgnoreCase("death"))
{
	section = "death";
}

model.addAttribute("section", section);
model.addAttribute("htmlSection", htmlSection);

}

}
