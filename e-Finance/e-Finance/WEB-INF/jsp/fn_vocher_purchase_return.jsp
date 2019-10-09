<!DOCTYPE html>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta charset='utf-8'/>
<title>Finance</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script><script type="text/javascript">
	$(document).ready(function(){
		var companyname=$('#companyid').val();
		$.get('hlp_displayPurchaseLedger.fin',{'companyname':companyname},function(data){
			//alert(data);
			$('#purchase_ledger').html(data);
		});
		$.get('hlp_PartyAccountName.fin',{'companyname':companyname},function(data){
			//alert(data);
			$('#party_account').html(data);
		});
		$.get('hlp_displayStockItem.fin',{'companyname':companyname},function(data){
			//alert(data);
			$('#itemname').html(data);
		});
		$.get('hlp_displayMesurements.fin',{'companyname':companyname},function(data){
			//alert(data);
			$('#mesurements').html(data);
		});
		$('#party_account').blur(function(){
			var ledgername=$('#party_account').val();
			$.get('ledgerAmount.fin',{'ledgername':ledgername,'companyname':companyname},function(data){
				//alert(data);
				$('#balance').val(data);
			});	
		});
		//Amount
		$('#rate').blur(function(){
			var qaunt=$('#quantity').val();
			var amount=$('#rate').val();
			var total=qaunt*amount;
			//alert(total);
			$('#total').val(total).prop('readonly',true);
			
		});
		$.get('hlp_PurhaseReturnNo.fin',function(data){
			//alert(data);
			var recptno=parseInt(data)+1;
			$('.recptno').val(recptno);
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
			<legend>Vocher Purchase Return</legend>
<form:form action="sfn_vocher_purchase_return.fin" method="post" commandName="vocherPurchaseReturnBean">		
<table align="center" width="800" border="1" class="form_background">
 <tr>
  <td width="392">
   
    Receipt No.
   
  </td>
  <td width="392">
	<form:input path="reciptno" class="recptno"/>
  </td>
 </tr>

 <tr>
 <td> 
    Ref:
   </td>
 <td> <form:input path="refno" class="recptno"/> </td>
 </tr>

 <tr> 
 <td> 
    Date
   </td> 
 <td>   
	<form:input path="date" id="gendate"/>  </td>
 </tr>

 
 <tr>
  <td>
   
    Party's A/c Name
   
   </td>
   <td>
    <form:select path="partyacoount" id="party_account">	
    	
    </form:select>
	
   </td>
 </tr>
<tr>
  <td width="392">
   
    Current Balance
   
  </td>
  <td width="392">
   <form:input path="currnentbalance" id="balance"/>
  </td>
 </tr>

 <tr>
  <td>
   
   Purchase Ledger
   
  </td>
  <td>
<form:select path="purchaseledger" id="purchase_ledger"></form:select>   
  </td>
  </tr>

  <tr>
  <td> 
 
 Name of Item
  
  </td>
	<td>

   <form:select path="nameofitem" id="itemname">
   	
   	</form:select>
   
  </td>
  
  </tr>

  <tr>
   <td>
 
	 Quantity
	
   </td>
 
   
   <td>
    <form:input path="quantity" id="quantity"/>
   </td>
  </tr>


  

 <tr>
  <td width="392">
   
    Units
   
  </td>
  <td >

 <form:select path="units" id="mesurements">
 	
 </form:select>   
  </td>
 </tr>

 <tr>
  <td width="392">
   
    Rate(Rupees)
   
  </td>
  <td>
   <form:input path="rate" id="rate"/>
  </td>
 </tr>
  

  <tr>
  <td width="392">
   
    Amount
   
  </td>
  <td >
   <form:input path="amount" id="total"/>
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
  		<input type="hidden" name="login_comp" id="companyid" value="<%=comp%>"/>
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
	</div></div>
	<% }
else
{
response.sendRedirect("login.fin");
}%>	
</body>
</html>