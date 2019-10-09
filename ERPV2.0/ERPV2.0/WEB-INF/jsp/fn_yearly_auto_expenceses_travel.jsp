<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ERP</title>
<link rel="stylesheet" href="css/erp.css"/>

<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/erpjs.js"></script>
</head>
<body>
<center>ERP</center><a href="fn_main.erp">Back</a><hr/>
<fieldset><legend>Auto Expenceses Travel</legend>
<form:form action="sfn_auto_expenses_travel.erp" method="post" commandName="autoExpencesesTravelBean">
<table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
 <tr>
  <td>
   <table width="800" align="center" bordercolor="#F0B269" bgcolor="#FADFC3">
   <tr>
   <td width="245" align="right">
   <font color="#573801" face="verdana" size="2">Date</font>
    </td>
	<td width="543">
	 <form:input path="date1"/>
	</td>
	<td>
	 <font color="#573801" face="verdana" size="2">Day</font>
	</td>
	<td width="543">
	 <form:select path="day1">
	 		<form:option value="Sun">Sun</form:option>
	 		<form:option value="Mon">Mon</form:option>
	 		<form:option value="Tue">Tue</form:option>
	 		<form:option value="Wed">Wed</form:option>
	 		<form:option value="Thu">Thu</form:option>
	 		<form:option value="Fri">Fri</form:option>
	 		<form:option value="Sat">Sat</form:option>
	 </form:select>
	</td>
	</tr>
   </table>
  </td>
   </tr>
 <tr>
  <td>
   <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
    <tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">Employee Name</font>
	 </td>
	 <td>
	  <form:input path="empname"/>
	  
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">Completed By</font>
	 </td>
	 <td>
	  <form:input path="completedby"/>
	 </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">
	   Location
	  </font>
	 </td>
	 <td>
	   <form:input path="location"/>
	 </td>
	 
	 <td>
	  <font color="#573801" face="verdana" size="2">
	   Audited By
	  </font>
	 </td>
	 <td>
	   <form:input path="auditedby"/>
	 </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">
	   Address
	  </font>
	 </td>
	 <td>
	   <form:input path="address"/>
	 </td>
	 
	 <td>
	  <font color="#573801" face="verdana" size="2">
	   Purpose of Trip
	  </font>
	 </td>
	 <td>
	   <form:input path="purposeoftrip"/>
	 </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">
	   City
	  </font>
	 </td>
	 <td>
	   <form:input path="city"/>
	 </td>
	 
	 <td>
	  <font color="#573801" face="verdana" size="2">
	   Approved By
	  </font>
	 </td>
	 <td>
	   <form:input path="approvedby"/>
	 </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">
	   State
	  </font>
	 </td>
	 <td>
	   <form:input path="state"/>
	 </td>
	 
	 <td>
	  <font color="#573801" face="verdana" size="2">
	   Zip
	  </font>
	 </td>
	 <td>
	   <form:input path="zipno"/>
	 </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">
	   Phone
	  </font>
	 </td>
	 <td>
	   <form:input path="phoneno"/>
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">
	   Dept
	  </font>
	 </td>
	 <td>
	 
	 	<form:select path="department">
	 	<form:option value="Sales">Sales</form:option>
	 	<form:option value="Finance">Finance</form:option>
	 	<form:option value="Accounts">Accounts</form:option>
	 	<form:option value="Maintenance">Maintenance</form:option>
	 	<form:option value="HumanResource">HumanResource</form:option>
	 	</form:select>
	  
	 </td>
	 
	 
	</tr>
   </table>
  </td>
  </tr>
  <tr>
   <td>
    <table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
	 <tr>
	  <td width="78">
	   <font color="#573801" face="verdana" size="2">Date</font>
	  </td>
	  <td width="107">
	   <font color="#573801" face="verdana" size="2">Travel From</font>
	  </td>
	  <td width="132">
	   <font color="#573801" face="verdana" size="2">Odometer Start</font>
       </td>
	   <td width="120">
	    <font color="#573801" face="verdana" size="2">Odometer End</font>
	   </td>
	   <td width="120">
	    <font color="#573801" face="verdana" size="2">Total Mileage</font>
	   </td>
	   <td width="82">
	    <font color="#573801" face="verdana" size="2">Rate/Mile</font>
	   </td>
	   <td width="115">
	    <font color="#573801" face="verdana" size="2">Amount Due</font>
	   </td>
	 </tr>
	 <tr>
	  <td>
	  <form:input path="date2"/>
	   </td>
	   <td>
	    <form:input path="travelfrom"/>
	   </td>
	   <td>
	    <form:input path="odometerstart"/>
	   </td>
	   <td>
	    <form:input path="odometerend"/>
	   </td>
	   <td>
	    <form:input path="totalmileage"/>
	   </td>
	   <td>
	    <form:input path="rate"/>
	   </td>
	   <td>
	   <form:input path="amountdue"/>
	   </td>
	 </tr>
	 <tr>
	  <td colspan="7" align="center">	    <input type="image" src="images/submit.jpg"></td>
	  </tr>
	</table>
   </td>
  </tr>
  
</table>
</form:form>
</fieldset>
</body>
</html>