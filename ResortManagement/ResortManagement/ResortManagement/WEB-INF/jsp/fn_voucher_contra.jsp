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
			//alert(data);
			$('#account').html(data);
		}
	});
	$('#account').blur(function(){
		//alert('Hai');
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

$.ajax({
	url:'hlp_VoucherContraRpNo.res',
	success:function(data){
		//alert(data);
		var contrano=parseInt(data)+1;
		//alert(contrano);
		$('#contrareciptno').val(contrano);
	}
});
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
	<legend>Vocher Contra</legend>

<form:form action="sfn_voucher_contra.res" method="post" commandName="vocherContraBean">
<table align="center" width="800" border="1">
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
   <form:input path="ammount" />
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
