<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Finance</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>

<script type="text/javascript">

$(document).ready(function(){
	var companyname=$('#companyid').val();
	////alert('Hello');
	$.ajax({
		url:'fn_drop_down_for_account.fin',
		type:'POST',
		data:{'companyname':companyname},
		success:function(data){
			$('#account').html(data);
		}
	});
	$('#account').blur(function(){
		
		var ledgername=$('#account').val();
		//alert(ledgername);
		$.get('ledgerAmount.fin',{'ledgername':ledgername,'companyname':companyname},function(data){
		//	alert(data);
			
			$('#balance').val(data).attr('readonly',true);
		});
	});
	return false;
});
	$(document).ready(function(){
		var companyname=$('#companyid').val();
		//alert('Hai');
		$.get('second_account_recive.fin',{'companyname':companyname},function(data){
			//alert(data);
			$('#account1').html(data);	
		});
		
$('#account1').blur(function(){
	var ledgername=$('#account1').val();
	//alert(ledgername);
	$.get('ledgerAmount.fin',{'ledgername':ledgername,'companyname':companyname},function(data){
		//alert(data);
		$('#balance1').val(data).attr('readonly',true);
	});
});

$.ajax({
	url:'hlp_VoucherReciptRpNo.fin',
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
	
function isEmpty(){
	with(document.voucherreciept){
		if(amount.value==""){
			alert('*Please enter the Amount*');
			return false;
		}else{
			return true;
		}	
		
	}
	return true;
}	
function numeric(){
	//alert("Number Validation");
		var numaric=document.voucherreciept.amount.value;
		
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
				document.voucherreciept.amount.focus();
				document.voucherreciept.amount.style.background="pink";
				document.voucherreciept.amount.value="";
				return false;
				}
				
				}
					return true;
				}
</script>
<link rel="stylesheet" href="css/finance_style.css"/>
</head>
<% String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 String comp=(String)session.getAttribute("compname");
 /* System.out.println("hi"+username);
 System.out.println("hi"+pwd); */
 if((username!=null)&&(pwd!=null))
 { %>
<body>
	<div class="mainscreen" align="center">
	<div class="head_screen">
	<div class="logo">
	<img alt="Logo" class="logo_image"/>
	</div>
	<div class="title_of_project"><%=comp%></div><div id="login_user"><span>Welcome to:&nbsp;&nbsp;&nbsp;&nbsp;<%=username%></span><div class="flip"><a href="logout.fin"><span id="linktext">LogOut</span></a></div>
	</div>
	</div>
	<div class="menuscreen">
	<jsp:include page="executive_header.jsp" flush="false"></jsp:include>
	</div>
	<div class="content" align="center">
 <fieldset>
 	<legend>Recipt</legend>
 	
 <form:form action="sfn_voucher_reciept.fin" method="post" commandName="voucherRecieptBean" name="voucherreciept" onsubmit="return isEmpty();">
<table align="center" width="800" border="0" class="form_background">

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
    <form:input path="amount" id="totalamount" onkeyup="return numeric();"/>
    <form:errors path="amount" cssClass="error"/>
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
  	<td>
  		<input type="hidden" name="login_comp" value="<%=comp%>"/>
  	</td>
  	<td>
  		<input type="image" src="images/submit_button.jpg" id="button1"/>
  	</td>
	</tr> 
</table>
</form:form>
</fieldset>
	<input type="hidden" id="companyid" value="<%=comp%>"/>
	</div>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div></div>
	<% }
else
{
response.sendRedirect("login.fin");
}%>	
</body>
</html>
