<% ui.decorateWith("codbr","standardPage", [sidebar: "sidebar/dataEntrySidebar"])
 %>
 
<div >

<% if (section == "birth") { %>
				
					
						${ ui.includeFragment("codbr", "birthRedirect", [formId: "1", returnUrl:ui.thisUrl()]) }
			
			<% } else if (section == "birthHtml"){ %>
						${ ui.includeFragment("codbr", "content/enterHtmlForm", [formId: "2"]) }
						
						
							
						
			
			
		<%}	else if (section == "foetal"){ %>
				
						${ ui.includeFragment("codbr", "foetalDeathRedirect", [formId: "2"]) }
						
						
					
			<%} else if (section == "foetalHtml"){%>
							
						${ ui.includeFragment("codbr", "content/enterHtmlForm", [formId: "6"]) }
						
			<%}else if (section == "verbal") {%>
			${ ui.includeFragment("codbr", "content/enterHtmlForm", [formId: "16"]) }
			
			<%} else if (section == "death"){%>
			${ ui.includeFragment("codbr", "content/enterHtmlForm", [formId: "4"]) }
			
			<%}%>
			
</div>