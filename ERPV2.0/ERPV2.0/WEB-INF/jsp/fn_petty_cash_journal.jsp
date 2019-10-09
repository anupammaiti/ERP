<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib  prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SVS</title>
<link rel="stylesheet" href="css/erp.css"/><script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/erpjs.js"></script>
</head>
<body>
<h3>Petty Cash Journal</h3><a href="fn_main.erp">Back</a><hr/>
<table align="center" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
  <form:form action="sfn_petty_cash_journal.erp" method="post" commandName="pettyCastBean">
  
  <tr>
   <td>
    <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3" width="800">
	 
	 <tr>
	  
	 
	  <td width="416">
	   <font color="#573801" face="verdana" size="2"><strong>Dept</strong></font>
<form:select path="department">
<form:option value="sales">sales</form:option>
<form:option value="finance">finance</form:option>
<form:option value="account">account</form:option>
</form:select>
	   
	  </td>
	 </tr>
	</table>
   </td>
  </tr>
  <tr>
   <td>
    <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3" width="800">
	
	 <tr>
	  <td width="82">
	    <strong><font color="#573801" face="verdana" size="2">Date</font>
	    </strong></td>
	  <td width="95">
	    <strong><font color="#573801" face="verdana" size="2">Voucher#</font>
	    </strong></td>
	 
	   <td width="114">
	     <strong><font class="#573801" face="verdana" size="2">Payee</font>
	     </strong></td>
	   
	
	  <td width="112">
	     <strong><font color="#573801" face="verdana" size="2">Approved By </font>
	     </strong></td>
	   <td width="77">
	     <strong><font color="#573801" face="verdana" size="2">Total</font> 
	     </strong></td>
	   <td width="80">
	     <strong><font color="#573801" face="verdana" size="2">Balance</font>
	     </strong></td>
	  
	 </tr>
	 <tr>
	  <td>
	  <form:input path="date" id="gendate1"/>
	   
	  </td>
	  <td>
	   <form:input path="vocher"/>
	   
	  </td>
	  <td>
	   <form:input path="payee"/>
	   
	  </td>
	  
	   <td>
	  <form:input path="approvedby"/>
	    
	   </td>
	   <td>
	    <form:input path="total"/>
	    
	    </td>
		<td>
		<form:input path="balance"/>
		 
		</td>
		
	 </tr>
	<tr>
	 <td><strong><font color="#573801" face="verdana" size="2">Audited By</font></strong></td>
	 <td colspan="2">
	   <form:input path="auditedby"/>
	   
	 </td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Approved By</font>
	   </strong></td>
	 <td colspan="4">
	 <form:input path="approvedby1"/>
	 
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
  
  </form:form>
</table>

</body>
</html>