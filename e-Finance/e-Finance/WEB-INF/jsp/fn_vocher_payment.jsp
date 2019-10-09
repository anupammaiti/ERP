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

<link rel="stylesheet" href="css/finance_style.css"/>

<script type="text/javascript">
$(document).ready(function(){
	////alert('Hello');
	
	var companyname=$('#companyid').val();
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
		var companyname=$('#companyid').val();
		$.get('second_account_recive.fin',{'companyname':companyname},function(data){
			$('#account1').html(data);	
		});
		
$('#account1').blur(function(){
	var ledgername=$('#account1').val();
	$.get('ledgerAmount.fin',{'ledgername':ledgername,'companyname':companyname},function(data){
		//alert(data);
		$('#balance1').val(data).attr('readonly',true);
	});
});
//ReciptNo
$.ajax({
	url:'hlp_VoucherPaymentRpNo.fin',
	success:function(data){
		//$('#account').html(data);
		var reciptno=parseInt(data)+1;
		$('#paymentreciptno').val(reciptno);
	}
});


return false;	
});
	
function isEmpty(){
	with(document.vpayment){
		if(amount.value==""){
			alert('*Amount is Required*');
			return false;
		}else{
			return true;
		}
	}
	return true;
}	
function numeric(){
	//alert("Number Validation");
		var numaric=document.vpayment.amount.value;
		
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
				document.vpayment.amount.focus();
				document.vpayment.amount.style.background="pink";
				document.vpayment.amount.value="";
				return false;
				}
				
				}
					return true;
				}	
	
</script>
<% String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 String comp=(String)session.getAttribute("compname");System.out.println("hi"+username);
 System.out.println("hi"+pwd);
 if((username!=null)&&(pwd!=null))
 { %>
</head>
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
			<legend>Voucher Payment</legend>
		
<form:form action="sfn_voucher_payment.fin" method="post" commandName="vocherPaymentBean" name="vpayment" onsubmit="return isEmpty();">
<table align="center" width="800" class="form_background">


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
   <form:input path="amount" onkeyup="return numeric();"/>
     
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