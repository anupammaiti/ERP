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
	//alert('Indirect Expenses');
	var companyname=$('#companyid').val();
	$.get('fn_ledgerdetails.fin',{'companyname':companyname},function(data){
		//alert(data);
		$('.ledgerlist').html(data);
	});

});

function isEmpty(){
	
	if((document.advexp.approvedby.value=="")||(document.advexp.companyname.value=="")||(document.advexp.onissues.value=="")||(document.advexp.typeofaddress.value=="")||(document.advexp.noofseconds.value=="")||(document.advexp.mobileno.value=="")||(document.advexp.landno.value=="")||(document.advexp.amount.value=="")){
		alert('*All Fields Are Mandatory*');
		return false;
	}else{
		return true;
	}
	return true;
}

function numeric(){
	//alert("Number Validation");
		var numaric=document.advexp.srlno.value;
		
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
				document.advexp.srlno.focus();
				document.advexp.srlno.style.background="pink";
				document.advexp.srlno.value="";
				return false;
				}
				
				}
					return true;
				}

function numeric1(){
	//alert("Number Validation");
		var numaric=document.advexp.noofseconds.value;
		
		for(var j=0; j<numaric.length; j++)
			{
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if((hh>47)&&(hh<58))
			  {
				  document.advexp.noofseconds.style.background="white";
				  return true;
			  }
		      
			else
				{	
				document.advexp.noofseconds.focus();
				document.advexp.noofseconds.style.background="pink";
				document.advexp.noofseconds.value="";
				return false;
				}
				
				}
					return true;
				}
function numeric2(){
	//alert("Number Validation");
		var numaric=document.advexp.mobileno.value;
		
		for(var j=0; j<numaric.length; j++)
			{
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if((hh>47)&&(hh<58))
			  {
				  document.advexp.mobileno.style.background="white";
				  return true;
			  }
		      
			else
				{	
				document.advexp.mobileno.focus();
				document.advexp.mobileno.style.background="pink";
				document.advexp.mobileno.value="";
				return false;
				}
				
				}
					return true;
				}
				
function numeric3(){
	//alert("Number Validation");
		var numaric=document.advexp.landno.value;
		
		for(var j=0; j<numaric.length; j++)
			{
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if((hh>47)&&(hh<58))
			  {
				  document.advexp.landno.style.background="white";
				  return true;
			  }
		      
			else
				{	
				document.advexp.landno.focus();
				document.advexp.landno.style.background="pink";
				document.advexp.landno.value="";
				return false;
				}
				
				}
					return true;
				}
				
function numeric4(){
	//alert("Number Validation");
		var numaric=document.advexp.amount.value;
		
		for(var j=0; j<numaric.length; j++)
			{
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if((hh>47)&&(hh<58))
			  {
				  document.advexp.amount.style.background="white";
				  return true;
			  }
		      
			else
				{	
				document.advexp.amount.focus();
				document.advexp.amount.style.background="pink";
				document.advexp.amount.value="";
				return false;
				}
				
				}
					return true;
				}
function alphabetic(){
	//	alert('Character Validation');
		
		//alert('Nameis'+numaric);
		//$('#name').change(function(){
		
		var numaric = document.advexp.approvedby.value;
		for(var j=0; j<numaric.length; j++)
		{////alert('Hello');
		  var alphaa = numaric.charAt(j);
		  var hh = alphaa.charCodeAt(0);
		  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
		  {
			  
			  document.advexp.approvedby.style.background="white";
			  return true;
			  
	      }
		else
			{		
			document.advexp.approvedby.focus();
			document.advexp.approvedby.style.background="pink";
			document.advexp.approvedby.value="";
			
			return false;			
		  	}
		}
		return true;
	}
		
