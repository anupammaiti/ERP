<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Finance</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<link href="css/CalendarControl.css" rel="stylesheet" type="text/css">
<script src="js/CalendarControl.js" language="javascript"></script>
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
	<div class="title_of_project"><%=comp%></div><span id="login_user"><i>Welcome to:</i>&nbsp;&nbsp;&nbsp;&nbsp;<%=username%></span>
	</div>
	<div class="menuscreen">
	<jsp:include page="admin_header.jsp" flush="false"></jsp:include>
	</div>
	<div class="content" align="left">
	<fieldset>
		<legend>
			Vat and Tax 
		</legend>
		<c:forEach items="${Valtlist}" varStatus="status" var="vat">
		
		<form:form action="sfn_edit_invoice_vat_form.fin" method="post" commandName="vatAndTaxBean">
		<table align="center">
			<tr>
				<td>
					Service Tax %
				</td>
				<td>
					<form:input path="tax" value="${vat.tax}"/>
					 <form:errors path="tax" cssClass="error"/> 
				</td>
			</tr>
			<tr>
				<td>
					VAT %
				</td>
				<td>
					<form:input path="vat" value="${vat.vat }" />
					 <form:errors path="vat" cssClass="error"/> 
				</td>
			</tr>
			<tr>
				<td>
					Edu Service Tax
				</td>
				<td>
					<form:input path="eduservicetax" value="${vat.eduservicetax}"/>
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
	</c:forEach>
	</fieldset>
	
	</div><input type="hidden" id="companyid" value="<%=comp%>"/>
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