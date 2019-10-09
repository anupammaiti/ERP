<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Finance</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script><script type="text/javascript">
	$(document).ready(function(){
		//alert('Hai');
		var pass=$('#password').val();
		var repass=$('#repassword').val();
		$('#repassword').blur(function(){
			if(pass==repass){
				//alert('Both are Equal');
			}else{
				//alert('Both are not Equal');
				$('#password').val('');
				$('#repassword').val('');
			}
		});
		return false;
	});
	
	
	function numeric1(){
		//$('.number').change(function(){
			var numaric=document.employeeform.mobileno.value;
			//alert(numaric);
			for(var j=0; j<numaric.length; j++)
				{
				  var alphaa = numaric.charAt(j);
				  var hh = alphaa.charCodeAt(0);
				  if((hh>47)&&(hh<58))
				  {
					  
			      }
				else
					{		document.employeeform.mobileno.focus();
							document.employeeform.mobileno.style.background="pink";
							document.employeeform.mobileno.value="";
								return false;
					}
		 		}
			//});	
			return true;
	}
	
	function alphabetic()
	{
		////alert('Hello');
		var numaric = document.employeeform.firstname.value;
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
				 document.employeeform.firstname.focus();
				 document.employeeform.firstname.style.background="pink";
				 document.employeeform.firstname.value="";
				return false;			
			  	}
	 		}

	 return true;
	}
	
	function alphabetic1()
	{
		////alert('Hello');
		var numaric = document.employeeform.lastname.value;
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
				 document.employeeform.lastname.focus();
				 document.employeeform.lastname.style.background="pink";
				 document.employeeform.lastname.value="";
				return false;			
			  	}
	 		}

	 return true;
	}
	
	function alphabetic2()
	{
		////alert('Hello');
		var numaric = document.employeeform.qualification.value;
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
				 document.employeeform.qualification.focus();
				 document.employeeform.qualification.style.background="pink";
				 document.employeeform.qualification.value="";
				return false;			
			  	}
	 		}

	 return true;
	}
	
	
	function checkemail(){
		var x=document.employeeform.emailid.value;
		var atpos=x.indexOf("@");
		var dotpos=x.lastIndexOf(".");
		if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
		  {
			document.employeeform.emailid.focus();
			document.employeeform.emailid.style.background="pink";
			document.employeeform.emailid.value="";
		  
		  return false;
		  }else{
			  
			  
			  return true;
		  }

		return true;
		}
	
	function mobileLength(){
		var mobileno=document.employeeform.mobileno.value;
		if(mobileno.length==10){
			
		}else{
			document.employeeform.mobileno.focus();
			document.employeeform.mobileno.style.background="pink";
			
		}
	}
	
	function isEmpty(){
		if((document.employeeform.firstname.value=="")||(document.employeeform.lastname.value=="")||(document.employeeform.mobileno.value=="")||(document.employeeform.emailid.value=="")||(document.employeeform.address.value=="")||(document.employeeform.qualification.value=="")||(document.employeeform.dateofbirth.value=="")||(document.employeeform.dateofjoining.value=="")){
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
 String comp=(String)session.getAttribute("compname");
// System.out.println("hi"+username);
// System.out.println("hi"+pwd);
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
	<jsp:include page="admin_header.jsp" flush="false"></jsp:include>
	</div>
	<div class="content" align="center"><span id="successmsg">${successmsg}</span> 
	<fieldset>
		<legend>
			Employee Details
		</legend>
		<form:form action="sfn_create_employee.fin" method="post" commandName="employeeBean" name="employeeform" onsubmit="return isEmpty();">
		
		<table>
			<tr>
				<td>
					First Name
				</td>
				<td>
					<form:input path="firstname" onkeyup="return alphabetic();"/>
					<form:errors path="firstname" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
					Last Name
				</td>
				<td>
					<form:input path="lastname" onkeyup="return alphabetic1();"/>
					<form:errors path="lastname" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
					Mobile No
				</td>
				<td>
					<form:input path="mobileno" onkeyup="return numeric1();" maxlength="10"/>
					<form:errors path="mobileno" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
					e-mail
				</td>
				<td>
					<form:input path="emailid" id="emailid" onblur="return checkemail();"/>
					<form:errors path="emailid" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
					Address
				</td>
				<td>
					<form:textarea path="address"/>
				</td>
			</tr>
			<tr>
				<td>
					Qualification
					
				</td>
				<td>
					<form:input path="qualification" onkeyup="return alphabetic2();"/>
					<form:errors path="qualification" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>Salary</td>
				<td><form:input path="salary"/> </td>
			</tr>
			<tr>
				<td>Bank Account</td>
				<td><form:input path="bankac"/> </td>
			</tr>
			<tr>
				<td>
					PFNo
				</td>
				<td>
					<form:input path="pfno"/>
				</td>
				
			</tr>
			<tr>
				<td>PanCard</td>
				<td><form:input path="pancard"/> </td>
			</tr>
			<tr>
				<td>
					Date Of Birth
				</td>
				<td>
					<form:input path="dateofbirth" />(yyyy-mm-dd)
					<form:errors path="dateofbirth" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
					Date Of Joining
				</td>
				<td>
					<form:input path="dateofjoining"/>(yyyy-mm-dd)
					<form:errors path="dateofjoining" cssClass="error"></form:errors>
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
					<form:password path="password" id="password"/>
					
				</td>
			</tr>
			<tr>
				<td>
					Re-enter Password
				</td>
				<td>
					<form:password path="reenterpassword" id="repassword"/>
					
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="companyname" value="<%=comp%>"/>
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
	<div class="footer"> <%session.removeAttribute("successmsg");%>
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