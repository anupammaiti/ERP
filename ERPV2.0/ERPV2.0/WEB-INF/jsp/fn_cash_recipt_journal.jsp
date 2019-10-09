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
	<legend>Cash Recipt Journal</legend>
<form:form action="sfn_cash_recipt_journal.erp" method="post" commandName="cashReciptJournalBean">
<table align="center" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
  <tr>
   <td>
    <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3" width="800">
	 <tr>
	  <td>
	   <font color="#573801" size="2" face="verdana">Month </font>
	   <form:input path="fromdate"/>
	  </td>
	  <td>
	   <font color="#573801" face="verdana" size="2">General ledger No. </font>
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
	  <td width="73">
	    <strong><font color="#573801" face="verdana" size="2">Date</font>
	    </strong></td>
	  
	  
	  <td width="71">  <strong><font color="#573801" face="verdana" size="2">Account Credited</font></strong></td>
	   <td width="69">
	     <strong><font color="#573801" face="verdana" size="2">Account#</font>
	     </strong></td>
	   <td width="69">
	     <strong><font color="#573801" face="verdana" size="2">Sales</font>
	     </strong></td>
	<td width="69">
	    <strong><font color="#573801" face="verdana" size="2">Amount Receivables</font>
	    </strong></td>
	  <td width="62">
	     <strong><font color="#573801" face="verdana" size="2">Cash</font>
	     </strong></td>
	   <td width="61">
	     <strong><font color="#573801" face="verdana" size="2">Discount</font> 
	     </strong></td>
	   <td width="60">
	     <strong><font color="#573801" face="verdana" size="2">Other</font></strong></td>
	   <td width="99">
	     <strong><font color="#573801" face="verdana" size="2">Account Debited </font>
	     </strong></td>
	   
	   <td width="99"><strong><font color="#573801" face="verdana" size="2">Account#</font></strong></td>
	   <td width="99"><strong><font color="#573801" face="verdana" size="2">Other</font></strong></td>
	 </tr>
	 <tr>
	  <td>
	   <form:input path="date1" size="6"/>
	  </td>
	  <td>
	  <form:input path="accountc1" size="6"/>
	  </td>
	   <td>
 	  <form:input path="account1" size="6"/>
	   </td> 
	   <td>
 	  <form:input path="sales1" size="6"/>
	   </td> 
	   <td>
 	  <form:input path="amountr1" size="6"/>
	   </td> 
	   <td>
	    <form:input path="cash1" size="6"/>
	   </td>
	   <td>
	    <form:input path="discount1" size="6"/>
	    </td>
		<td>
		 <form:input path="other1" size="6"/>
		</td>
		<td>
		 <form:input path="accountd1" size="6"/>
		</td>
	   
	    <td>
	    <form:input path="accountp1" size="6"/> 
	    </td>
	    <td>
	    <form:input path="othera1" size="6"/>
	    </td>
	 </tr>
	 <tr>
	  <td>
	   <form:input path="date2" size="6"/>
	  </td>
	  <td>
	  <form:input path="accountc2" size="6"/>
	  </td>
	   <td>
 	  <form:input path="account2" size="6"/>
	   </td> 
	   <td>
 	  <form:input path="sales2" size="6"/>
	   </td> 
	   <td>
 	  <form:input path="amountr2" size="6"/>
	   </td> 
	   <td>
	    <form:input path="cash2" size="6"/>
	   </td>
	   <td>
	    <form:input path="discount2" size="6"/>
	    </td>
		<td>
		 <form:input path="other2" size="6"/>
		</td>
		<td>
		 <form:input path="accountd2" size="6"/>
		</td>
	   
	    <td>
	    <form:input path="accountp2" size="6"/> 
	    </td>
	    <td>
	    <form:input path="othera2" size="6"/>
	    </td>
	 </tr>
	 <tr>
	  <td>
	   <form:input path="date3" size="6"/>
	  </td>
	  <td>
	  <form:input path="accountc3" size="6"/>
	  </td>
	   <td>
 	  <form:input path="account3" size="6"/>
	   </td> 
	   <td>
 	  <form:input path="sales3" size="6"/>
	   </td> 
	   <td>
 	  <form:input path="amountr3" size="6"/>
	   </td> 
	   <td>
	    <form:input path="cash3" size="6"/>
	   </td>
	   <td>
	    <form:input path="discount3" size="6"/>
	    </td>
		<td>
		 <form:input path="other3" size="6"/>
		</td>
		<td>
		 <form:input path="accountd3" size="6"/>
		</td>
	   
	    <td>
	    <form:input path="accountp3" size="6"/> 
	    </td>
	    <td>
	    <form:input path="othera3" size="6"/>
	    </td>
	 </tr>
	 <tr>
	  <td colspan="12" align="center"><input type="image" src="images/submit.jpg"></td>
	  </tr>
	</table>
   </td>
  </tr>
</table>
</form:form>
</fieldset>
</body>
</html>