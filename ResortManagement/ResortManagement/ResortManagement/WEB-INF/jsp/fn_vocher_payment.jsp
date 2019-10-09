<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resort</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>

<link rel="stylesheet" href="css/resort_styles.css"/>

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
//ReciptNo
$.ajax({
	url:'hlp_VoucherPaymentRpNo.res',
	success:function(data){
		//$('#account').html(data);
		var reciptno=parseInt(data)+1;
		$('#paymentreciptno').val(reciptno);
	}
});


return false;	
});
	
	
</script>
<%
 String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 //System.out.println("hi"+username);
 //System.out.println("hi"+pwd);
 if((username!=null)&&(pwd!=null))
 { %>
</head>
<body>
	<div class="project_title">
		<img src="images/svs_logo.gif" alt="logo" id="logo"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span id="proj_title">RESORT MANAGEMENT</span>
	</div>

	<div class="main_screen" align="center">
		<div class="menu" align="left">	
			<jsp:include page="fn_executive_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
		<fieldset>
			<legend>Voucher Payment</legend>
		
<form:form action="sfn_voucher_payment.res" method="post" commandName="vocherPaymentBean">
<table align="center" class="content">


 <tr>
  <td>
   
    Receipt No.
   
  </td>
  <td>
<form:input path="reciptno" id="paymentreciptno" readonly="true"/>

  </td>
 </tr>

  

 <tr> 
 <td>
    Date
   </td> 
 <td>   
 	<form:input path="date"  id="gendate1"/>
	</td>
 </tr>

 
 <tr>
  <td>
   
    Account
   
   </td>
   <td>
    <form:select path="under" id="account">
    	
    </form:select>
   </td>
 </tr>
<tr>
  <td >
   
    Current Balance
   
  </td>
  <td>
    <form:input path="currentbalance" id="balance" readonly="true"/>
  </td>
 </tr>

 <tr>
  <td>
   
    Particulars
   
  </td>
  <td>

	<form:select path="particulars" id="account1">
		
		
		
	</form:select>   
  </td>
  </tr>
  
   <tr>
  <td>
   
    Current Balance
   
  </td>
  <td>
    <form:input path="currentbalance1" id="balance1" readonly="true"/>
  </td>
 </tr>
  
  
  
  <tr>
   <td>
   
	 Amount
	
   </td>
   <td>
   <form:input path="amount"/>
     
</td>
  </tr>


 
   <tr>
  <td>
   
    Narration
   
  </td>
  <td>
   <form:textarea path="narration"/>
   
  </td>
 </tr>
  <tr>
  	<td>
  	</td>
  	<td>
  		<input type="image" src="images/submit_button.jpg" id="button1"/>
  	</td>
  </tr>
  
   
   
	
</table>
</form:form>
</fieldset>
</div>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>
	<% }
else
{
response.sendRedirect("login.res");
}%>	
</body>
</html>