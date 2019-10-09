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
		//alert(ledgername);
		$.get('ledgerAmount.res',{'ledgername':ledgername},function(data){
		//	alert(data);
			
			$('#balance').val(data).attr('readonly',true);
		});
	});
	return false;
});
	$(document).ready(function(){
		//alert('Hai');
		$.get('second_account_recive.res',function(data){
			//alert(data);
			$('#account1').html(data);	
		});
		
$('#account1').blur(function(){
	var ledgername=$('#account1').val();
	//alert(ledgername);
	$.get('ledgerAmount.res',{'ledgername':ledgername},function(data){
		//alert(data);
		$('#balance1').val(data).attr('readonly',true);
	});
});

$.ajax({
	url:'hlp_VoucherReciptRpNo.res',
	success:function(data){
		//alert(data);
		var reciptno=parseInt(data)+1;
		$('#reciptno').val(reciptno);
	}
});
/* //Final Amount to be stored for cash.
$('#totalamount').blur(function(){
	
	var currentbalance=parseInt($('#balance1').val());
	//alert(currentbalance);
	var amount=parseInt($('#totalamount').val());
	//alert(amount);
	var currenbalance1=parseInt($('#balance').val());
	//alert(currenbalance1);
	//alert('CurrentBalance'+currentbalance+'TotalAmount'+amount+'CurrentBalance'+currenbalance1);
	var cashinhand=(currentbalance-amount);
	alert("Cash In Hand"+cashinhand);
	cashinhand=cashinhand+balance;
	alert("Final Amount\t"+cashinhand);
	
}); */

return false;	
});
</script>
<link rel="stylesheet" href="css/resort_styles.css"/>
</head>
<%
 String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 //System.out.println("hi"+username);
 //System.out.println("hi"+pwd);
 if((username!=null)&&(pwd!=null))
 { %>
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
 	<legend>Recipt</legend>
 	
 <form:form action="sfn_voucher_reciept.res" method="post" commandName="voucherRecieptBean">
<table align="center" width="800" border="1">

 <tr>
  <td width="392">
   
    Receipt No.
   
  </td>
  <td width="392">
	<form:input path="reciptno" id="reciptno"/>
	
 </td>
	
 </tr>

 <tr> 
 <td>
 
   Date
 </td> 
 <td>
	<form:input path="date" id="gendate1"/>
  
 </td>
 </tr>

 
 <tr>									
  <td>
 
    account
 
   </td>
   <td>
   <form:select path="account" id="account">
   </form:select>
    </td>
 </tr>
<tr>
  <td width="392">
 
    Current Balance
 
  </td>
  <td width="392">
   
   <form:input path="currentbalance" id="balance" />
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
  <td width="392">
  
    Current Balance
  
  </td>
  <td width="392">
   <form:input path="currentbalance1"  id="balance1"/>
  </td>
 </tr>
 
  <tr>
   <td>
  
	 Amount
	
   </td>
   <td>
    <form:input path="amount" id="totalamount"/>
   </td>
  </tr>


  
  
   <tr>
  <td width="392">
   
    Narration
   
  </td>
  <td width="392" >
   <form:textarea path="narration"/>
  </td>
 </tr>
  <tr>
  	<td></td>
  	<td>
  		
		
		<input type="hidden" name="deltby" value="<%=username%>"/>
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
