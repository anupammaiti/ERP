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
			<jsp:include page="sl_manager_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
		<fieldset>
			<legend>
				Allotting Customer
			</legend>
			
			<form:form action="sl_update_allot_customer_by_manager.res" method="post" commandName="customerBean"> 
			<table>
				<c:forEach items="${customerlist}" var="customer" varStatus="status">
				<tr>
					<td>
						Customer Id
					</td>
					<td>
						<form:input path="username" value="${customer.username }" readonly="true"/>
					</td>
				</tr>
				</c:forEach>
				<tr>
					<td>
						Manager
					</td>
					<td>
						<%String user1=(String)session.getAttribute("username"); %>
						
						<form:input path="slm_id" value="<%=user1 %>" readonly="true" id="manager_id"/>
					</td>
				</tr>
				<tr>
					<td>
						Department
					</td>
					<td>
						<form:input path="sldept" id="department1"/>
					</td>
				</tr>
				<tr>
					<td>
						DeltBy
					</td>
					<td>
						
						<form:select path="sle_id" id="executives"></form:select>
					</td>
				</tr>
				
				<tr>
					<td>
					</td>
					<td>
						<input type="image" src="images/allot_button.jpg" id="button1"/>
					</td>
				</tr>
			</table>
			</form:form>
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
