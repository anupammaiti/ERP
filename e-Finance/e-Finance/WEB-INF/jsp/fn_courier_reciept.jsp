<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Finance</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<link rel="stylesheet" href="css/finance_style.css"/>
<link href="css/CalendarControl.css" rel="stylesheet" type="text/css">
<script src="js/CalendarControl.js" language="javascript"></script>
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
	<div class="title_of_project"><%=comp%></div>
	<div id="login_user"><span>Welcome to:&nbsp;&nbsp;&nbsp;&nbsp;<%=username%></span><div class="flip"><a href="logout.fin"><span id="linktext">LogOut</span></a></div>
	</div></div>
	<div class="menuscreen">
	<jsp:include page="executive_header.jsp" flush="false"></jsp:include>
	</div>
	<div class="content" align="left">
	<fieldset>
		<form:form action="sfn_Courier_Reciept.fin" method="post" commandName="courierRecieptBean">
	<table align="center">
		<tr>
			<td>
				Reciept Date
			</td>
			<td>
				<form:input path="recieptdate" onfocus="showCalendarControl(this);" value="yyyy-mm-dd" required="true"/>
			</td>	
		</tr>
		<tr>
			<td>
				Form Type
			</td>
			<td>
				<form:input path="formtype"/>
			</td>
		</tr>
		<tr>
			<td>
				Document for Eligibilty
			</td>
			<td>
				<form:select path="dcforeligibility">
					<form:option value=""></form:option>
					<form:option value="Yes"></form:option>
					<form:option value="No"></form:option>
				</form:select>
			</td>
		</tr>
		<tr>
			<td>
			Mislineous</td> 
			<td>
				<form:input path="misleneous"/>
			</td>
		</tr>
		<tr>
			<td>Weight Courier</td>
			<td><form:input path="weightofcourier"/> </td>
		</tr>
		<tr>
			<td>Payment Mode</td>
			<td><form:input path="paymentmode"/> </td>
		</tr>
		<tr>
			<td>Courier Consigment No</td>
			<td><form:input path="ccno"/> </td>
		</tr>
		<tr>
			<td>
				Courier Company
			</td>
			<td>
				<form:input path="ccompany"/>
			</td>
		</tr>
		<tr>
			<td>
				By Hand
			</td>
			<td>
			<form:input path="deltby" value="<%= username%>" readonly="true"/></td>
		</tr>
		<tr>
			<td></td><td><input type="image" src="images/submit_btn.png" id="button1"/></td>
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