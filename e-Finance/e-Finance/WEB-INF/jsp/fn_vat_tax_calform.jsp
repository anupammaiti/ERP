<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="form"  uri="http://www.springframework.org/tags/form"%>
 <%@taglib prefix="error1" uri="http://www.springframework.org/tags" %>
 <%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Finance</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script><link rel="stylesheet" href="css/finance_style.css"/>
<script type="text/javascript">
function numeric1(){
	//$('.number').change(function(){
		var numaric=document.vatform.tax.value;
		//alert(numaric);
		for(var j=0; j<numaric.length; j++)
			{
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if((hh>47)&&(hh<58))
			  {
				  
		      }
			else
				{		document.vatform.tax.focus();
						document.vatform.tax.style.background="pink";
						document.vatform.tax.value="";
							return false;
				}
	 		}
		//});	
		return true;
}

function numeric2(){
	//$('.number').change(function(){
		var numaric=document.vatform.vat.value;
		//alert(numaric);
		for(var j=0; j<numaric.length; j++)
			{
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if((hh>47)&&(hh<58))
			  {
				  
		      }
			else
				{		document.vatform.vat.focus();
						document.vatform.vat.style.background="pink";
						document.vatform.vat.value="";
							return false;
				}
	 		}
		//});	
		return true;
}
function numeric3(){
	//$('.number').change(function(){
		var numaric=document.vatform.eduservicetax.value;
		//alert(numaric);
		for(var j=0; j<numaric.length; j++)
			{
			  var alphaa = numaric.charAt(j);
			  var hh = alphaa.charCodeAt(0);
			  if((hh>47)&&(hh<58))
			  {
				  
		      }
			else
				{		document.vatform.eduservicetax.focus();
						document.vatform.eduservicetax.style.background="pink";
						document.vatform.eduservicetax.value="";
							return false;
				}
	 		}
		//});	
		return true;
}
</script>
</head>
<% String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 String comp=(String)session.getAttribute("compname");
// System.out.println("hi"+username);
// System.out.println("hi"+pwd);
 if((username!=null)&&(pwd!=null))
 { %>
<body>
<%-- <div class="form_errors">
	<error1:hasBindErrors name="vatAndTaxBean">
	<ul>
	<c:forEach items="vat" var="err">
		<error1:bind path="vatAndTaxBean.${err}">
			<c:if test="${status.error}">
			<li>
				${status.errorMessage}
			</li>
			</c:if>
		</error1:bind>
	</c:forEach>
</ul>
</error1:hasBindErrors>
	</div> --%>
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
	<div class="content" align="center">
	<fieldset>
		<legend>
			Vat and Tax 
		</legend>
		<form:form action="sfn_create_invoice_vat_form.fin" method="post" commandName="vatAndTaxBean" name="vatform">
		<table>
			<tr>
				<td>
					Service Tax %
				</td>
				<td>
					<form:input path="tax" onkeyup="return numeric1();"/>
					 <form:errors path="tax" cssClass="error"/> 
				</td>
			</tr>
			<tr>
				<td>
					VAT %
				</td>
				<td>
					<form:input path="vat" onkeyup="return numeric2();"/>
					 <form:errors path="vat" cssClass="error"/> 
				</td>
			</tr>
			<tr>
				<td>
					Edu Service Tax
				</td>
				<td>
					<form:input path="eduservicetax" onkeyup="return numeric3();"/>
					 <form:errors path="eduservicetax" cssClass="error"/>
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