function alphabetic1(){
	//	alert('Character Validation');
		
		//alert('Nameis'+numaric);
		//$('#name').change(function(){
		
		var numaric = document.advexp.companyname.value;
		for(var j=0; j<numaric.length; j++)
		{////alert('Hello');
		  var alphaa = numaric.charAt(j);
		  var hh = alphaa.charCodeAt(0);
		  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
		  {
			  
			  document.advexp.companyname.style.background="white";
			  return true;
			  
	      }
		else
			{		
			document.advexp.companyname.focus();
			document.advexp.companyname.style.background="pink";
			document.advexp.companyname.value="";
			
			return false;			
		  	}
		}
		return true;
	}	

function alphabetic2(){
	//	alert('Character Validation');
		
		//alert('Nameis'+numaric);
		//$('#name').change(function(){
		
		var numaric = document.advexp.onissues.value;
		for(var j=0; j<numaric.length; j++)
		{////alert('Hello');
		  var alphaa = numaric.charAt(j);
		  var hh = alphaa.charCodeAt(0);
		  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
		  {
			  
			  document.advexp.onissues.style.background="white";
			  return true;
			  
	      }
		else
			{		
			document.advexp.onissues.focus();
			document.advexp.onissues.style.background="pink";
			document.advexp.onissues.value="";
			
			return false;			
		  	}
		}
		return true;
	}	
function alphabetic3(){
	//	alert('Character Validation');
		
		//alert('Nameis'+numaric);
		//$('#name').change(function(){
		
		var numaric = document.advexp.typeofaddress.value;
		for(var j=0; j<numaric.length; j++)
		{////alert('Hello');
		  var alphaa = numaric.charAt(j);
		  var hh = alphaa.charCodeAt(0);
		  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
		  {
			  
			  document.advexp.typeofaddress.style.background="white";
			  return true;
			  
	      }
		else
			{		
			document.advexp.typeofaddress.focus();
			document.advexp.typeofaddress.style.background="pink";
			document.advexp.typeofaddress.value="";
			
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
		<legend>Advertisement Expenses</legend>
		<form:form action="sfn_advertisement_exp.fin" method="post" commandName="advertisementExpenses" name="advexp" onsubmit="return isEmpty();">
		<table class="form_background" class="form_background">
			<tr>
				<td>
					Ledger Name
				</td>
				<td>
					<form:select path="ledgername" class="ledgerdetailslist1"></form:select>
				</td>
			</tr>
			<tr>
				<td>
					Approved By
				</td>
				<td>
					<form:input path="approvedby" onkeyup="return alphabetic();"/>
					<form:errors path="approvedby" cssClass="error"></form:errors>
				</td>
			</tr>
			
			<tr>
				<td>
					Company Name
				</td>
				<td>
					<form:input path="companyname" onkeyup="return alphabetic1();"/>
					<form:errors path="companyname" cssClass="error"/>					
				</td>
			</tr>
			<tr>
				<td>
					OnIssue
				</td>
				<td>
					<form:input path="onissues" onkeyup="return alphabetic2();"/>
					<form:errors path="onissues" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
					Type Of Adv
				</td>
				<td>
					<form:input path="typeofaddress" onkeyup="return alphabetic3();"/>
					<form:errors path="typeofaddress" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
					No Of Seconds
				</td>
				<td>
					<form:input path="noofseconds" onkeyup="return numeric1();"/>
					<form:errors path="noofseconds" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
					Mobile No
				</td>
				<td>
					<form:input path="mobileno" onkeyup="return numeric2();" maxlength="10"/>
					<form:errors path="mobileno" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
					Land No
				</td>
				<td>
					<form:input path="landno" onkeyup="return numeric3();"/>
					<form:errors path="landno" cssClass="error"></form:errors>(XXX-XXXXXXXX)
				</td>
			</tr>
			<tr>
				<td>
					Amount
				</td>
				<td>
					<form:input path="amount" onkeyup="return numeric4();"/>
					<form:errors path="amount" cssClass="error"></form:errors>
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
		<jsp:include page="footer.jsp" flush="false"></jsp:include>
	</div>
	
<% }
else
{
response.sendRedirect("login.fin");
}%>
</body>

</html>