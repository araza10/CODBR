<%
	// Supports items, heading

	config.require("items")
%>

	 
	
	<% for (def itemConfig : config.items) { %>
		${ ui.includeFragment("codbr", "widget/panelMenuItem", itemConfig) }
	<% } %>
	
