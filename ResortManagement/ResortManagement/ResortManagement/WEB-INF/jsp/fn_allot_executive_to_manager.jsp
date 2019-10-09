<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
				Finance Executive List
			</legend>
			<table cellpadding="0" cellspacing="0" border="1px">
				<tr class="column_header">
					<td>
						Name
					</td>
					<td>
						Designation
					</td>
					<td>
						Manager
					</td>
					<td>
						Status
					</td>
				</tr>
				<c:forEach items="${FnExcutive}" var="fnexecutives" varStatus="status">
					<tr>
						<td>
							<c:set var="name" value="${fnexecutives.firstname} ${fnexecutives.lastname}"></c:set>
							<c:out value="${name}"></c:out>
						</td>
						<td>
							<a href="fn_executive_by_id.res?id=<c:out value="${fnexecutives.empno}"></c:out>"><c:out value="${fnexecutives.designation}"/></a>
						</td>
						<td>
							<c:out value="${fnexecutives.manager}"></c:out>
						</td>
						<td>
							<c:out value="${fnexecutives.status}"></c:out>
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