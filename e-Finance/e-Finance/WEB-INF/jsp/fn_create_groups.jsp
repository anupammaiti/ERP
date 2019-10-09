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
	if((document.groupform.name.value=="")||(document.groupform.alias.value=="")||(document.groupform.under.value=="")||(document.groupform.natureofgroup.value=="")||(document.groupform.grpbeh.value=="")||(document.groupform.netrep.value=="")||(document.groupform.usecal.value=="")||(document.groupform.metall.value=="")){
		alert('*All fields are Mandatory*');
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
		
		var numaric = document.groupform.name.value;
		for(var j=0; j<numaric.length; j++)
		{////alert('Hello');
		  var alphaa = numaric.charAt(j);
		  var hh = alphaa.charCodeAt(0);
		  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
		  {document.groupform.name.style.background="white";
			  return true;
			  
	      }
		else
			{		
			document.groupform.name.focus();
			document.groupform.name.style.background="pink";
			document.groupform.name.value="";
			
			return false;			
		  	}
		}
	}
function alphabetic1(){
	//	alert('Character Validation');
		
		//alert('Nameis'+numaric);
		//$('#name').change(function(){
		
		var numaric = document.groupform.alias.value;
		for(var j=0; j<numaric.length; j++)
		{////alert('Hello');
		  var alphaa = numaric.charAt(j);
		  var hh = alphaa.charCodeAt(0);
		  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
		  {document.groupform.alias.style.background="white";
			  return true;
			  
	      }
		else
			{		
			document.groupform.alias.focus();
			document.groupform.alias.style.background="pink";
			document.groupform.alias.value="";
			
			return false;			
		  	}
		}
	}		
		
function alphabetic2(){
	//	alert('Character Validation');
		
		//alert('Nameis'+numaric);
		//$('#name').change(function(){
		
		var numaric = document.groupform.natureofgroup.value;
		for(var j=0; j<numaric.length; j++)
		{////alert('Hello');
		  var alphaa = numaric.charAt(j);
		  var hh = alphaa.charCodeAt(0);
		  if( (hh > 64 && hh < 91) || (hh > 96 && hh < 123)||(hh==95))
		  {document.groupform.natureofgroup.style.background="white";
			  return true;
			  
	      }
		else
			{		
			document.groupform.natureofgroup.focus();
			document.groupform.natureofgroup.style.background="pink";
			document.groupform.natureofgroup.value="";
			
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

</script>
<link rel="stylesheet" href="css/finance_style.css"/>
</head>
<% String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 String comp=(String)session.getAttribute("compname");
 /* System.out.println("hi"+username);
 System.out.println("hi"+pwd); */
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
	<legend>Groups</legend><span id="successmsg">${successmsg}</span>
	



<form:form action="created_fn_group.fin" method="post" commandName="groupDetailsBean" id="group" onsubmit="return isEmpty();" name="groupform">


<table>


<tr>
<td>
Name
</td>
<td>
<form:input path="name" onkeyup="return alphabetic();"/>
<form:errors path="name" cssClass="error"></form:errors>
</td>
</tr>

<tr>
<td>
(Alias)
</td>
<td>
<form:input path="alias" onkeyup="return alphabetic1();"/>

</td>
</tr>

<tr>
<td>
Under
</td>
<td>
 <form:select path="under" id="groupsdata">
</form:select>
</td>
</tr>
<tr>
<td>
Nature Of Group 
</td>
<td>
<form:input path="natureofgroup" onkeyup="return alphabetic2();"/>
<form:errors path="natureofgroup" cssClass="error"></form:errors>
</td>
</tr>


<tr>
<td>
Group behaves like a Sub-Ledger 
</td>
<td>
<form:select path="grpbeh">
	<form:option value="No">No</form:option>
	<form:option value="Yes">Yes</form:option>
</form:select>

</td>
</tr>

<tr>
<td>
Net Debit/Credit Balances for Reporting
</td>
<td>
<form:select path="netrep">
<form:option value="No">No</form:option>
<form:option value="Yes">Yes</form:option>
</form:select>

</td>
</tr>


<tr>
<td>
Used for Calculation
</td>
<td>
<form:select path="usecal">
	<form:option value="No">No</form:option>
	<form:option value="Yes">Yes</form:option>
</form:select>

</td>
</tr>
<tr>
<td>
Method to Allocate when Used in Purchase Invoice
</td>
<td>
<form:select path="metall">
	<form:option value="NotApplicable">Not Applicable</form:option>
	<form:option value="AppropriateByQty">Appropriate By Qty</form:option>
	<form:option value="AppropriateByValue">Appropriate By Value</form:option>
	<form:option value="NoAppropriatoin">No Appropriatoin</form:option>
</form:select>

</td>
</tr>
<tr><td>
	<%
			String user1=(String)session.getAttribute("username");
			
		%>
	  		<input type="hidden" name="deltby" value="<%=user1%>" id="user2"/>	
	  		<input type="hidden" id="companyid" name="login_comp" value="<%=comp%>"/> 
	  		<input type="hidden"  name="department" id="dept1"/>
</td>
	<td>	
		<input type="image" src="images/submit_button.jpg" id="button1"/>
	</td>
</tr>
</table>
</form:form>

</fieldset>
	<%session.removeAttribute("successmsg"); %>
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