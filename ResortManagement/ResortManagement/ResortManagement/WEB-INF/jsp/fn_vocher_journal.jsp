<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ERP</title>
<link rel="stylesheet" href="css/erp.css"/>

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
	//alert('Hello');
	$.ajax({
		url:'fn_drop_down_for_account.res',
		success:function(data){
			$('#account').html(data);
		}
	});
	$('#account').blur(function(){
		var ledgername=$('#account').val();
		$.get('ledgerAmount.res',{'ledgername':ledgername},function(data){
			//alert(data);
			$('#balance').val(data).attr('readonly',true);
		});
	});
	return false;
});
	$(document).ready(function(){
		//alert('Hai');
		$.get('second_account_recive.res',function(data){
			$('#account1').html(data);	
		});
		
$('#account1').blur(function(){
	var ledgername=$('#account1').val();
	$.get('ledgerAmount.res',{'ledgername':ledgername},function(data){
		//alert(data);
		$('#balance1').val(data).attr('readonly',true);
	});
});
return false;	
});
</script>
</script>

</head>
<body>
<center><h3>ERP</h3></center><a href="fn_main.erp">Back</a><hr/>
<fieldset>
<legend>Journal</legend>

<form:form action="sfn_vocher_journal.erp" method="post" commandName="vocherJournalBean">
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
<form:input path="nameofitem"/>
   
   
  </td>
  
  </tr>

  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quantity
	</font>
   </td>
   <td>
    <form:input path="quantity" id="quantity"/>
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
  <form:input path="rate" id="rate"/>
   
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