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
	////alert('Hello');
	var companyname=$('#companyid').val();
	$.ajax({
		url:'fn_drop_down_for_account.fin',
		data:{'companyname':companyname},
		success:function(data){
			//alert(data);
			$('#account').html(data);
		}
	});
	$('#account').blur(function(){
		//alert('Hai');
		var ledgername=$('#account').val();
		
		$.get('ledgerAmount.fin',{'ledgername':ledgername,'companyname':companyname},function(data){
			//alert(data);
			$('#balance').val(data).attr('readonly',true);
		});
	});
	return false;
});
	$(document).ready(function(){
		var companyname=$('#companyid').val();
		//alert('Hai');
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

$.ajax({
	url:'hlp_VoucherContraRpNo.fin',
	success:function(data){
		//alert(data);
		var contrano=parseInt(data)+1;
		//alert(contrano);
		$('#contrareciptno').val(contrano);
	}
});
return false;	
});

function isEmpty(){
		with(document.vouchercontra){
		if((ammount.value=="")){
			alert('*All fields are Mandatory*');
			return true;
		}else{
			return false;
		}
		return true;
	}
	}
	
	
function numeric(){
	//alert("Number Validation");
		var numaric=document.vouchercontra.ammount.value;
		
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
				document.vouchercontra.ammount.focus();
				document.vouchercontra.ammount.style.background="pink";
				document.vouchercontra.ammount.value="";
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
 String comp=(String)session.getAttribute("compname");System.out.println("hi"+username);
 System.out.println("hi"+pwd);
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
	<legend>Vocher Contra</legend>

<form:form action="sfn_voucher_contra.fin" method="post" commandName="vocherContraBean" name="vouchercontra" onsubmit="return isEmpty();">
<table align="center" width="800" border="0" class="form_background">
 <tr>
  <td width="392">
   
    Receipt No.
   
  </td>
  <td width="392">
<form:input path="reciptno" id="contrareciptno" readonly="true"/>
  </td>
 </tr>
 <tr> 
 <td>
 
    Date
   
   </td> 
 <td>   
 <form:input path="date"  id="gendate1" readonly="true"/>
</td> 
 </tr>
 <tr>
  <td>
   
    TO Account
   
   </td>
   <td>
	<form:select path="under" id="account">
	</form:select>   
   </td>
 </tr>
<tr>
  <td width="392">
   
    Current Balance
   
  </td>
  <td width="392">
   <form:input path="currentbalance" readonly="true" id="balance"/>
  </td>
 </tr>
 <tr>
  <td>
   
   From Account
   
  </td>
  <td>
<form:select path="particular" id="account1">
</form:select>
  </td>
  </tr>
  <tr>
  <td width="392">
   
    Current Balance
   
  </td>
  <td width="392">
 <form:input path="currentbalance1" readonly="true" id="balance1"/>
  </td>
 </tr>
  <tr>
   <td>
   
	 Amount
	
   </td>
   <td>
   <form:input path="ammount" onkeyup="return numeric();"/>
   <form:errors path="ammount" cssStyle="error"></form:errors>
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
