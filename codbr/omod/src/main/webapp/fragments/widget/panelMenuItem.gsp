<%
	/* Creates a menu item for inclusion in panel widget */

	config.require("label");
	def onClick = config.href
%>

<div class="ke-menu-item" onclick="window.location='${onClick}'; return false;">
	

	 ${ config.label }

</div>
