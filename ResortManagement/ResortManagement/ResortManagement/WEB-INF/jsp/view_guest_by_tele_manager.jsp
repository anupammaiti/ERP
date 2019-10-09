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
<link rel="stylesheet" href="css/resort_styles.css"/>
</head>
<%
 String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 //System.out.println("hi"+username);
 //System.out.println("hi"+pwd);
 if(pwd!=null)
 { %>
<body>
	<div class="project_title">
		<img src="images/svs_logo.gif" alt="logo" id="logo"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span id="proj_title">RESORT MANAGEMENT</span>
	</div>

	<div class="main_screen" align="center">
		<div class="menu" align="left">	
			<jsp:include page="tele_manager_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
		<fieldset>
				<legend>New Guest Request</legend>
				<table cellpadding="3px" cellspacing="4px" border="1px">
					<tr class="column_header">
						<td>
							
							Name
						</td>
						<td>
							E Mail
						</td>
						<td>	
							Villa Type
						</td>
						<td>
							Mobile
						</td>
						<td>
							Status
						</td>
						<td>
							Alloted To
						</td>
					</tr>
						<c:forEach items="${guestbymanager}" var="guestuser" varStatus="status">
					
					<tr>
						
						<td>
							
						<a href="update_guest_by_tele_manager.res?id=<c:out value="${guestuser.guestid}"/>"><c:out value="${guestuser.guest_name}"/></a>
						</td>
						<td>
							<c:out value="${guestuser.email}"/>
						</td>
						<td>
						
							<c:out value="${guestuser.villa_type}"/>
						</td>
						<td>
							<c:out value="${guestuser.mobileno}"/>
						</td>
						<td>
							<c:out value="${guestuser.status}"/>
						</td>	
						<td>
							<c:out value="${guestuser.refered1}"/>
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