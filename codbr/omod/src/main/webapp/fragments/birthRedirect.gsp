
		<form id="addPatient" method="post" onSubmit="checkingEmptyFields(); return false;">
<div  align="left"><input type="hidden" name="certificateType" value="birthcertificate"/>
<br>
<div style="margin-bottom: 5px;font-size: large;"><div style="width: 200px; float: left;">Identifier <span style ="color:red">*</span></div> <input name="id" style="width: 300px;border: 0px;" value="<%=request.getSession().getAttribute("patientIdentifier")%>"/></div>

<div style="margin-bottom: 5px;"><div style="width: 200px; float: left;">First Name <span style ="color:red">*</span></div> <input type="text" name="gname" id="gname"/></div>

<!-- <div style="margin-bottom: 5px;"><div style="width: 200px; float: left;">Middle </div><input type="text" name="midname" /></div> -->

<div style="margin-bottom: 5px;"><div style="width: 200px; float: left;">Last Name <span style ="color:red">*</span></div><input type="text" name="fmyname" id="fmyname"/></div>

</div>
<br>
<div  align="left">

<div style="margin-bottom: 5px;"><div style="width: 200px; float: left;">Gender <span style ="color:red">*</span></div> <input type="radio" name="gend" id="gend" value="M"/>Male<input type="radio" id="gend" name="gend" value="F"/>Female</div>
				
				
<!-- <div style="margin-bottom: 5px;"><div style="width: 200px; float: left;">Nationality</div>
<select name="citizenship">
  <option value="citizen_by_birth">Citizen by birth</option>
  <option value="naturalized_citizen">Naturalized citizen</option>
  <option value="alien">Foreign National</option>

</select></div> -->

</div>

<!-- <div  align="left">
 --><!-- <div style="margin-bottom: 5px;">
<div style="width: 200px; float: left;">
Ethnicity
</div>
<input type="text" name="ethnicity"/>
</div> -->
<div style="font-size : large;">Place of Birth</div><br>
<div style="margin-bottom: 5px;">
<div style="width: 200px; float: left;">
Country
</div>
<input type="text" name="placebirth"/>
</div>
<!-- <div style="margin-bottom: 5px;"> NOT NEEDED - MAIMOONA
<div style="width: 200px; float: left;">
Province
</div>
<input type="text" name="provincebirth"/>
</div> -->

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
<!-- <div style="font-size : large; float: left;">Place of Death</div><br>
<div style="margin-bottom: 5px;">
<div style="width: 200px; float: left;">
Country
</div>
<input type="text" name="placedeath"/>
</div>
<div style="margin-bottom: 5px;">
<div style="width: 200px; float: left;">
Province
</div>
<input type="text" name="provincedeath"/>
</div>
<div style="margin-bottom: 5px;">
<div style="width: 200px; float: left;">
City/Village
</div>
<input type="text" name="citydeath"/>
</div>
<div style="margin-bottom: 5px;">
<div style="width: 200px; float: left;">
County/District
</div>
<input type="text" name="countydeath"/>
</div>
<div style="margin-bottom: 5px;"><div style="width: 200px; float: left;">
Locality Type</div>
<select name="urbanruraldeath">
  <option value="Urban">Urban</option>
  <option value="Rural">Rural</option>
</select>
</div>

</div>
<div style="font-size : large; float: left;">Place of Usual Residence</div><br>
<div style="margin-bottom: 5px;">
<div style="width: 200px; float: left;">
Country
</div>
<input type="text" name="addressusual"/>
</div>
<div style="margin-bottom: 5px;">
<div style="width: 200px; float: left;">
Province
</div>
<input type="text" name="provinceusual"/>
</div>
<div style="margin-bottom: 5px;">
<div style="width: 200px; float: left;">
City/Village
</div>
<input type="text" name="cityusual"/>
</div>
<div style="margin-bottom: 5px;">
<div style="width: 200px; float: left;">
County/District
</div>
<input type="text" name="countyusual"/>
</div>
<div style="margin-bottom: 5px;"><div style="width: 200px; float: left;">
Locality Type</div>
<select name="urbanrural">
  <option value="Urban">Urban</option>
  <option value="Rural">Rural</option>
  </select>
