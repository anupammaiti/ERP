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
<fieldset><legend>Petty Cash Vocher</legend>
<form:form action="sfn_petty_cash_vocher.erp" method="post" commandName="pettyCashVocherBean">
<table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3" width="800">
  <tr>
   <td>
     <strong><font color="#573801" face="verdana" size="2">#</font>
     </strong></td>
   <td>
     <strong><font color="#573801" face="verdana" size="2">Account</font>
     </strong></td>
	<td>
	  <strong><font color="#573801" face="verdana" size="2">Description</font>
	  </strong></td>
	 
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Amount</font>
	   </strong></td>
  </tr>
  <tr>
    <td><font color="#573801" face="verdana" size="2">1</font>
    </td>
	<td>
	 <form:input path="account1"/>
	 </td>
	 <td>
	  <form:input path="description1"/>
	  </td>
	  
	  <td>
	   <form:input path="amount1"/>
	  </td>
  </tr>
  <tr>
    <td><font color="#573801" face="verdana" size="2">1</font>
    </td>
	<td>
	 <form:input path="account2"/>
	 </td>
	 <td>
	  <form:input path="description2"/>
	  </td>
	  
	  <td>
	   <form:input path="amount2"/>
	  </td>
  </tr>
  <tr>
    <td><font color="#573801" face="verdana" size="2">1</font>
    </td>
	<td>
	 <form:input path="account3"/>
	 </td>
	 <td>
	  <form:input path="description3"/>
	  </td>
	  
	  <td>
	   <form:input path="amount3"/>
	  </td>
  </tr>
  <tr>
  <td colspan="5" align="center">
    <input type="image" src="images/submit.jpg">   </td> 
  </tr>
</table>
</form:form>
</fieldset>
</body>
</html>