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

<link rel="stylesheet" href="css/resort_styles.css"/>
</head>
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
				Today's Call
			</legend>
			<table border="1px" cellpadding="2px" cellspacing="6px">
				<tr  class="column_header">
					<td>
						Guest Name:
					</td>
					<td>
						First Call:
					</td>
					<td>
						Second Call:
					</td>
					<td>
						Third Call:
					</td>
				</tr>
				<c:forEach items="${RequestCallerList}" var="guestforcall" varStatus="status">
				
				<tr>
					<td>
						<a href="update_request_call.res?id=<c:out value="${guestforcall.guestid}"/>"><c:out value="${guestforcall.guest_name}"></c:out></a>
					</td>
					<td>
						<c:out value="${guestforcall.reqforcall}"></c:out>
					</td>
					<td>
						<c:out value="${guestforcall.requestforcall2}"></c:out>
					</td>
					<td>
						<c:out value="${guestforcall.requestforcall3}"></c:out>
					</td>
				</tr>
				</c:forEach>
			</table>
		</fieldset>
		</div>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>	
</body>
</html>
