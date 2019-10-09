<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	$.get('journalreciptno.erp',function(data){
	
		if((data==null) ||(data==0))
			{
			$('#journalreciptno').val(1).attr("readonly",true);
			}
		else{
			counter=parseInt(data)+1;
			
			$('#journalreciptno').val(counter).attr("readonly",true);	
		}
	});
	return true;
});
<script type="text/javascript">
$(document).ready(function(){
	////alert('Hello');
	var companyname=$('#login_comp').val();
	$.get('fn_drop_down_for_account.fin',{'companyname':companyname},function(data){
		$('#account').html(data);
	});
	$('#account').blur(function(){
		var ledgername=$('#account').val();
		$.get('ledgerAmount.fin',{'ledgername':ledgername,'companyname':companyname},function(data){
			//alert(data);
			$('#balance').val(data).attr('readonly',true);
		});
	});
	return false;
});
	$(document).ready(function(){
		//alert('Hai');
		$.get('second_account_recive.fin',function(data){
			$('#account1').html(data);	
		});
		
$('#account1').blur(function(){
	var ledgername=$('#account1').val();
	$.get('ledgerAmount.fin',{'ledgername':ledgername},function(data){
		//alert(data);
		$('#balance1').val(data).attr('readonly',true);
	});
});
alert('Stock Item');
$.get('hlp_displayStockItem.fin',function(data){
	alert('Stock Item'+data);
	$('.stockitem').html(data);
});
return false;	
});
	
function isEmpty(){
	with(document.voucherjournal){
		
	
	if((quantity.value=="")||(rate.value=="")){
		alert('*Please Fill Required Data*');
		return false;
	}else{
		return true;
	}
	
	}
	return true;
}	
function numeric(){
	//alert("Number Validation");
		var numaric=document.voucherjournal.quantity.value;
		
		for(var j=0; j<numaric.length; j++)
			{
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if((hh>47)&&(hh<58))
			  {
				  return true;
			  }
		      
			else
				{	
				document.voucherjournal.quantity.focus();
				document.voucherjournal.quantity.style.background="pink";
				document.voucherjournal.quantity.value="";
				return false;
				}
				
				}
					return true;
				}
function numeric1(){
	//alert("Number Validation");
		var numaric=document.voucherjournal.amount.value;
		
		for(var j=0; j<numaric.length; j++)
			{
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if((hh>47)&&(hh<58))
			  {
				  return true;
			  }
		      
			else
				{	
				document.voucherjournal.amount.focus();
				document.voucherjournal.amount.style.background="pink";
				document.voucherjournal.amount.value="";
				return false;
				}
				
				}
					return true;
				}				
				

</script>


</head>
<body>
<center><h3>ERP</h3></center><a href="fn_main.erp">Back</a><hr/>
<fieldset>
<legend>Journal</legend>

<form:form action="sfn_vocher_journal.fin" method="post" commandName="vocherJournalBean" name="voucherjournal" onsubmit="return isEmpty();">
 <table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">

 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Receipt No.
   </font>
  </td>
  <td width="392">

	<form:input path="reciptno" id="journalreciptno"/>
  
  </td>
 </tr>



 <tr> 
 <td><font color="#573801" face="verdana" size="2">
    Date
   </font></td> 
 <td>   
	<form:input path="date" id="gendate1"/>
   </td>
 </tr>




 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Particulars &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        By
   </font>
   </td>
   <td>
 		<form:input path="particularby"/>   
   </td>
 </tr>
<tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Current Balance
   </font>
  </td>
  <td width="392">
   <!-- Read only feild -->
   <form:input path="currentbalance" />
  </td>
 </tr>

  
  
  <tr>
  <td> 
  <font color="#573801" face="verdana" size="2">
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name of Item</font>
  </td>
	<td>
	<form:input path="nameofitem"  class="stockitem"/>
   
   
  </td>
  
  </tr>

  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quantity
	</font>
   </td>
   <td>
    <form:input path="quantity" id="quantity" onkeyup="return numeric();"/>
    <form:errors path="quantity" cssClass="error"></form:errors>
   </td>
  </tr>


  <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Units
   </font>
  </td>
  <td >
   <form:input path="units"/>
  </td>
 </tr>

 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Rate(Rupees)
   </font>
  </td>
  <td>
  <form:input path="rate" id="rate" onkeyup="return numeric1();"/>
   
  </td>
 </tr>

  <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Amount
   </font>
  </td>
  <td >
  <form:input path="amount" id="total"/>
   Dr 
  </td>
 </tr>
  
  
  <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Particulars &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        To
   </font>
   </td>
   <td>
   <form:input path="particulars"/>
   </td>
 </tr>

  
  
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Amount
	</font>
   </td>
   <td>
    <form:input path="amount2"/>
    
    Cr 
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
  		<input type="Submit" value="Submit"/>
  	</td>
  </tr>
  
   
   
	
</table>
</form:form>
</fieldset>
</body>
</html>