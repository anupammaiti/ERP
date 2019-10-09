<html>

<head>
		<title>
			SVS
		</title>
		<link style="" type="" href=""/>
		<script type="text/javascript" language="JavaScript" src="SVS_ERP_JS.js"></script>
</head>

<body>
<center><font face="Arial, Helvetica, sans-serif" size="+1">Employee Information Form</font></center>

<table align="center" bgcolor="#FADFC3" border="1" bordercolor="#F0B269">
 <form action="EmployeeInformation" method="post" name="eif" onSubmit="empty_field();"> 
 <tr>
   <td width="226"><fonst color="#573801" face="Verdana" size="2"><font color="#573801" size="2" face="verdana">Company name</font></font>
    
   </td>
    <td width="144">
    <input type="text" name="companyname" onBlur="alphabetic(eif.companyname.value);">
   </td>
  </tr>
 <tr>
  <td><font color="#573801"face="Verdana" size="2" >Emp No.</font>
    </td>
  <td>
   <input type="text" name="empno" onBlur="numeric(eif.empno.value);">
  </td>
 </tr>
 <tr>
  <td><font color="#573801" face="Verdana" size="2" >Name in Full</font>
   
  </td>
  <td>
   <input type="text" name="name" onBlur="alphabetic(eif.name.value);">
  </td>
 </tr>
 <tr>
  <td><font color="#573801"face="Verdana" size="2" >Name to be appeaning in HRIS</font>
   
  </td>
  <td>
   <input type="text" name="nameinhris" onBlur="alphabetic(eif.nameinhris.value);">
  </td>
 </tr>
 <tr>
  <td><font color="#573801"face="Verdana" size="2" >Father's name</font>
   
  </td>
  <td>
   <input type="text" name="fathername" onBlur="alphabetic(eif.fathername.value);">
  </td>
 </tr>
  
  <tr>
  <td><font color="#573801"face="Verdana" size="2" >Date of Birth</font>
   
  </td>
  <td>
   <input type="text" name="dob" value="yyyy/mm/dd">
  </td>
 </tr>
 <tr>
  <td><font color="#573801"face="Verdana" size="2" >Sex</font>
   
  </td>
  <td>
   <select name="sex">
    <option>  <font color="#573801"face="Verdana" size="2" >Male</font>    </option>
	<option>  <font color="#573801"face="Verdana" size="2" >Female</font>    </option>
   </select>
  </td>
 </tr>
 <tr>
  <td><font color="#573801"face="Verdana" size="2" >Joining Date</font>
   
  </td>
  <td>
   <input type="text" name="joiningdate" value="yyyy/mm/dd">
  </td>
 </tr>
 <tr>
  <td><font color="#573801"face="Verdana" size="2" >Designation</font>
   
  </td>
  <td>
   <input type="text" name="designation" onBlur="alphabetic(eif.designation.value);">
  </td>
 </tr>
 <tr>
  <td><font color="#573801"face="Verdana" size="2" >Department</font>
   
  </td>
  <td>
   <input type="text" name="department" onBlur="alphabetic(eif.department.value);">
  </td>
  </tr>
  <tr>
   <td><font color="#573801"face="Verdana" size="2" >Reporting to</font>
    
   </td>
   <td>
    <input type="text" name="reportingto" onBlur="alphabetic(eif.reportingto.value);">
   </td>
  </tr>
  <tr>
   <td><font color="#573801"face="Verdana" size="2" >Job Level</font>
    
   </td>
   <td>
    <input type="text" name="joblevel" onBlur="alphabetic(eif.joblevel.value);">
   </td>
  </tr>
  <tr>
   <td><font color="#573801"face="Verdana" size="2" >Location</font>
    
   </td>
   <td>
    <input type="text" name="location" onBlur="alphabetic(eif.joblevel.value);">
    </td>
  </tr>
  <tr>
   <td><font color="#573801"face="Verdana" size="2" >Manner of Entry</font>
    
   </td>
   <td>
    <select name="em">
	 <option><font color="#573801"face="Verdana" size="2" >Placement</font></option>
	 <option><font color="#573801"face="Verdana" size="2" >Direct</font></option>
	 <option><font color="#573801"face="Verdana" size="2" >Campus</font></option>
	 <option><font color="#573801"face="Verdana" size="2" >Refferal</font></option>
	 <option><font color="#573801"face="Verdana" size="2" >Advt</font></option>
	 <option><font color="#573801"face="Verdana" size="2" >Consultant</font></option>
	</select>
   </td>
  </tr>
   <tr>
   <td><font color="#573801"face="Verdana" size="2" >Nomination</font>
    
   </td>
   <td>
    <input type="text" name="nomination">
   </td>
  </tr>
  <tr>
   <td><font color="#573801"face="Verdana" size="2" >Birth Place</font>
    
   </td>
   <td>
    <input type="text" name="birthplace" onBlur="alphabetic(eif.birthplace.value);">
   </td>
  </tr>
  <tr>
   <td><font color="#573801"face="Verdana" size="2" >Marital Status</font>
    
   </td>
    <td>
    <input type="text" name="maritalstatus" onBlur="alphabetic(eif.maritalstatus.value);">
   </td>
  </tr>
  <tr>
   <td><font color="#573801"face="Verdana" size="2" >Marriage Date</font>
     
   </td>
   <td>
    <input type="text" name="marriagedate" value="yyyy/mm/dd">
   </td>
  </tr>
  <tr>
   <td><font color="#573801"face="Verdana" size="2" >Religion</font>
    
   </td>
   <td>
    <input type="text" name="religion" onBlur="alphabetic(eif.religion.value);">
   </td>
  </tr>
  <tr>
   <td><font color="#573801"face="Verdana" size="2" >PAN Number</font>
    
   </td>
   <td>
    <input type="text" name="pannumber" onBlur="numeric(eif.pannumber.value);">
   </td>
  </tr>
  <tr>
   <td><font color="#573801"face="Verdana" size="2" >Passport Number</font>
    
   </td>
   <td>
    <input type="text" name="passportnumber" onBlur="numeric(eif.passportnumber.value);">
   </td>
  </tr>
  <tr>
   <td><font color="#573801"face="Verdana" size="2" >Issue Date & Place</font>
    
   </td>
   <td>
    <input type="text" name="issuedateandpalce" onBlur="numeric(eif.issuedateandplace.value);">
   </td>
  </tr>
  <tr>
   <td><font color="#573801"face="Verdana" size="2" >Validity</font>
    
   </td>
   <td>
    <input type="text" name="validity">
   </td>
  </tr>
  <tr>
   <td>
    <font color="#573801"face="Verdana" size="2" >Qualification</font>
   </td>
   <td>
    <select name="qualification">
	 <option>Doctorities</option>
	 <option>Professionals</option>
	 <option>Post Graduates</option>
	 <option>Technical</option>
	 <option>Graduates</option>
	 <option>Under Graduates</option>
	</select>
   </td>
  </tr>
  <tr>
   <td>
    <font color="#573801"face="Verdana" size="2" >Present Salary</font>
   </td>
   <td>
    <input type="text" name="presentsalary" onBlur="numeric(eif.presentsalary.value);">
   </td>
  </tr>
  <tr>
   <td>
    <font color="#573801"face="Verdana" size="2" >Expected Salary</font>
   </td>
   <td>
    <input type="text" name="exceptedsalary" onBlur="numeric(eif.exceptedsalary.value);">
   </td>
  </tr>
  <tr>
   <td>
    <font color="#573801"face="Verdana" size="2" >Salary Offred</font>
   </td>
   <td>
    <input type="text" name="salaryoffred" onBlur="numeric(eif.salaryoffered.value);">
   </td>
  </tr>
  <tr>
   <td>
    <font color="#573801"face="Verdana" size="2" >Joining time Required</font>
   </td>
   <td>
    <input type="text" name="join_time_req" onBlur="numeric(eif.join_time_req.value);">
   </td>
  </tr>
  <tr>
   <td>
   </td>
    <td align="center">
	 <input type="image" src="images/submit.jpg">
	 </td>
  </tr>
 </form>
</table>
</td>
</tr>
</table>

</body>

</html>