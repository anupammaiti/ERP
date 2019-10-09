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
	function isEmpty(){
		if((document.ledgerform.ledgername.value=="")||(document.ledgerform.alias.value=="")||(document.ledgerform.under.value=="")||(document.ledgerform.inventoryvalues.value=="")||(document.ledgerform.name.value=="")||(document.ledgerform.address.value=="")||(document.ledgerform.state.value=="")||(document.ledgerform.pincode.value=="")||(document.ledgerform.panno.value=="")||(document.ledgerform.salestax.value=="")){
			alert('*All Fields are Mandatory*');
			return false;
		}else{
			return true;
		}
		return true;
	}

	
	function alphabetic(){
		//	alert('Character Validation');
			
			//alert('Nameis'+numaric);
			//$('#name').change(function(){
			
			var numaric = document.ledgerform.ledgername.value;
			for(var j=0; j<numaric.length; j++)
			{////alert('Hello');
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
			  {
				  document.ledgerform.ledgername.style.background="white";
				  return true;
		      }
			else
				{		
				document.ledgerform.ledgername.focus();
				document.ledgerform.ledgername.style.background="pink";
				document.ledgerform.ledgername.value="";
				
				return false;			
			  	}
			}
		}//alias
		
	function alphabetic1(){
		//	alert('Character Validation');
			
			//alert('Nameis'+numaric);
			//$('#name').change(function(){
			
			var numaric = document.ledgerform.alias.value;
			for(var j=0; j<numaric.length; j++)
			{////alert('Hello');
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
			  {
				  document.ledgerform.alias.style.background="white";
				  return true;
		      }
			else
				{		
				document.ledgerform.alias.focus();
				document.ledgerform.alias.style.background="pink";
				document.ledgerform.alias.value="";
				
				return false;			
			  	}
			}
		}
	function alphabetic2(){
		//	alert('Character Validation');
			
			//alert('Nameis'+numaric);
			//$('#name').change(function(){
			
			var numaric = document.ledgerform.name.value;
			for(var j=0; j<numaric.length; j++)
			{////alert('Hello');
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
			  {
				  document.ledgerform.name.style.background="white";
				  return true;
		      }
			else
				{		
				document.ledgerform.name.focus();
				document.ledgerform.name.style.background="pink";
				document.ledgerform.name.value="";
				
				return false;			
			  	}
			}
		}
	function alphabetic3(){
		//	alert('Character Validation');
			
			//alert('Nameis'+numaric);
			//$('#name').change(function(){
			
			var numaric = document.ledgerform.state.value;
			for(var j=0; j<numaric.length; j++)
			{////alert('Hello');
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
			  {
				  document.ledgerform.state.style.background="white";
				  return true;
		      }
			else
				{		
				document.ledgerform.state.focus();
				document.ledgerform.state.style.background="pink";
				document.ledgerform.address.value="";
				
				return false;			
			  	}
			}
		}
		function numeric(){
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
	
		function numeric1(){
			//alert("Number Validation");
				var numaric=document.ledgerform.pincode.value;
				
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
						document.ledgerform.pincode.focus();
						document.ledgerform.pincode.style.background="pink";
						document.ledgerform.pincode.value="";
						return false;
						}
						
						}
							return false;
						}
		
		function numeric2(){
			//alert("Number Validation");
				var numaric=document.ledgerform.salestax.value;
				
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
						document.ledgerform.salestax.focus();
						document.ledgerform.salestax.style.background="pink";
						document.ledgerform.salestax.value="";
						return false;
						}
						
						}
							return false;
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
			<legend>Create Ledger</legend><span id="successmsg">${successmsg}</span>
		
<form:form action="created_fn_ledger.fin" method="post" commandName="ledgerDetailsBean" id="ledger-form" name="ledgerform" onsubmit="return isEmpty();">
<table align="center" border="0" class="form_background">

 <tr>
  <td>
   
    Ledger Name
   
  </td>
  <td >
<form:input path="ledgername" id="ledgername" onkeyup="return alphabetic();"/>
 <form:errors path="ledgername" cssClass="error"/>
  </td>
 </tr>
 <tr>
  <td>
   
    Alias
   
  </td>
  <td>
 <form:input path="alias" id="alias" onkeyup="return alphabetic1();"/>
 
   
  </td>
 </tr>
 <tr>
  <td>
   
    Under
   
   </td>
   
	   
   
   <td>
    <form:select path="under" id="groupsdata" >
    <form:option value=""></form:option>
	</form:select>
	 
	
   </td>
 </tr>
 <tr>
  <td>
   
    Inventory Values are Effected
   
  </td>
  <td>
  <form:select path="inventoryvalues">
  <form:option value=""></form:option>
  	<form:option value="No">No</form:option>
  	<form:option value="Yes">Yes</form:option>
  </form:select>
   
  </td>
  </tr>
  <tr>
   <td>
   
	 Name
	
   </td>
   <td>
   <form:input path="name" id="name" onkeyup="return alphabetic2();"/>
    <form:errors path="name" cssClass="error"/>
   </td>
  </tr>
  <tr>
   <td>
    
	 Address
	
   </td>
   <td>
    <form:textarea path="address" id="address"/>
    <form:errors path="address" cssClass="error"/>
   </td>
  </tr>
  <tr>
   <td>
   
    State
   
   </td>
   <td>
    <form:input path="state" id="state" onkeyup="return alphabetic3();"/>
    <form:errors path="state" cssClass="error"></form:errors>
   </td>
  </tr>
  <tr>
   <td>
   
	 Pin Code
	
    </td>
	<td>
	<form:input path="pincode" id="pincode" onkeyup="return numeric1();"/>
	 <form:errors path="pincode" cssClass="error"></form:errors>
	</td>
  </tr>
  <tr>
   <td>
    
	 PAN/IT No:
	
   </td>
   <td>
    <form:input path="panno" id="panno" onkeyup="return numeric2();"/>
    <form:errors path="panno" cssClass="error"></form:errors>
   </td>
  </tr>
  <tr>
   <td>
    
	 Sales Tax No:
	
	
   </td>
   <td>
   <form:input path="salestax" id="salestax" onkeyup="return numeric2();"/>
    <form:errors path="salestax" cssClass="error"/>
   </td>
   </tr>
   <tr>
    <td>
	
	  Opening Balance
	
	 </td>
	 <td>
	<form:input path="openingbalance" id="openingbalance"/><form:errors path="openingbalance" cssClass="error"/>
	 <form:select path="type">
	 <form:option value="Dr">Dr</form:option>
	 <form:option value="Cr">Cr</form:option>
	 </form:select>
	  
	 </td>
	</tr>
	<tr>
	<td>
			<%
			String user1=(String)session.getAttribute("username");
			
		%>
	  		<input type="hidden" name="deltby" value="<%=user1%>" id="user2"/>	
	  		<input type="hidden" name="login_comp" value="<%=comp%>"/> 
	  		<input type="hidden"  name="department" id="dept1"/>
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
	</div>
	<% }
else
{
response.sendRedirect("login.fin");
}%>	
</body>
</html>
