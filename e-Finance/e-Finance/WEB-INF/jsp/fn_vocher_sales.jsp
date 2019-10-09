<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ERP</title>
<link rel="stylesheet" href="css/finance_style.css"/>

<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/erpjs.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	var counter=0;
	$.get('vochersales.fin',function(data){
		
		if((data==null) ||(data==0))
			{
			$('#salesreciptno').val(1).attr("readonly",true);
			}
		else{
			counter=parseInt(data)+1;
		
			$('#salesreciptno').val(counter).attr("readonly",true);	
		}
	});
	return true;
});
</script>
</head>
<body>
<center><h3>ERP</h3></center><a href="fn_main.erp">Back</a><hr/>
<fieldset><legend>Vocher Sales</legend>
<form:form action="sfn_vocher_sales.erp" method="post" commandName="vocherSalesBean">
<table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
 
 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Receipt No.
   </font>
  </td>
  <td width="392">
	<form:input path="reciptno" id="salesreciptno"/>
	
  
  </td>
 </tr>

 <tr>
 <td><font color="#573801" face="verdana" size="2">
    Ref:
   </font></td>
 <td>
 	<form:input path="refno"/>
 </tr>

 <tr> 
 <td> <font color="#573801" face="verdana" size="2">
    Date
   </font></td> 
 <td>   
	<form:input path="date" id="gendate1"/>	
	 
 </tr>

 
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Payment Mode
   </font>
   </td>
   <td>
    
	<form:select path="paymentmode">
		<form:option value=""></form:option>
	</form:select> 
	
	
   </td>
 </tr>
<tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Current Balance
   </font>
  </td>
  <td width="392">
  <form:input path="currentbalance"/>
  
  </td>
 </tr>

 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
   Sales Ledger
   </font>
  </td>
  <td>
	<form:input path="salesledger"/>
    
  </td>
  </tr>

  <tr>
  <td> 
  <font color="#573801" face="verdana" size="2">
  Name of Item</font>
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
    Units
   </font>
  </td>
  <td >

  <form:select path="units">
  	<form:option value=""></form:option>
  </form:select>
   
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
   	<form:input path="amount" id="total"/>
   
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
  <tr>
  	<td>
  	</td>
  		<td>
  			<input  type="submit" value="Submit">
  		</td>
  </tr>
</table>
</form:form>
</fieldset>
</body>
</html>