</div>
<div style="font-size : large; float: left;">Place of Previous Residence (1-5 years before death)</div><br>
<div style="margin-bottom: 5px;">
<div style="width: 200px; float: left;">
Country
</div>
<input type="text" name="address2"/>
</div>
<div style="margin-bottom: 5px;">
<div style="width: 200px; float: left;">
Province
</div>
<input type="text" name="provincelast"/>
</div>
<div style="margin-bottom: 5px;">
<div style="width: 200px; float: left;">
City/Village
</div>
<input type="text" name="citylast"/>
</div>
<div style="margin-bottom: 5px;">
<div style="width: 200px; float: left;">
County/District
</div>
<input type="text" name="countylast"/>
</div>
<div style="margin-bottom: 5px;">
<div style="width: 200px; float: left;">
Locality Type</div>
<select name="urbanrurallast">
  <option value="Urban">Urban</option>
  <option value="Rural">Rural</option>
</select></div> -->


<!-- <div  align="left">
 --><!-- <div style="margin-bottom: 5px;">
<div style="width: 200px; float: left;">
Marriage Date
</div>
<input type="text" id="dom" name="dom" onfocus="showCalendar(this,60)"/>
</div> -->

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
Date of Birth
</div>
<input type="text" id="dob" name="dob" onchange="updateAge();" onfocus="showCalendar(this,60)"/>
</div>

 <div style="margin-bottom: 5px;"><div style="width: 200px; float: left;">Is Date of Birth Known ?<span style ="color:red">*</span></div>

						
							
				<input type="hidden" name="_${status.expression}"/>
				<input type="checkbox" name="${status.expression}" 
				
					   <c:if test="${status.value == true}">checked</c:if>
					   onclick="personBirthClicked(this)" id="personBirth"
				/>
				


			<script type="text/javascript">
				function personBirthClicked(input) {
					
					if (input.checked) {
						document.getElementById("birthInformation").style.display = "";
					}
					else {
						document.getElementById("birthInformation").style.display = "none";
						document.getElementById("deathDate").value = "";
						var cause = document.getElementById("causeOfDeath");
						if (cause != null)
							cause.value = "";
					}
				}
			</script>

							
</div>  


<div id="birthInformation">
<!-- Date of Birth<input type="text" id="dob" name="dob" onchange="updateAge();" onfocus="showCalendar(this,60)"/>
 -->	 <input type="hidden" name="_${status.expression}"> 
                    <input type="checkbox" name="${status.expression}" value="true"
						<c:if test="${status.value == true}">checked</c:if> 
						   id="deathdateEstimatedInput" 
					 /> 
<!--  <script type="text/javascript">				
					//here setting DOB Fields
					personBirthClicked(document.getElementById("personBirth"));
				</script> 
				<div style="margin-bottom: 5px;"><div style="width: 200px; float: left;">Age:<span id="age"></span></div></div><br>
	</div>	 -->		
<br>
 <div style="margin-bottom: 5px;"><div style="width: 200px; float: left;">Is Date of Death Known ?<span style ="color:red">*</span></div>
						
							
				<input type="hidden" name="_${status.expression}"/>
				<input type="checkbox" name="${status.expression}" 
				
					   <c:if test="${status.value == true}">checked</c:if>
					   onclick="personDeadClicked(this)" id="personDead"
				/>

			<script type="text/javascript">
				function personDeadClicked(input) {
					
					if (input.checked) {
						document.getElementById("deathInformation").style.display = "";
					}
					else {
						document.getElementById("deathInformation").style.display = "none";
						document.getElementById("deathDate").value = "";
						var cause = document.getElementById("causeOfDeath");
						if (cause != null)
							cause.value = "";
					}
				}
			</script>

							
</div> 
<div id="deathInformation">
<input type="text" id="dod" name="dod" onfocus="showCalendar(this,60)"/>
	<input type="hidden" name="_${status.expression}"> 
                    <input type="checkbox" name="${status.expression}" value="true"
						<c:if test="${status.value == true}">checked</c:if> 
						   id="deathdateEstimatedInput" 
					 />
 <script type="text/javascript">				
					//here setting DOB Fields
					personDeadClicked(document.getElementById("personDead"));
				</script> 
				
	</div>
	
	</div>
	<br/> 
<input type="submit" value="Save Patient"/></form>
