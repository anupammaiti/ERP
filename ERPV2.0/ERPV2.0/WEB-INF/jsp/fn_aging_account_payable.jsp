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
<fieldset>
<legend>Aging Account Payable</legend>
<form:form action="sfn_aging_account_payable.erp" method="post" commandName="agingAccountPayble">
<table align="center" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
  <tr>
   <td>
    <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3" width="800">
	 <tr>
	  <td colspan="2">
	     <font color="#573801" face="verdana" size="2">Reporting Period</font>
	  </td>
	  </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">From </font>
	   <form:input path="fromdate"/>
	   
	  </td>
	  <td>
	   <font color="#573801" face="verdana" size="2">To</font>
	   <form:input path="todate"/>
	   
	  </td>
	 </tr>
	</table>
   </td>
  </tr>
  <tr>
   <td>
    <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3" width="800">
	 <tr>
	  <td colspan="5" align="center">&nbsp;</td><td colspan="4" align="center">
	   <font color="#573801" face="verdana" size="2">Account</font>
	  </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">Date</font>
	  </td>
	  <td>
	   <font color="#573801" face="verdana" size="2">Invoice#</font>
	  </td>
	  <td>
	   <font color="#573801" face="verdana" size="2">Account</font>
	  </td>
	  <td>
	   <font color="#573801" face="verdana" size="2">Account#</font>
	   </td>
	   <td>
	    <font class="#573801" face="verdana" size="2">Description</font>
	   </td>
	   
	
	  <td>
	     <font color="#573801" face="verdana" size="2">30 Days</font>
	   </td>
	   <td>
	    <font color="#573801" face="verdana" size="2">60 Days</font> 
	  </td>
	  <td>
	   <font color="#573801" face="verdana" size="2">90+ Days</font>
	  </td>
	  <td>
	    <font color="#573801" face="verdana" size="2">Total</font>
	  </td>
	 </tr>
	 <tr>
	  <td>
	   <form:input path="today" size="10" id="gendate1"/>
	   
	  </td>
	  <td>
	   <form:input path="invoice" size="10"/>
	   
	  </td>
	  <td>
	   <form:input path="amount" size="10"/>
	   
	  </td>
	  <td>
	   <form:input path="account" size="10"/>
	   
	  </td>
	   <td>
 	  	<form:input path="description" size="10"/>
 	  
	   </td> 
	   <td>
	  	<form:input path="monthly" size="10" id="mon1"/>
	    
	   </td>
	   <td>
	    <form:input path="monthly2" size="10" id="mon2"/>
	    	
	    </td>
		<td>
		<form:input path="monthly3" size="10" id="mon3"/>
		 
		</td>
		<td>
			<form:input path="total" size="10" id="total"/>
		 
		</td>
	 </tr>
	 	 <tr>
	  <td colspan="9" align="center">
	  	<form:button>Submit</form:button>
	  </td>
	</tr>
	</table>
   </td>
   </tr>   
</table>
</form:form>
</fieldset>
</body>
</html>