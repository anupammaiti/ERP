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

<body onload="remainder();">
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
				<legend>New Guest Request</legend><span id="successmsg">${updatemsg}</span>
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
							Agent Id
						</td>
						<td>
							Driver Id
						</td>
						<td>
							Status
						</td>
						
					</tr>
						<c:forEach items="${GUBList}" var="guestuser" varStatus="status">
					
					<tr>
						
						<td>
							
						<a href="update_guest_by_tele_caller.res?id=<c:out value="${guestuser.guestid}"/>"><c:out value="${guestuser.guest_name}"/></a>
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
							<c:out value="${guestuser.agent_name}"/>
						</td>
						<td>
							<c:out value="${guestuser.driver_name}"/>
						</td>
						<td>
							<c:out value="${guestuser.status}"/>
							<input type="hidden" name="status" id="status" value="<c:out value="${guestuser.status}"/>"/>
							<input type="hidden" name="id" value="<%=request.getParameter("id")%>"/>
						</td>	
					</tr>
					</c:forEach>
				</table>
				<%String username=session.getAttribute("username").toString();%>
				<input type="hidden" name="username" id="usname" value="<%=username%>" />
			</fieldset>	
		</div>
		<%session.removeAttribute("updatemsg"); %>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>
	
</body>
</html>