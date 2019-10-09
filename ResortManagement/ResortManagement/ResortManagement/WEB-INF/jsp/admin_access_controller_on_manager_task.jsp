<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src='js/jquery.elevatezoom.js'></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<link rel="stylesheet" href="css/resort_styles.css"/>	
<title>Resort</title>

</head>
<%
 String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 //System.out.println("hi"+username);
 //System.out.println("hi"+pwd);
 if((username!=null)&&(pwd!=null))
 { %>
<body onload="villaDetails();">
	<div class="project_title" > 
		<img src="images/svs_logo.gif" alt="logo" id="logo" height="50px" width="100px"/>
		<span id="proj_title">RESORT MANAGEMENT</span>
	</div>

	<div class="main_screen" align="center">
		<div class="menu" align="left">	
			<jsp:include page="admin_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="left" >
			<fieldset>
				<legend>
					Manager Access Controllers By Admin
				</legend>
				<table align="center" border="1" cellpadding="0" cellspacing="0">
					<tr>
						<td>
							Emp Id
						</td>
						<td>
							Status
						</td>
						<td>
							New Emp Id
						</td>
					</tr>
					<c:forEach items="${ManagerTaskByAdmin}" var="access" varStatus="status">
					<form:form action="" method="post" commandName="salesManagerTastBean">
										
					<tr>	
						<td>
							<form:input path="deltby" class="empid2" value="${access.deltby}"/>
						</td>
						<td>
							
						</td>
						<td>
							<form:select path="accessto" class="slmanagerids"></form:select>
						</td>
						<td width="80">
							<div ><a href="#" id="acess"><img src="images/clean.png" width="20" height="20" title="Click here for Grand Access"/></a></div><div ><a href="#" title="Click here for CancelAccess" id="noaccess"><img src="images/119498563188281957tasto_8_architetto_franc_01.svg.med.png"  width="20" height="20"/></a></div>
						</td>
					</tr>
					
					</form:form>
					</c:forEach>
					<tr>
						<td>
							
						</td>
					</tr>
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
