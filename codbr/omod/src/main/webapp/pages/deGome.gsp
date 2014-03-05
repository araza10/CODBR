<% ui.decorateWith("codbr","standardPage") %>
<div id="featured-wrapper">
	<div id="featured" class="container">
		<table class="layouttable">
			<tr><td class = "sidebar">
				
					${ ui.includeFragment("codbr", "widget/panelMenu", [
						items: [
									[
										label: "Birth Informant Form",
										active: (section == "birth"),
										href: ui.pageLink("codbr", "dataEntryForms", [ section: "birth" ])
									],
									[
										
										label: "Death Informant Form",
										active: (section == "death"),
										href: ui.pageLink("codbr", "dataEntryForms", [ section: "death" ])
									],
																		[
										
										label: "Verbal Autopsy Questionnaire",
										active: (section == "verbal"),
										href: ui.pageLink("codbr", "dataEntryForms", [ section: "verbal" ])
									],
																		[
										
										label: "Foetal Death Informant Form",
										active: (section == "foetal"),
										href: ui.pageLink("codbr", "dataEntryForms", [ section: "foetal" ])
									]
							
							
								]
					]) }

				
				</td>
				<% if (section == "birth") { %>
				<td>
					<div class="content-container">
						${ ui.includeFragment("codbr", "birthRedirect", [formId: "1", returnUrl:ui.thisUrl()]) }
					</div>
			</td>
			
			<% } else if (section == "birthHtml"){ %>
				<td>
					<div class="content-container">
						${ ui.includeFragment("codbr", "content/enterHtmlForm", [formId: "2"]) }
					</div>
			</td>
			
			
			
							<% } else if (section == "death"){ %>
				<td>
					<div class="content-container">
						${ ui.includeFragment("codbr", "content/enterHtmlForm", [formId: "2"]) }
					</div>
			</td>
			<%}%>
			
			</tr>
		</table>
			
	</div>
</div>