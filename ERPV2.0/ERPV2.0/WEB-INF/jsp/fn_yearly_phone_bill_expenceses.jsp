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
<fieldset><legend>Phone Bill Expenses</legend> 
<form:form action="sfn_yearly_phone_bill_expenceses.erp" method="post" commandName="phoneBillExpencesesBean">
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
   <table width="511" height="90" border="1" align="center" bordercolor="#F0B269" bgcolor="#FADFC3">
    <tr>
	 <td width="79">
	  <font color="#573801" face="verdana" size="2">Provider</font>
	 </td>
	 <td width="147">
	 <form:select path="provider">
	 	<form:option value="BSNL">BSNL</form:option>
	 	<form:option value="Airtel">Airtel</form:option>
	 	<form:option value="Idea">Idea</form:option>
	 	<form:option value="Vodafone">Vodafone</form:option>
	 	<form:option value="Tata">Tata</form:option>
	 </form:select>
	 </td>
	 <td width="86">
	  <font color="#573801" face="verdana" size="2">phone</font>
	 </td>
	 <td width="171">
	  <form:input path="phoneno"/>
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
	   Dept
	  </font>
	 </td>
	 <td>
	 <form:select path="department">
	 	<form:option value="Sales">Sales</form:option>
	 	<form:option value="Finance">Finance</form:option>
	 	<form:option value="Accounts">Accounts</form:option>
	 </form:select>
	   
	 </td>
	 
	
	
	</tr>
	<tr>
	
	
	 
	 
	 
	</tr>
	<tr>
	 
	 
	 
	</tr>
	
   </table>
  </td>
  </tr>
  <tr>
   <td>
    <table align="center" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
	 <tr>
	  <td width="260">
	   <font color="#573801" face="verdana" size="2">Bill Month</font>
	  </td>
	  
	  
	   
	   
	   
	   <td width="237">
	    <font color="#573801" face="verdana" size="2">Amount</font></td>
	 </tr>
	 <tr>
	  <td>
	  	<form:select path="billmonth">	
	  		<form:option value="Jan">Jan</form:option>
	  		<form:option value="Feb">Feb</form:option>
	  		<form:option value="Mar">Mar</form:option>
	  		<form:option value="Apr">Apr</form:option>
	  		<form:option value="May">May</form:option>
	  		<form:option value="June">June</form:option>
	  		<form:option value="July">July</form:option>
	  		<form:option value="Aug">Aug</form:option>
	  		<form:option value="Sep">Sep</form:option>
	  		<form:option value="Oct">Oct</form:option>
	  		<form:option value="Nov">Nov</form:option>
	  		<form:option value="Dec">Dec</form:option>
	  	</form:select>
	    
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