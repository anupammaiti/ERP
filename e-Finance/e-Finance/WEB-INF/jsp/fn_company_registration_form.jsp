<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Finance</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script><link rel="stylesheet" href="css/finance_style.css"/>
<script type="text/javascript">
function alphabetic()
{
	////alert('Hello');
	var numaric = document.companyregistration.companyname.value;
	for(var j=0; j<numaric.length; j++)
		{////alert('Hello');
		  var alphaa = numaric.charAt(j);
		  var hh = alphaa.charCodeAt(0);
		  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
		  {
			  
	      }
		else
			{		
			alphaa.value='';
			 //alert("It is not a character");
			 document.companyregistration.companyname.focus();
			 document.companyregistration.companyname.style.background="pink";
			 document.companyregistration.companyname.style.display="block";
			 document.companyregistration.companyname.reset();
			return false;			
		  	}
 		}

 return true;
}


function numeric1(){
	//$('.number').change(function(){
		var numaric=document.companyregistration.mobileno.value;
		//alert(numaric);
		for(var j=0; j<numaric.length; j++)
			{
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if((hh>47)&&(hh<58))
			  {
				  
		      }
			else
				{		document.companyregistration.mobileno.focus();
						document.companyregistration.mobileno.style.background="pink";
						document.companyregistration.mobileno.value="";
							return false;
				}
	 		}
		//});	
		return true;
}
function mobilelength(){
	var mobileno=document.companyregistration.mobileno.value;
	if(mobileno.length==10){
		
	}else{
		
		document.companyregistration.mobileno.style.background="pink";
	}
}

function landLine(){
	//$('.number').change(function(){
		var numaric=document.companyregistration.landline.value;
		//alert(numaric);
		for(var j=0; j<numaric.length; j++)
			{
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if((hh>47)&&(hh<58))
			  {
				  return true;
		      }
			else
				{		document.companyregistration.landline.focus();
						document.companyregistration.landline.style.background="pink";
						document.companyregistration.landline.value="";
							return false;
				}
	 		}
		//});	
		return true;
}
function checkemail(){
	var x=document.companyregistration.email.value;
	var atpos=x.indexOf("@");
	var dotpos=x.lastIndexOf(".");
	if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
	  {
		document.companyregistration.email.focus();
		document.companyregistration.email.style.background="pink";
		document.companyregistration.email.value="";
	  
	  return false;
	  }else{
		  
		  
		  return true;
	  }

	return false;
	}

</script>



</head>

<body>
<div class="mainscreen" align="center">
	<div class="head_screen">
	<div class="logo">
	
	</div>
	<div class="title_of_project">e-Finance</div>
	</div>
	<div class="menuscreen">
		
	</div>
	
	<div class="content" align="center">
	<fieldset>
		<legend>
			Company Registration
		</legend> <span id="successmsg">${successmsg}</span> 
		
		<table>
		<form:form action="fn_upload_logo.fin" method="post" commandName="companyRegistrationBean" name="companyregistration">	
			<tr>
				<td>
					Company Name
				</td>
				<td>
				<form:input path="companyname" onkeyup="return alphabetic();" onblur="return alphabetic();"/>					
				<form:errors path="companyname" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
					Mobile No
				</td>
				<td>
					<form:input path="mobileno" onkeyup="return numeric1();" onblur="return mobilelength();" maxlength="10"/>
					<form:errors path="mobileno" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
					Land Line
				</td>
				<td>
					<form:input path="landline" onkeyup="return landLine();"/>
					<form:errors path="landline" cssClass="error"></form:errors>(XXX-XXXXXXXX)
				</td>
				
			</tr>
			<tr>
				<td>
					Company Mail
				</td>
				<td>
					<form:input path="email" id="emailid" onblur="return checkemail();"/>
					<form:errors path="email" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
					Address
				</td>
				<td>
					<form:textarea path="address" />
				</td>
			</tr>
			
			<tr>
				<td>
					User Name
				</td>
				<td>
					<form:input path="username" id="userid"/>
					<form:errors path="username" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
					Password
				</td>
				<td>
					<form:password path="password"  id="password" />
					<form:errors path="password" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
					Re-enter Password
				</td>
				<td>
					<form:password path="reenterpassword" id="reenterpassword"/>
				</td>
			</tr>
			<tr>
				<td>
					
				</td>
				<td>
					<input type="image" src="images/continue_button.jpg" id="button1"/>
				</td>
				</form:form>
				<form action="login.fin" method="post">
				<td>
					<input type="Submit" value="Skip>>"/>
				</td>
				</form>
			</tr>
			
			</table>
		<h3>*All Fields Are Mandatory*</h3>
	</fieldset>
	<%session.removeAttribute("successmsg");%>
	
	</div>
	<div class="footer"> <%session.removeAttribute("successmsg");%>
		<jsp:include page="footer.jsp" flush="false"></jsp:include>
	</div>
	</div>
		
</body>
</html>