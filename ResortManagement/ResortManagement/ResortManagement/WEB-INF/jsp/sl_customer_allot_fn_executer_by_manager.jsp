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
			<jsp:include page="fn_manager_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
		<fieldset>
			<legend>
				Allotting Sales Executives To Customer
			</legend>
			<form:form action="allotted_executor_to_customer.res" method="post" commandName="salesCustomerBean">
			<c:forEach items="${slcustomerlist}" var="slcustomer" varStatus="status">
			<table>
				<tr>
					<td>
						Customer ID
					</td>
					
					<td>
						<form:input path="custid" value="${slcustomer.custid}" readonly="true"/>
					</td>
					
				</tr>
				<tr>
					<td>
						Manager
					</td>
					<td>
						<form:input path="fnmanager" value="${slcustomer.fnmanager}" readonly="true" id="manager_id"/>
					</td>
				</tr>
				<tr>
					<td>
						Executor
					</td>
					<td>
						<form:select path="fnexecutive" id="executives"></form:select>
					</td>
				</tr>
				<tr>
					<td>
						<input type="hidden" name="id" value="<%=request.getParameter("id")%>"/>
					</td>
					<td>
						<input type="image" src="images/allot_button.jpg" id="button1"/>
					</td>
				</tr>
			</table>
			</c:forEach>
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