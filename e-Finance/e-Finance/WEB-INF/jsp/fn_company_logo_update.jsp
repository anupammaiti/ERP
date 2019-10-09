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
			Company Logo Update
		</legend>
		
		<table align="center">
		<form:form action="fn_comp_logo_updated.fin" method="post" commandName="companyRegistrationBean">
			<tr>
				<td>	
					Logo
				</td>
				<td>
					<img alt="Logo" class="logo_image"/>
				</td>
			</tr>
			<tr>
				<td>
					Company Name
				</td>
				<td>
					<form:input path="companyname" value="<%=comp%>"/>
				</td>
			</tr>
			
			
			<tr>
				<td>
					Image Name
				</td>
				<td>
				
					<form:input path="logoname" value="${imagename}"/>
				</td>
			</tr>
			</form:form>
			<form action="fn_comp_logo_updated.fin" method="post" enctype="multipart/form-data">
			<tr>
				<td>
					Update Logo
				</td>
				<td>
					<input type="file" name="logo"/> 
				</td>
			</tr>
			<tr>
				<td>
					
				</td>
				<td>
					<input type="image" src="images/update_button.jpg" id="button1"/>
				</td>
			</tr>
			</form>
		</table>
		
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