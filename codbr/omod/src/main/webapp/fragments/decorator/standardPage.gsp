<!DOCTYPE html>
<html>
<head>
	<title>eCODIRS</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link href="/${ contextPath }/moduleResources/codbr/default.css?v=1.1" type="text/css" rel="stylesheet" />
</head>
<body>
<div class="container">

${ui.includeFragment("codbr", "header/codbrHeader")}

<div id="featured-wrapper">
	<div id="featured">
	<table class="layouttable"><tr>
	<td class="sidebar">
	<div id="sidebarContentContainerDiv">
	
	 <% if (config.sidebar) { %>
		${ui.includeFragment("codbr", config.sidebar)}
	 <% } %>
	 
	</div>
	</td>
	<td class="content-container">
	<div>
	
		<%= config.content %>
	
	<!-- END CONTENT CONTAINER-->
	</div>
	</td></tr></table>
	</div>
</div>
			
${ui.includeFragment("codbr", "header/codbrFooter")}
	
</div>	
</body>
</html>






