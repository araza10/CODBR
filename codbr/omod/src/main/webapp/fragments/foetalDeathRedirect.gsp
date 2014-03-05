		 	<script src="/openmrs/openmrs.js?v=1.9.3.f535e9" type="text/javascript" ></script>
			<script src="/openmrs/scripts/jquery/jquery.min.js?v=1.9.3.f535e9" type="text/javascript" ></script>
			<script src="/openmrs/scripts/jquery-ui/js/jquery-ui.custom.min.js?v=1.9.3.f535e9" type="text/javascript" ></script>
            <script src="/openmrs/scripts/jquery-ui/js/jquery-ui-timepicker-addon.js?v=1.9.3.f535e9" type="text/javascript" ></script>
			<script src="/openmrs/scripts/jquery-ui/js/jquery-ui-datepicker-i18n.js?v=1.9.3.f535e9" type="text/javascript" ></script>
			<script src="/openmrs/scripts/jquery-ui/js/jquery-ui-timepicker-i18n.js?v=1.9.3.f535e9" type="text/javascript" ></script>
			<link href="/openmrs/scripts/jquery-ui/css/green/jquery-ui.custom.css" type="text/css" rel="stylesheet" />
			<script src="/openmrs/dwr/engine.js?v=1.9.3.f535e9" type="text/javascript" ></script>
			<script src="/openmrs/dwr/interface/DWRAlertService.js?v=1.9.3.f535e9" type="text/javascript" ></script>
<script type="text/javascript">

	
	function findMissingFields()
	{
		var givenName = jQuery('#gname').val();
		var familyName = jQuery('#fmyname').val();
		//var id = jQuery('#id').val();
		var val = jQuery('input[name="gend"]:checked').val();
		var dob = jQuery('#dob').val();
		
		
		var genderValue;
		if(val == "M")
			{
			genderValue = "checked";
			}
		else if(val=="F"){
			genderValue = "checked";
		}
		else{
			genderValue = "unchecked";
		}
		
			
		
		if(givenName == "" || familyName == "" || genderValue == "unchecked" || dob == "")
			{
				alert("Please fill in fields marked with Red *");
				return false;
			}
		submitForm();
	}
	
		function showCalendar(obj, yearsPrevious) {
		// if the object doesn't have an id, just set it to some random text so jq can use it
	if(!obj.id) {
		obj.id = "something_random" + (Math.random()*1000);
	}
	
	//set appendText to something so it doesn't automagically pop into the page
	var opts = { appendText: " " };
	if (yearsPrevious)
		opts["yearRange"] = "c-" + yearsPrevious + ":c10";
	
	var dp = new DatePicker('dd/mm/yyyy', obj.id, opts);
	jQuery.datepicker.setDefaults(jQuery.datepicker.regional['en_GB']);
	
	obj.onclick = null;
	dp.show();
	return false;
		}
		
		
			function submitForm()
	{
				var form = jQuery('#addPatient');
				alert("Posting");
				jQuery.post(form.attr('action'), form.serialize(), function(result) {
				
				
			if (result.success) {
				var whichSection= "";
				
				var sectionSelection = '${section}';
				
				if(sectionSelection == 'foetal')
				{
				//adding which html section to display on this basis in DataEntryForms controller
				
				window.location = '/openmrs/codbr/dataEntryForms.page?section=${htmlSection}';
				}
				

				
			}
			else{
			alert("inside else");
			ui.reloadPage();
			alert("after reload");
			}
			
		}, 'json')
	
	}
	
	
	function updateAge() {
		var birthdateBox = document.getElementById('dob');
		
		var ageBox = document.getElementById('age');
		//alert(ageBox.value);
		try {
			var birthdate = parseSimpleDate(birthdateBox.value, '<openmrs:datePattern />');
			
			var age = getAge(birthdate);
			
			if (age > 0)
				ageBox.innerHTML = "(" + age + ' <openmrs:message code="Person.age.years"/>)';
			else if (age == 1)
				ageBox.innerHTML = '(1 <openmrs:message code="Person.age.year"/>)';
			else if (age == 0)
				ageBox.innerHTML = '( < 1 <openmrs:message code="Person.age.year"/>)';
			else
				ageBox.innerHTML = '( ? )';
			ageBox.style.display = "";
		} catch (err) {
			ageBox.innerHTML = "";
			ageBox.style.display = "none";
		}
	}
	
	function getAge(d, now) {
		var age = -1;
		if (typeof(now) == 'undefined') now = new Date();
		while (now >= d) {
			age++;
			d.setFullYear(d.getFullYear() + 1);
		}
		return age;
	}
	
	
</script>

		<form id="addPatient" method="post" action="${ ui.actionLink("codbr", "foetalDeathRedirect", "submit") }" onSubmit="findMissingFields(); return false;">
<div  align="left"><input type="hidden" name="certificateType" value="deathcertificate"/>
<br>
<div style="margin-bottom: 5px;font-size: large;"><div style="width: 200px; float: left;">Identifier <span style ="color:red">*</span></div> <input name="id" style="width: 300px;border: 0px;" value="${ patientIdentifier }"/></div>

<div style="margin-bottom: 5px;"><div style="width: 200px; float: left;">First Name <span style ="color:red">*</span></div> <input type="text" name="gname" id="gname"/></div>

<!-- <div style="margin-bottom: 5px;"><div style="width: 200px; float: left;">Middle </div><input type="text" name="midname" /></div> -->

<div style="margin-bottom: 5px;"><div style="width: 200px; float: left;">Last Name <span style ="color:red">*</span></div><input type="text" name="fmyname" id="fmyname"/></div>

</div>
<br>
<div  align="left">

<div style="margin-bottom: 5px;"><div style="width: 200px; float: left;">Gender <span style ="color:red">*</span></div> <input type="radio" name="gend" id="gend" value="M"/>Male<input type="radio" id="gend" name="gend" value="F"/>Female</div>


</div>

<div style="font-size : large;">Place of Birth</div><br>
<div style="margin-bottom: 5px;">
<div style="width: 200px; float: left;">
Country
</div>
<input type="text" name="placebirth"/>
</div>


<div style="margin-bottom: 5px;">
<div style="width: 200px; float: left;">
City/Village
</div>
<input type="text" name="citybirth"/>
</div>
<div style="margin-bottom: 5px;">
<div style="width: 200px; float: left;">
County/District
</div>
<input type="text" name="countybirth"/>
<div style="margin-bottom: 5px;">
<div style="width: 200px; float: left;">
Locality Type</div>
<select name="urbanruralbirth">
  <option value="Urban">Urban</option>
  <option value="Rural">Rural</option>
</select>
</div>
</div>

<div style="margin-bottom: 5px;">
<div style="width: 200px; float: left;">
Father Name
</div>
<input type="text" name="father"/>
</div>

<div style="margin-bottom: 5px;">
<div style="width: 200px; float: left;">
Mother Name
</div>
<input type="text" name="mother"/>
</div>

<div style="margin-bottom: 5px;">
<div style="width: 200px; float: left;">
Date of Birth/Delivery<span style ="color:red">*</span>
</div>
<input type="text" id="dob" name="dob" onchange="updateAge();" onfocus="showCalendar(this,60)"/>
</div>

<input type="submit" value="Save Patient"/></form>
