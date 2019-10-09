<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<img src="images/svs_logo.gif" alt="logo" id="logo"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span id="proj_title">RESORT MANAGEMENT</span>
	</div>

	<div class="main_screen" align="center">
		<div class="menu" align="left">	
			<jsp:include page="sl_director_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
			<fieldset>
				<legend>Apprisial Form By Director</legend>
				<table border="1">
					<tr class="column_header">
						<td>	
							Name 
						</td>
						<td>
							Item
						</td>
						<td>
							Apprised Value
						</td>
						<td>
							Appraisal Name
						</td>
						<td>
							Manager
						</td>
						<td>
							DeltBy
						</td>
					</tr>
					<c:forEach items="${slapprisialbydirector}" var="apprisiallist" varStatus="status">
					<tr>
					 <td>
							<c:out value="${apprisiallist.name}"/>
					</td>
					<td>
						<c:out value="${apprisiallist.item1}"/>
					</td>
					<td>
						<c:out value="${apprisiallist.apprisedvalue}"/>
					</td>
					<td>
						<c:out value="${apprisiallist.appraisalname}"/>
					</td>
					<td>
						<c:out value="${apprisiallist.manager}"></c:out>
					</td>
					<td>
						<c:out value="${apprisiallist.deltby}"/>
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
