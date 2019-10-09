<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Finance</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<link href="css/CalendarControl.css" rel="stylesheet" type="text/css">
<script src="js/CalendarControl.js" language="javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		////alert('Hello');
		$.ajax({url:'fn_inventoryno.fin',success:function(data){
			var no=parseInt(data);
			no=no+1;
			$('.invoiceno').val(no);
		}});
	});
	
	function alphabetic1(alphane){
	//	alert('Character Validation');
		
		//alert('Nameis'+numaric);
		//$('#name').change(function(){
		
		var numaric = document.invoice1.name.value;
		for(var j=0; j<numaric.length; j++)
		{////alert('Hello');
		  var alphaa = numaric.charAt(j);
		  var hh = alphaa.charCodeAt(0);
		  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
		  {
			  return true;
			  
	      }
		else
			{		
			document.invoice1.name.focus();
			document.invoice1.name.style.background="pink";
			document.invoice1.name.value="";
			
			return false;			
		  	}
		}
	}
	
	function numeric1(){
		//alert("Number Validation");
			var numaric=document.invoice1.srlno.value;
			
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
					document.invoice1.srlno.focus();
					document.invoice1.srlno.style.background="pink";
					document.invoice1.srlno.value="";
					return false;
					}
					
					}
						return false;
					}
	
	function numeric2(numeric){
		//alert("Number Validation");
			var numaric= document.invoice1.unitprice.value;
			
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
					document.invoice1.unitprice.focus();
					document.invoice1.unitprice.style.background="pink";
					document.invoice1.unitprice.value="";
					return false;
					}
					
					}
						return false;
					}
	
	function numeric3(numeric){
		//alert("Number Validation");
			var numaric=document.invoice1.quantity.value;
			
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
					document.invoice1.quantity.focus();
					document.invoice1.quantity.style.background="pink";
					document.invoice1.quantity.value="";
					return false;
					}
					
					}
						return false;
					}
				
	function isEmpty(){
		
		if((document.invoice1.srlno.value=="")||(document.invoice1.name.value=="")||(docuemnt.invoice1.unitprice.value=="")||(document.invoice1.quantity.value=="")){
			alert("*All Fields are Mandatory*");
		return false;
			}else{
				
			
		return true;
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
				<legend>
					Invoice Form
				</legend><span id="successmsg">${successmsg }</span>
<table align="center" class="form_background">
	<tr>
	<td>
		<form:form action="fn_created_invoice_form.fin" method="post" commandName="invoiceFormBean" id="invoice_form" name="invoice1" onsubmit="return isEmpty();"> 
		<table align="center" cellpadding="2px" cellspacing="0">
		<tr>
  			<td>
    			Customer Name & Address
  			</td>
  			<td>
  				<form:textarea path="custname" id="getdata1"/>
			</td>
  	  </tr>
  	  <tr>
  			<td>
    			ID
  			</td>
  			<td>
   				<form:input path="invoiceid" class="invoiceno" readonly="true"/>
   		    </td>
  	  </tr> 
  	  <tr>
  			<td>
    			Invoice NO.
  			</td>
  			<td>
			  <input type="text" name="invoiceno" class="invoiceno" readonly="true"/>
			  
  			</td>
  	</tr>
  	<tr>
  			<td>
    			Date
  
   			<td>
   				<form:input path="today" id="gendate1" onfocus="showCalendarControl(this);" readonly="true"/>
   
  			</td>
 	</tr>
 	<tr>
  			<td>Reference No.
  			<td>
   				<form:input path="referenceno" class="invoiceno" readonly="true"/>
   			</td>
 	</tr>
 	<tr>
  			<td>Department
  			<td>
  				<form:select path="department" id="dept">
  					<form:option value="Sales"></form:option>
  					<form:option value="Finance"></form:option>
  					<form:option value="HR"></form:option>
  				</form:select>
   
  			</td>
 	</tr>
</table>
<br/>
<table align="center"  cellspacing="0" cellpadding="0">
   <tr>
    <td>
	  Srl.Part Number
	</td>
	<td>
	  Name
	</td>
	<td>
	  Unit Price
	</td>
	<td>
	  Number of Items 
   </tr>
   <tr>
    <td>
	
	 <form:input path="srlno" onkeyup="return numeric1();"/>
	 
	 </td>
	 <td>
	  
	  <form:input path="name" onkeyup="return alphabetic1();"/>
	  
	 </td>
	 <td>
	  
	  <form:input path="unitprice" id="price" onkeyup="return numeric2();"/>
	 
	 </td>
	 <td>
	    <form:input path="quantity" id="quantity" onkeyup="return numeric3();"/>
	    
	 </td>
	 
   </tr>
   <tr>
   	<td>
   	<form:errors path="srlno" cssClass="error"></form:errors>	
   	</td>
   	<td>
   	<form:errors path="name" cssClass="error"></form:errors>
   	</td>
   	<td>
   	 <form:errors path="unitprice" cssClass="error"></form:errors>
   	</td>
   	<td>
   	<form:errors path="quantity" cssClass="error"></form:errors>
   	</td>
   </tr>
   <tr>
   	<td height="10px">	
   	</td>
   </tr>
   <tr>
   <td>Total Amount</td>
   	<td>
   		Service Tax
   	</td>
   	<td>
   		VAT 
   	</td>
   	<td>
   		
   		Net Amount
   	
   	</td>
   </tr>
   <tr>
   	<td>
   		<form:input path="totalamount" readonly="true" id="totalamount"/>
   	</td>
   	<td>
   		<form:input path="servicetax" readonly="true" id="servicetax"/>
   	</td>
   	<td>
   		<form:input path="vat" readonly="true" id="vat"/>
   	</td>
   	<td>
   		<form:input path="netamount" readonly="true" id="net"/>
   	</td>
   </tr>
   <tr>
   	<td height="10px">	
   	</td>
   </tr>
   
   
   
 </table>
 <table width="256" align="center">
  <tr>
   <td width="248" align="center">
     <p>Service Tax @<span id="tax1"></span>%</p>
     <p>VAT @ <span id="vat1"></span>%</p>
     <p>
     <input type="image" src="images/submit_button.jpg" id="button1"/>
     </p></td>
  </tr>
  <tr>
	<td>
			<%
			String user1=(String)session.getAttribute("username");
			
		%>
			<input type="hidden" name="login_comp" value="<%=comp%>" id="companyname"/>
	  		<input type="hidden" name="deltby" value="<%=user1%>" id="user2"/>	
	  		<input type="hidden" name="manager" id="mgr1"/> 
	  		<input type="hidden"  name="dept1" id="dept1"/>
	</td>
</tr>
</table>

</form:form>

</td></tr>

</table></fieldset>
	<input type="hidden" id="companyid" value="<%=comp%>"/>
	</div>
	<div class="footer"> <%session.removeAttribute("successmsg");%>
	
	<jsp:include page="footer.jsp" flush="false"></jsp:include>
	</div>
	</div>
	<%session.removeAttribute("successmsg"); %>
	<% }
else
{
response.sendRedirect("login.fin");
}%>	
</body>
</html>