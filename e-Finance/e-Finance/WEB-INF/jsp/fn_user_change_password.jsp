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
	<div class="title_of_project"><%=comp%></div><div id="login_user"><span>Welcome to:&nbsp;&nbsp;&nbsp;&nbsp;<%=username%></span><div class="flip"><a href="logout.fin"><span id="linktext">LogOut</span></a></div>
	</div>
	</div>
	<div class="menuscreen">
	<jsp:include page="executive_header.jsp" flush="false"></jsp:include>
	</div>
	<div class="content" align="center">
	<fieldset>
		<legend>Change Password</legend>
		<form:form action="fn_user_changed_password.fin" method="post" commandName="loginBean">
			<table>
				<tr>
					<td>
						User Name
					</td>
					<td>
						<form:input path="username" value="<%=username %>" readonly="true"/>
					</td>
				</tr>
				<tr>
					<td>
					Old Password
					</td>
					<td>
						<form:password path="password" required="true"/>
					</td>
				</tr>
				<tr>
					<td>
						New Password
					</td>
					<td>
						<form:password path="newpassword" required="true" />
					</td>
				</tr>
				<tr>
					<td>
						Re-Enter Password
					</td>
					<td>
						<form:password path="repassword" required="true" />
					</td>
				</tr>
				<tr>
				<td><input type="hidden" name="login_comp" id="companyid" value="<%=comp%>"/></td>
					<td>
						<input type="image" src="images/submit_button.jpg" id="button1"/>
					</td>
				</tr>
			</table>
		</form:form>
	</fieldset>
	
	
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