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
<center><h3>ERP</h3></center><a href="fn_main.erp">Back</a><hr/>
<fieldset>
	<legend>Groups</legend>

<form:form action="sfn_misleniuos_expenceses.erp" method="post" commandName="misleniousExpencesesBean">
<table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
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
	  <font color="#573801" face="verdana" size="2">
	   <strong>Phone
       </strong> </font>
	 </td>
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
	  <font color="#573801" face="verdana" size="2">
	   <strong>Approved By</strong>	  </font>
	 </td>
	  <td>
	   <form:input path="approvedby"/>
	 </td>
	 
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">
	   <strong>Dept</strong>	  </font>
	 </td>
	  <td>
	  	<form:select path="department">
	  		<form:option value="Sales"/>
	  		<form:option value="Finance"/>
	  		<form:option value="Accounts"/>
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
    <table align="center" border="1" bgcolor="#FADFC3" bordercolor="#F0B269" width="800">
	 <tr>
	  <td width="258">
	    <strong><font color="#573801" face="verdana" size="2">Date</font>
	    </strong></td>
		<td width="258">
	    <strong><font color="#573801" face="verdana" size="2">Day</font>
	    </strong></td>
	 <td width="258">
	   <strong><font color="#573801" face="verdana" size="2">Purpose</font>
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
	 	<form:input path="purpose"/>
	   
	   </td>
	   <td>
	   <form:input path="amount"/>
	   
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