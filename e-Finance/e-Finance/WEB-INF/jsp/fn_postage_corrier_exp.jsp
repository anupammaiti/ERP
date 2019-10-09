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
		//alert('Hello');
		var companyname=$('#companyid').val();
		$.get('fn_ledgerdetails.fin',{'companyname':companyname},function(data){
			//alert(data);
			$('.ledgerlist').html(data);
		});
	});

function isEmpty(){

	if((document.postageexp.approvedby.value=="")||(document.postageexp.to_name.value=="")||(document.postageexp.address.value=="")||(document.postageexp.typeofpost.value=="")||(document.postageexp.rate.value=="")){
		alert('*All Fields are Mandatory*');
		return false;
	}	else{
		return true;
	}
}
function alphabetic(){
	//	alert('Character Validation');
		
		//alert('Nameis'+numaric);
		//$('#name').change(function(){
		
		var numaric = document.postageexp.approvedby.value;
		for(var j=0; j<numaric.length; j++)
		{////alert('Hello');
		  var alphaa = numaric.charAt(j);
		  var hh = alphaa.charCodeAt(0);
		  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
		  {
			  document.postageexp.approvedby.style.background="white";
		 
			  return true;
		  }	  
	     
		else
			{		
			document.postageexp.approvedby.focus();
			document.postageexp.approvedby.style.background="pink";
			document.postageexp.approvedby.value="";
			
			return false;			
		  	}
		}
		return true;
	}	
		
function alphabetic1(){
	//	alert('Character Validation');
		
		//alert('Nameis'+numaric);
		//$('#name').change(function(){
		
		var numaric = document.postageexp.to_name.value;
		for(var j=0; j<numaric.length; j++)
		{////alert('Hello');
		  var alphaa = numaric.charAt(j);
		  var hh = alphaa.charCodeAt(0);
		  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
		  {
			  document.postageexp.to_name.style.background="white";
		 
			  return true;
		  }	  
	     
		else
			{		
			document.postageexp.to_name.focus();
			document.postageexp.to_name.style.background="pink";
			document.postageexp.to_name.value="";
			
			return false;			
		  	}
		}
		return true;
	}	
function alphabetic2(){
	//	alert('Character Validation');
		
		//alert('Nameis'+numaric);
		//$('#name').change(function(){
		
		var numaric = document.postageexp.address.value;
		for(var j=0; j<numaric.length; j++)
		{////alert('Hello');
		  var alphaa = numaric.charAt(j);
		  var hh = alphaa.charCodeAt(0);
		  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
		  {
			  document.postageexp.address.style.background="white";
		 
			  return true;
		  }	  
	     
		else
			{		
			document.postageexp.address.focus();
			document.postageexp.address.style.background="pink";
			document.postageexp.address.value="";
			
			return false;			
		  	}
		}
		return true;
	}	
function alphabetic3(){
	//	alert('Character Validation');
		
		//alert('Nameis'+numaric);
		//$('#name').change(function(){
		
		var numaric = document.postageexp.typeofpost.value;
		for(var j=0; j<numaric.length; j++)
		{////alert('Hello');
		  var alphaa = numaric.charAt(j);
		  var hh = alphaa.charCodeAt(0);
		  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
		  {
			  document.postageexp.typeofpost.style.background="white";
		 
			  return true;
		  }	  
	     
		else
			{		
			document.postageexp.typeofpost.focus();
			document.postageexp.typeofpost.style.background="pink";
			document.postageexp.typeofpost.value="";
			
			return false;			
		  	}
		}
		return true;
	}	
		
function numeric(){
	//alert("Number Validation");
		var numaric=document.postageexp.amountperitem.value;
		
		for(var j=0; j<numaric.length; j++)
			{
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if((hh>47)&&(hh<58))
			  {
				  document.postageexp.amountperitem.style.background="white";
				  return true;
			  }
		      
			else
				{	
				document.postageexp.amountperitem.focus();
				document.postageexp.amountperitem.style.background="pink";
				document.postageexp.amountperitem.value="";
				return false;
				}
				
				}
					return true;
				}
				
function numeric1(){
	//alert("Number Validation");
		var numaric=document.postageexp.rate.value;
		
		for(var j=0; j<numaric.length; j++)
			{
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if((hh>47)&&(hh<58))
			  {
				  document.postageexp.rate.style.background="white";
				  return true;
			  }
		      
			else
				{	
				document.postageexp.rate.focus();
				document.postageexp.rate.style.background="pink";
				document.postageexp.rate.value="";
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
		<legend>Postage Exp</legend>
		<form:form action="sfn_postage.fin" method="post" commandName="postageExpBean" name="postageexp" onsubmit="return isEmpty();">
		<table>
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
					To Name
				</td>
				<td>
					<form:input path="to_name" onkeyup="return alphabetic1();"/>
					<form:errors path="to_name" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
					Adress
				</td>
				<td>	 
					<form:input path="address" onkeyup="return alphabetic2();"/>
					<form:errors path="address" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
					Post Type
				</td>
				<td>	
					<form:input path="typeofpost" onkeyup="return alphabetic3();"/>
					<form:errors path="typeofpost" cssClass="error"> </form:errors>
				</td>
			</tr>
			<tr>
				<td>
					Rate
				</td>
				<td>
					<form:input path="rate" onkeyup="return numeric1();"/>
					<form:errors path="rate" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
					Total Amount
				</td>
				<td>
					<form:input path="totalamount"/>
					<form:errors path="totalamount" cssClass="error"></form:errors>
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
	</div>
<% }
else
{
response.sendRedirect("login.fin");
}%>
</body>

</html>