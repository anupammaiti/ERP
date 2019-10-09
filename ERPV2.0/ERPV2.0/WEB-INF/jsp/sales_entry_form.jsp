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
<center><h3>ERP</h3></center><a href="sales_main.erp">Back</a><hr/>
<h3>Sales Entry Form</h3>
<fieldset>
	<legend>Sales Entry Form</legend>

 <form:form action="ssales_entry_form.erp" method="post" commandName="salesEntryFormBean">
<table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">

 <tr> 
 <td> <font color="#573801" face="verdana" size="2">
    Date
   </font>
   </td> 
 	<td>   
 	<form:input path="today" id="gendate1"/>
 	 
  </td>
 </tr>


<tr>
  <td> 
  	
 	<font color="#573801" face="verdana" size="2">Party Name
   </font> 
  </td>
	<td>
	<form:input path="partyname"/>
	
    </td>
  </tr>
  
  
  <tr>
  <td> 
  	
 	<font color="#573801" face="verdana" size="2">Quotation No.
   </font> 
  </td>
	<td>
	<form:input path="quantityno"/>
	
    </td>
  </tr>
  
  
  <tr>
  <td> 
  	
 	<font color="#573801" face="verdana" size="2">Item Code
   </font> 
  </td>
	<td>
	<form:input path="itemcode"/>
	
    </td>
  </tr>
  
  

 

  <tr>
  <td> 
  
 <font color="#573801" face="verdana" size="2">Name of Item
   </font> 
  </td>
	<td>
	<form:select path="nameofitem">
		<form:option value=""></form:option>
	</form:select>
   
  </td>
  
  </tr>

  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Quantity
	</font>
   </td>
   <td>
   	<form:input path="quantity" id="quantity"/>
    
   </td>
  </tr>


  

 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Measurment</font>
  </td>
  <td >
	<form:input path="units"/>
	
   
  </td>
 </tr>

 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Rate(Rupees)
   </font>
  </td>
  <td>
   <form:input path="rate" id="rate"/>
   
  </td>
 </tr>
  

  <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Amount
   </font>
  </td>
  <td >
   <form:input path="amount" id="total" readonly="true"/>
   
  </td>
 </tr>
  
  
   <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Cheque No.
   </font>
  </td>
  <td >
  <form:input path="checkno"/>
   
  </td>
 </tr>
 
  <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Bank Name
   </font>
  </td>
  <td >
   <form:input path="bankname"/>
   
  </td>
 </tr>
  
   <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Narration
   </font>
  </td>
  <td width="392" >
   <form:textarea path="narration"/>
   
  </td>
 </tr>
<tr><td></td>
	<td>
		<form:button>Submit</form:button>
	</td>
</tr>  
</table>
</form:form>
</fieldset>
</body>
</html>