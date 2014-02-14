<% ui.decorateWith("codbr","standardPage") 
	def menuItems = [
			[label:"Find or Create Patient" ,href: ui.pageLink("codbr", "dataEntryForms") ]
	]
%>


<div id="featured-wrapper">
	<div id="featured" class="container">
	
		<div class="major">
			<span class="byline">Choose one of the following options</span>
		</div>
				<div class="column1">
			<span class="icon icon-data-entry"></span>
			<div class="title">
				<a href ="${ui.pageLink("codbr", "dataEntryForms")}"><h2>DATA ENTRY</h2></a>
				<span class="byline">Fill any of the following forms: Birth Record, Medical Record of Death, Verbal Autopsy...</span>
			</div>
		</div>
		<div class="column2">
			<span class="icon icon-search"></span>
			<div class="title">
				<h2>SEARCH</h2>
				<span class="byline">Find individual birth, death, VA records....</span>
			</div>
		</div>
		<div class="column3">
			<span class="icon icon-report"></span>
			<div class="title">
				<h2>REPORTS</h2>
				<span class="byline">Generate reports using...</span>
			</div>
		</div>
		<div class="column4">
			<span class="icon icon-audit"></span>
			<div class="title">
				<h2>USER DATABASE</h2>
				<span class="byline">View a list of system users and their assigned roles</span>
			</div>
		</div>
		
	
	</div>
</div>


