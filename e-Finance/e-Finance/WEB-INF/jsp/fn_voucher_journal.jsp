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
		url:'second_account_recive.fin',
		type:'GET',
		data:{'companyname':companyname},
		success:function(data){
			$('#account').html(data);
		}
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
//Stock Group 
$.ajax({
	url:'hlp_StockGroup.fin',
	success:function(data){
//		alert(data);
		$('#stockitem').html(data);
	}
});

//Measure Units
$.ajax({
	url:'hlp_MesuaresUnit.fin',
	success:function(data){
	//	alert(data);
		$('#units1').html(data);
	}
});

$('#rate').blur(function(){
	var qu=parseInt($('#quantity').val());
//	alert(qu);
	var amount=parseInt($('#rate').val());
	//alert(amount);
	var totalamount=qu*amount;
	//alert(totalamount);
	$('.total').val(totalamount);
});


return false;	
});
	
	

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
<legend>Journal</legend>

<form:form action="sfn_voucher_journal.fin" method="post" commandName="vocherJournalBean">
 <table align="center" width="800" border="1" class="form_background">

 <tr>
  <td width="392">
   
    Receipt No.
   
  </td>
  <td width="392">

	<form:input path="reciptno" id="journalreciptno"/>
  
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
   
    Particulars &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        By
   
   </td>
   <td>
 		<form:select path="particularby" id="account"></form:select>   
   </td>
 </tr>
<tr>
  <td width="392">
   
    Current Balance
   
  </td>
  <td width="392">
   <!-- Read only feild -->
   <form:input path="currentbalance" id="balance" readonly="true"/>
  </td>
 </tr>

  
  
  <tr>
  <td> 
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name of Item
  </td>
	<td>
<form:select path="nameofitem" id="stockitem"></form:select>
   
   
  </td>
  
  </tr>

  <tr>
   <td>
    
	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quantity
	
   </td>
   <td>
    <form:input path="quantity" id="quantity"/>
   </td>
  </tr>


  <tr>
  <td width="392">
   
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Units
   
  </td>
  <td >
   <form:select path="units" id="units1"></form:select>
  </td>
 </tr>

 <tr>
  <td width="392">
   
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Rate(Rupees)
   
  </td>
  <td>
  <form:input path="rate" id="rate"/>
   
  </td>
 </tr>

  <tr>
  <td width="392">
   
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Amount
   
  </td>
  <td >
  <form:input path="amount" class="total" readonly="true"/>
   Dr 
  </td>
 </tr>
  
  
  <tr>
  <td>
   
    Particulars &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        To
   
   </td>
   <td>
   <form:select path="particulars" id="account1"></form:select>
   </td>
 </tr>

  
  
  <tr>
   <td>
    
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Amount
	
   </td>
   <td>
    <form:input path="amount2" class="total" readonly="true"/>
    
    Cr 
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
