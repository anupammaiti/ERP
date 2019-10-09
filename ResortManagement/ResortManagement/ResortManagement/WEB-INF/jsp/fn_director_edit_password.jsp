<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resort</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var password=$('#nepwsd').val();
	var repassword=$('#conpswd').val();
	if(password==repassword){
		$('#nepwsd').val('');
		$('#conpswd').val('');
	}
	else{
		
	}
});
</script>
<link rel="stylesheet" href="css/resort_styles.css"/>
</head>
<%
 String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 //System.out.println("hi"+username);
 //System.out.println("hi"+pwd);
 if((username!=null)&&(pwd!=null))
 { %>
<body>
	<div class="project_title">
		<img src="images/svs_logo.gif" alt="logo" id="logo"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span id="proj_title">RESORT MANAGEMENT</span>
	</div>

	<div class="main_screen" align="center">
		<div class="menu" align="left">	
			<jsp:include page="fn_director_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
<fieldset>
	<legend>Re-enter Password</legend><span id="successmsg">${pswdchange}</span>
	<form:form action="update_fn_director_edit_password.res" method="post" commandName="loginBean">
	<table>
		<tr>
			<td>
				User Name:
			</td>
			<td>
				<%String user1=(String)session.getAttribute("username"); %>
				<form:input path="username" value="<%=user1%>" readonly="true"/>
			</td>
		</tr>
		<tr>
			<td>	
				Password:
			</td>
			<td>
				<form:password path="password" id="pswd"/>
			</td>
		</tr>
		<tr>
			<td>
				New Password:
			</td>
			<td>
				<form:password path="newpassword" id="nepwsd"/>
			</td>
		</tr>
		<tr>
			<td>
				Conform Password:
			</td>
			<td>
				<form:password path="conformpassword" id="conpswd"/>
			</td>
		</tr>
		<tr>
			<td>
			</td>
			<td>
				<!--  <input type="submit" value="Change"/>-->
				<input type="image" src="images/change_button.jpg" id="button1"/>
			</td>
		</tr>
	</table>
	</form:form>
</fieldset>
</div>
<jsp:include page="footer.jsp" flush="true"></jsp:include>
</div>
<% }
else
{
response.sendRedirect("login.res");
}%>
</body>
</html>