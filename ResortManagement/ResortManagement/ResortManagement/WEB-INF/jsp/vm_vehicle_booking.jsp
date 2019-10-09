<%@ page language="java" contentType="text/html; accept-charset=utf-8 "
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; accept-charset=utf-8 ">
<title>Resort</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<script type="text/javascript" src="js/form_validation.js"></script>
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
			<jsp:include page="admin_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
			<fieldset>
				<legend>Vehicle Details </legend>
					<span id="successmsg">${successmsg}</span>
				<table cellpadding="0" cellspacing="0" border="1px">
					<tr class="column_header">
						<td>
							Vehicle No
						</td>
						<td>
							Vehicle Name
						</td>
						<td>
							Vehicle Model
						</td>
						<td>
							Vehicle Type
						</td>
						
					</tr>
					<c:forEach items="${VehicleList}" var="vehlist" varStatus="status">
					<tr>
						<td>
							<a href="vehicle_booking.res?vehno=<c:out value="${vehlist.vehicle_no}"></c:out>" title="Click here for Vehicle Booking"><c:out value="${vehlist.vehicle_no}"></c:out></a>
						</td>
						<td>
							<c:out value="${vehlist.company_name}"></c:out> 
						</td>
						<td>
							<c:out value="${vehlist.vehicle_model }"></c:out>
						</td>
						<td>
							<c:out value="${vehlist.vehicle_type}"></c:out>
						</td>
					</tr>
					</c:forEach>
				</table><br/>
				Note: Click on the Vehicle No, you can allot the agent.
			</fieldset>
		</div>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>	
	<%session.removeAttribute("successmsg"); %>
	<% }
else
{
response.sendRedirect("login.res");
}%>
</body>
</html>
		