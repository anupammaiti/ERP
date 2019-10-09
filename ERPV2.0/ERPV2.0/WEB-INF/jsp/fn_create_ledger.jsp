<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ERP</title>
<link rel="stylesheet" href="css/erp.css"/>

<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/jQuery.Validate.min.js"></script>
<script type="text/javascript" src="js/erp_validations.js"></script>
<script type="text/javascipt" src="js/erpjs.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	//alert('Hai');
	$.get('groups_under.erp',function(data){
		//alert('Hello');
		$('.1edgerdata1').html(data);
		});
});
</script>
</head>
<body>
<center><h3>ERP</h3></center><a href="fn_main.erp">Back</a><hr/>
<fieldset>
	<legend>Ledger</legend>
<form:form action="sfn_create_ledger.erp" method="post" commandName="ledgerBean" id="ledger-form">
<table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">

 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Ledger Name
   </font>
  </td>
  <td width="392">
<form:input path="ledgername" id="ledgername"/>
 
  </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Alias
   </font>
  </td>
  <td>
 <form:input path="alias" id="alias"/>
   
  </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Under
   </font>
   </td>
   
	   
   
   <td>
    <form:select path="under" class="1edgerdata1">
    <form:option value=""></form:option>
	</form:select>
	 
	
   </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Inventory Values are Effected
   </font>
  </td>
  <td>
  <form:select path="inventoryvalues">
  <form:option value=""></form:option>
  	<form:option value="No">No</form:option>
  	<form:option value="Yes">Yes</form:option>
  </form:select>
   
  </td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Name
	</font>
   </td>
   <td>
   <form:input path="name" id="name"/>
    
   </td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Address
	</font>
   </td>
   <td>
    <form:textarea path="address" id="address"/>
    
   </td>
  </tr>
  <tr>
   <td>
   <font color="#573801" face="verdana" size="2">
    State
   </font>
   </td>
   <td>
    <form:input path="state" id="state"/>
    
   </td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Pin Code
	</font>
    </td>
	<td>
	<form:input path="pincode" id="pincode"/>
	 
	</td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 PAN/IT No:
	</font>
   </td>
   <td>
    <form:input path="panno" id="panno"/>
    
   </td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Sales Tax No:
	</font>
	
   </td>
   <td>
   <form:input path="salestax" id="salestax"/>
    
   </td>
   </tr>
   <tr>
    <td>
	 <font color="#573801" face="verdana" size="2">
	  Opening Balance
	 </font>
	 </td>
	 <td>
	<form:input path="openingbalance" id="openingbalance"/>
	 <form:select path="type">
	 <form:option value="Dr">Dr</form:option>
	 <form:option value="Cr">Cr</form:option>
	 </form:select>
	  
	 </td>
	</tr>
	<tr>
	 <td colspan="2" align="center">
	  <form:button>Submit</form:button>
	 </td>
	</tr>
	
</table>
</form:form>
</fieldset>

</body>
</html>