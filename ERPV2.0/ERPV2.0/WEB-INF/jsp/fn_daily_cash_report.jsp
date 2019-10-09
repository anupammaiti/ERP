<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ERP</title>
<link rel="stylesheet" href="css/erp.css"/><script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/erpjs.js"></script>
</head>
<body>
<center>ERP</center><a href="fn_main.erp">Back</a><hr/>
<fieldset>
	<legend>Daily Cash Report Journal</legend>
<form:form action="sfn_daily_cash_report.erp" method="post" commandName="dailyCashReportBean">
<table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3" width="800">

 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">Date</font>
  </td>
  <td>
   <form:input path="date1"/>
  </td>
  <td></td>
  <td></td>
  </tr>
  <tr>
   <td>
     <strong><font color="#573801" face="verdana" size="2">#</font>
     </strong></td>
   <td>
     <strong><font color="#573801" face="verdana" size="2">Cash Recorded From</font>
     </strong></td>
	<td>
	  <strong><font color="#573801" face="verdana" size="2">Amount</font>
	  </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Cash Paid Out To</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Amount</font>
	   </strong></td>
  </tr>
  <tr>
    <td><font color="#573801" face="verdana" size="2">1</font>
    </td>
	<td>
	 <form:input path="cashr1"/>
	 </td>
	 <td>
	  <form:input path="amount1"/>
	  </td>
	  <td>
	   <form:input path="cashp1"/>
	  </td>
	  <td>
	  <form:input path="amounta1"/>
	  </td>
  </tr>
  <tr>
    <td><font color="#573801" face="verdana" size="2">1</font>
    </td>
	<td>
	 <form:input path="cashr2"/>
	 </td>
	 <td>
	  <form:input path="amount2"/>
	  </td>
	  <td>
	   <form:input path="cashp2"/>
	  </td>
	  <td>
	  <form:input path="amounta2"/>
	  </td>
  </tr>
  <tr>
    <td><font color="#573801" face="verdana" size="2">1</font>
    </td>
	<td>
	 <form:input path="cashr3"/>
	 </td>
	 <td>
	  <form:input path="amount3"/>
	  </td>
	  <td>
	   <form:input path="cashp3"/>
	  </td>
	  <td>
	  <form:input path="amounta3"/>
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