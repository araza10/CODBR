<%
	/* Creates a menu item for inclusion in panel widget */

	config.require("label");
	def onClick = config.href
	def active  = config.active
	
	
%>


	
		<ul>
		<%if(config.active){%>
		<li class="selectedli">
		<strong>
	 	<a href='${onClick}'>${ config.label }</a>
	 	</strong>
	</li><%}
	else{%>
	<li>
		<strong>
	 	<a href='${onClick}'>${ config.label }</a>
	 	</strong>
	 	<%}%>
	 	
	 	</ul>

