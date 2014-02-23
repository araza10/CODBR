<% ui.decorateWith("codbr","standardPage") %>
<div id="featured-wrapper">
	<div id="featured" class="container">
		<table class="layouttable">
			<tr><td>
				<div class="sidebar">
					${ ui.includeFragment("codbr", "widget/panelMenu", [
						heading: "Information",
						items: [
									[
										label: "Birth Informant",
										active: (section == "birth"),
										href: ui.pageLink("codbr", "dataEntryForms", [ section: "birth" ])
									],
									[
										
										label: "Death Informant",
										active: (section == "death"),
										href: ui.pageLink("codbr", "dataEntryForms", [ section: "death" ])
									]
							
							
								]
					]) }

				</div>
				</td>
				<% if (section == "birth") { %>
				<td>
					<div class="content-container">
						${ ui.includeFragment("codbr", "birthRedirect", [formId: "1"]) }
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