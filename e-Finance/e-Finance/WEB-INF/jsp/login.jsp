<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Finance</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<link rel="stylesheet" href="css/finance_style.css" />
</head>
<body>
	<div class="mainscreen" align="center">
		<div class="head_screen">
			<div class="logo"></div>
			<div class="title_of_project"></div>

		</div>
		<div class="content" align="left">
			<span id="successmsg">${loginerror}</span> <img
				src="images/banner_img.jpg" height="30%" width="100%" />
			<div class="left_content">
				<h2>Introduction</h2>
				<p>
					Welcome to <b><i>e-Finance</i></b> Application.
				</p>
			</div>
			<div class="right_content">
				<form:form action="loginCheckup.fin" method="POST"
					commandName="loginBean">
					<table width="300" border="0" cellspacing="0" cellpadding="0"
						class="login">
						<tr>
							<td></td>
							<td class="txtboxname">Login</td>
						</tr>
						<tr>
							<td width="117" align="right" valign="middle" class="txtboxname">UserName
							</td>
							<td width="183" align="left" style="padding-left: 5px;"><table
									width="150" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="5" align="left" valign="top"></td>

										<td><form:input path="username" id="username1" /></td>

										<td width="5" align="right" valign="top"></td>
									</tr>
								</table></td>
						</tr>
						<tr>
							<td colspan="2" height="10"></td>
						</tr>
						<tr>
							<td width="117" height="30" align="right" valign="middle"
								class="txtboxname">Password</td>
							<td width="183" align="left" style="padding-left: 5px;"><table
									width="150" border="0" cellspacing="0" cellpadding="0">

									<tr>
										<td width="5" align="left" valign="top"></td>
										<td><form:password path="password" id="password1" /></td>
										<td width="5" align="right" valign="top"></td>
									</tr>
								</table></td>
						</tr>
						<tr>
							<td height="30" colspan="2" align="right"
								style="padding-right: 30px;"><input type="image"
								src="images/login_button.png" id="button1" /></td>
						</tr>

						<tr>
							<td></td>
							<td>
								<!-- <a href="fn_create_company_registration.fin">Company Sign In</a> -->
							</td>
						</tr>
						<tr>
							<td height="20px"></td>
						</tr>
					</table>
				</form:form>
				<div>
					<a href="companyRegistration.fin">Registration</a>
				</div>
			</div>


		</div>

		<%
			session.removeAttribute("loginerror");
		%>
		<jsp:include page="footer.jsp" flush="false"></jsp:include>


	</div>

</body>
</html>