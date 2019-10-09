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
<fieldset><legend>Food Expenses</legend>
<form:form action="sfn_yearly_food_expenceses.erp" method="post" commandName="foodExcepensesBean">
<table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
 <tr>
  <td>
   
  </td>
   </tr>
 <tr>
  <td>
   <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
    <tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Employee Name</font>
	   </strong></td>
	 <td>
	  <form:input path="empname"/>
	  
	 </td>
	  <td>
	    <strong><font color="#573801" face="verdana" size="2">
	   Phone
	    </font>
	    </strong></td>
	 <td>
	   <form:input path="phoneno"/>
	 </td>
	</tr>
	<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   Location
	   </font>
	   </strong></td>
	 <td>
	   <form:input path="location"/>
	 </td>
	
	<td>
	  <strong><font color="#573801" face="verdana" size="2">
	   Approved By
	  </font>
	  </strong></td>
	  <td>
	   <form:input path="approvedby"/>
	 </td>
	</tr>
	
	<tr>
	 
	<td>
	  <strong><font color="#573801" face="verdana" size="2">
	   Dept
	  </font>
	  </strong></td>
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
	
   </table>
  </td>
  </tr>
  <tr>
   <td>
    <table align="center" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
	 <tr>
	  <td width="258">
	    <strong><font color="#573801" face="verdana" size="2">Date</font>
	    </strong></td>
	 <td width="258">
	   <strong><font color="#573801" face="verdana" size="2">Day</font>
	   </strong></td>
	 
	  
	   
	  
	   <td width="234">
	     <strong><font color="#573801" face="verdana" size="2">Amount</font>
	     </strong></td>
	 </tr>
	 <tr>
	  <td>
	   <form:input path="date1"/>
	   </td>
	  <td width="543">
	 <form:select path="day1">
	 	<form:option value="Sun"/>
		<form:option value="Mon"/>
		<form:option value="Tue"/>
		<form:option value="Wed"/>
		<form:option value="Thu"/>
		<form:option value="Fri"/>
		<form:option value="Sat"/>
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