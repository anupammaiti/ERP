<%@ page language="java" contentType="text/html; accept-charset=utf-8 "
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; accept-charset=utf-8">
<title>Resort</title>

<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/form_validation.js"></script>
<link rel="stylesheet" href="css/resort_styles.css"/>
<script type="text/javascript" src="js/resort_js.js"></script>
<link href="css/CalendarControl.css" rel="stylesheet" type="text/css">
<script src="js/CalendarControl.js" language="javascript"></script>
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
			<jsp:include page="header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
			<fieldset>
				<legend>
					Update Req for Call
				</legend>
				<c:forEach items="${UpdateRequestCall}" var="guestreqcall" varStatus="status">
				<form:form action="updated_request_call.res" method="post" commandName="guestUserBean"> 
				<table>
					<tr>
						<td>
							Guest Name:
						</td>
						<td>
							<form:input path="guest_name" value="${guestreqcall.guest_name}"/>
						</td>
					</tr>
					<tr>
						<td>
							1<sup>st</sup> Request Call:
						</td>
						<td>
							<form:input path="reqforcall" value="${guestreqcall.reqforcall}" readonly="true"/>
						</td>
					</tr>
					<tr>
						<td>
							2<sup>nd</sup> Request Call:
						</td>
						<td>
							<form:input path="requestforcall2" value="${guestreqcall.requestforcall2}" onfocus="showCalendarControl(this);" readonly="true"/>
						</td>
					</tr>
					<tr>
						<td>
							3<sup>rd</sup>Request Call:
						</td>
						<td>
							<form:input path="requestforcall3" value="${guestreqcall.requestforcall3}" onfocus="showCalendarControl(this);" readonly="true"/>
						</td>
					</tr>
						
					<tr>
						<td>
						<%String id=request.getParameter("id");%>
						<input type="hidden" name="id" value="<%=id%>"/> 
						</td>
						<td>
							<input type="image" src="images/update_button.jpg"/> 
						</td>
					</tr>
				</table>
				</form:form>
				</c:forEach>
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