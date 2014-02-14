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
								label: "Birth Record",
								href: ui.pageLink("codbr", "dataEntryForms")
							]						]
					]) }

				</div>
				</td>
				<td>
					<div class="content-container">
						${ ui.includeFragment("codbr", "content/enterHtmlForm") }
					</div>
			</td></tr>
		</table>
			
	</div>
</div>