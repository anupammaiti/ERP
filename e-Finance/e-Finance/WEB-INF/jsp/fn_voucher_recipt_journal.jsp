<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>e-Finance</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>


<script type="text/javascript">
$(document).ready(function(){
	////alert('Hello');
	$.ajax({
		url:'fn_drop_down_for_account.fin',
		success:function(data){
			$('#account').html(data);
		}
	});
	$('#account').blur(function(){
		alert('Ledger Name');
		var ledgername=$('#account').val();
		alert('Ledger Name\t'+ledgername)
		$.get('ledgerAmount.fin',{'ledgername':ledgername},function(data){
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
		
$('#fn_voucher_reciept.res').blur(function(){
	var ledgername=$('#account1').val();
	alert(ledgername);
	$.get('ledgerAmount.fin',{'ledgername':ledgername},function(data){
		//alert(data);
		$('#balance1').val(data).attr('readonly',true);
	});
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
	</div>
	<div class="menuscreen">
	<jsp:include page="executive_header.jsp" flush="false"></jsp:include>
	</div>
	<div class="content" align="center">
		
		<fieldset>
	<legend>Cash Recipt Journal</legend>
<form:form action="" method="post" commandName="cashReciptJournalBean">
<table align="center" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
  <tr>
   <td>
    <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3" width="800">
	 <tr>
	  <td>
	   <font color="#573801" size="2" face="verdana">Month </font>
	   <form:input path="fromdate"/>
	  </td>
	  <td>
	   <font color="#573801" face="verdana" size="2">General ledger No. </font>
	   <form:input path="todate"/>
	  </td>
	 </tr>
	</table>
   </td>
  </tr>
  <tr>
   <td>
    <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3" width="800">
	 
	 <tr>
	  <td width="73">
	    <strong><font color="#573801" face="verdana" size="2">Date</font>
	    </strong></td>
	  
	  
	  <td width="71">  <strong><font color="#573801" face="verdana" size="2">Account Credited</font></strong></td>
	   <td width="69">
	     <strong><font color="#573801" face="verdana" size="2">Account#</font>
	     </strong></td>
	   <td width="69">
	     <strong><font color="#573801" face="verdana" size="2">Sales</font>
	     </strong></td>
	<td width="69">
	    <strong><font color="#573801" face="verdana" size="2">Amount Receivables</font>
	    </strong></td>
	  <td width="62">
	     <strong><font color="#573801" face="verdana" size="2">Cash</font>
	     </strong></td>
	   <td width="61">
	     <strong><font color="#573801" face="verdana" size="2">Discount</font> 
	     </strong></td>
	   <td width="60">
	     <strong><font color="#573801" face="verdana" size="2">Other</font></strong></td>
	   <td width="99">
	     <strong><font color="#573801" face="verdana" size="2">Account Debited </font>
	     </strong></td>
	   
	   <td width="99"><strong><font color="#573801" face="verdana" size="2">Account#</font></strong></td>
	   <td width="99"><strong><font color="#573801" face="verdana" size="2">Other</font></strong></td>
	 </tr>
	 <tr>
	  <td>
	   <form:input path="date1" size="6"/>
	  </td>
	  <td>
	  <form:input path="accountc1" size="6" id="account"/>
	  </td>
	   <td>
 	  <form:input path="account1" size="6"/>
	   </td> 
	   <td>
 	  <form:input path="sales1" size="6"/>
	   </td> 
	   <td>
 	  <form:input path="amountr1" size="6"/>
	   </td> 
	   <td>
	    <form:input path="cash1" size="6"/>
	   </td>
	   <td>
	    <form:input path="discount1" size="6"/>
	    </td>
		<td>
		 <form:input path="other1" size="6"/>
		</td>
		<td>
		 <form:input path="accountd1" size="6"/>
		</td>
	   
	    <td>
	    <form:input path="accountp1" size="6"/> 
	    </td>
	    <td>
	    <form:input path="othera1" size="6"/>
	    </td>
	 </tr>
	 <tr>
	  <td>
	   <form:input path="date2" size="6"/>
	  </td>
	  <td>
	  <form:input path="accountc2" size="6"/>
	  </td>
	   <td>
 	  <form:input path="account2" size="6"/>
	   </td> 
	   <td>
 	  <form:input path="sales2" size="6"/>
	   </td> 
	   <td>
 	  <form:input path="amountr2" size="6"/>
	   </td> 
	   <td>
	    <form:input path="cash2" size="6"/>
	   </td>
	   <td>
	    <form:input path="discount2" size="6"/>
	    </td>
		<td>
		 <form:input path="other2" size="6"/>
		</td>
		<td>
		 <form:input path="accountd2" size="6"/>
		</td>
	   
	    <td>
	    <form:input path="accountp2" size="6"/> 
	    </td>
	    <td>
	    <form:input path="othera2" size="6"/>
	    </td>
	 </tr>
	 <tr>
	  <td>
	   <form:input path="date3" size="6"/>
	  </td>
	  <td>
	  <form:input path="accountc3" size="6"/>
	  </td>
	   <td>
 	  <form:input path="account3" size="6"/>
	   </td> 
	   <td>
 	  <form:input path="sales3" size="6"/>
	   </td> 
	   <td>
 	  <form:input path="amountr3" size="6"/>
	   </td> 
	   <td>
	    <form:input path="cash3" size="6"/>
	   </td>
	   <td>
	    <form:input path="discount3" size="6"/>
	    </td>
		<td>
		 <form:input path="other3" size="6"/>
		</td>
		<td>
		 <form:input path="accountd3" size="6"/>
		</td>
	   
	    <td>
	    <form:input path="accountp3" size="6"/> 
	    </td>
	    <td>
	    <form:input path="othera3" size="6"/>
	    </td>
	 </tr>
	 <tr>
	  <td colspan="12" align="center"><input type="image" src="images/submit_button.jpg"></td>
	  </tr>
	</table>
   </td>
  </tr>
</table>
</form:form>
</fieldset>
	<input type="hidden" id="companyid" value="<%=comp%>"/>
	</div>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>
	<% }
else
{
response.sendRedirect("login.fin");
}%>	
</body>
</html>
