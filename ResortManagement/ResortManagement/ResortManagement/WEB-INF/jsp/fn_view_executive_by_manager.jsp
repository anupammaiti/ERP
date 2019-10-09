<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resort</title>

<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>

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
		<img src="images/svs_logo.gif" alt="logo" id="logo"/>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="proj_title">RESORT MANAGEMENT</span>
	</div>
	<div class="main_screen">
		<div class="menu">
		<jsp:include page="fn_director_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
			<fieldset>
					<legend>
						Finance Executives
					</legend>
					
					<table border="1">
						<tr class="column_header">
							<td>
								Name
							</td>
							<td>
								Manager
							</td>
							<td>
								Designation
							</td>
							<td>
								Executive
							</td>
						</tr>
						<c:forEach  items="${FnExecutive}" var="executives" varStatus="status">	
						<tr>
							<td>
								<c:out value="${executives.firstname}"></c:out>
							</td>
							<td>
								<c:out value="${executives.manager}"></c:out>
							</td>
							<td>
								<c:out value="${executives.designation}"></c:out>
							</td>
							<td>
								<c:out value="${executives.username}"></c:out>
							</td>
						</tr>
						</c:forEach>
					</table>
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
