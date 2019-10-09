<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>



 
<body background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="800"  align="center" cellpadding="0" cellspacing="0">
  <tr>
    <th scope="col"><img src="images/banner.jpg"></th>
  </tr>
  
  
</table>
<table border="0" cellspacing="0" align="center" cellpadding="0" width="800">
  <tr>
    <td background="images/after_main.jpg" height="42" align="center"><strong><font color="#573801" size="3" face="Verdana">Welcome To Human Resource Department</font></strong>      <!--<img src="images/after_main.jpg">-->
	
	 
	</td>
  </tr>
</table>
<table align="center" width="800" bgcolor="#FFD3A2" background="images/bg.jpg">
<tr>
<td>
<h4 align="center"><font color="#573801" face="Verdana" >Employee information form</font></h4>

<table align="center" bgcolor="#FADFC3" border="1" bordercolor="#F0B269" >
 <form action="employeeinsert.jsp" method="post">
 <tr>
   <td width="226"><fonst color="#573801" face="Verdana" size="2"><font color="#573801" size="2" face="verdana">Company name</font></font>
    
   </td>
    <td width="144">
    <input type="text" name="companyname">
   </td>
  </tr>
 <tr>
  <td><font color="#573801"face="Verdana" size="2" >Emp No.</font>
    </td>
  <td>
   <input type="text" name="empno">
  </td>
 </tr>
 <tr>
  <td><font color="#573801" face="Verdana" size="2" >Name in Full</font>
   
  </td>
  <td>
   <input type="text" name="name">
  </td>
 </tr>
 <tr>
  <td><font color="#573801"face="Verdana" size="2" >Name to be appeaning in HRIS</font>
   
  </td>
  <td>
   <input type="text" name="nameinhris">
  </td>
 </tr>
 <tr>
  <td><font color="#573801"face="Verdana" size="2" >Father's name</font>
   
  </td>
  <td>
   <input type="text" name="fathername">
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
   <input type="text" name="designation">
  </td>
 </tr>
 <tr>
  <td><font color="#573801"face="Verdana" size="2" >Department</font>
   
  </td>
  <td>
   <input type="text" name="department">
  </td>
  </tr>
  <tr>
   <td><font color="#573801"face="Verdana" size="2" >Reporting to</font>
    
   </td>
   <td>
    <input type="text" name="reportingto">
   </td>
  </tr>
  <tr>
   <td><font color="#573801"face="Verdana" size="2" >Job Level</font>
    
   </td>
   <td>
    <input type="text" name="joblevel">
   </td>
  </tr>
  <tr>
   <td><font color="#573801"face="Verdana" size="2" >Location</font>
    
   </td>
   <td>
    <input type="text" name="location">
    </td>
  </tr>
  <tr>
   <td><font color="#573801"face="Verdana" size="2" >Manner of Entry</font>
    
   </td>
   <td>
    <select name="entrymanner">
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
    <input type="text" name="birthplace">
   </td>
  </tr>
  <tr>
   <td><font color="#573801"face="Verdana" size="2" >Marital Status</font>
    
   </td>
    <td>
    <input type="text" name="maritalstatus">
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
    <input type="text" name="religion">
   </td>
  </tr>
  <tr>
   <td><font color="#573801"face="Verdana" size="2" >PAN Number</font>
    
   </td>
   <td>
    <input type="text" name="pannumber">
   </td>
  </tr>
  <tr>
   <td><font color="#573801"face="Verdana" size="2" >Passport Number</font>
    
   </td>
   <td>
    <input type="text" name="passportnumber">
   </td>
  </tr>
  <tr>
   <td><font color="#573801"face="Verdana" size="2" >Issue Date & Place</font>
    
   </td>
   <td>
    <input type="text" name="issuedateandpalce">
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
    <input type="text" name="presentsalary">
   </td>
  </tr>
  <tr>
   <td>
    <font color="#573801"face="Verdana" size="2" >Expected Salary</font>
   </td>
   <td>
    <input type="text" name="exceptedsalary">
   </td>
  </tr>
  <tr>
   <td>
    <font color="#573801"face="Verdana" size="2" >Salary Offred</font>
   </td>
   <td>
    <input type="text" name="salaryoffred">
   </td>
  </tr>
  <tr>
   <td>
    <font color="#573801"face="Verdana" size="2" >Joining time Required</font>
   </td>
   <td>
    <input type="text" name="join_time_req">
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
