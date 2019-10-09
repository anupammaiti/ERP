<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Resort</title>
<!--  <script type="text/javascript" src="js/jquery-2.0.0.js"></script>-->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/resort_styles.css"/>
<script type="text/javascript" src="js/resort_js.js"></script>
</head>
<%
 String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 //System.out.println("hi"+username);
 //System.out.println("hi"+pwd);
 if((username!=null)&&(pwd!=null))
 { %>
<body>
	<div class="project_title" > 
		<img src="images/logo_image123.jpg" alt="logo" id="logo" height="50px" width="100px"/>
		<span id="proj_title">RESORT MANAGEMENT</span>
	</div>

	<div class="main_screen" align="center">
		<div class="menu" align="left">	
			<jsp:include page="admin_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center" >
		<fieldset><legend>Allotting Finance Manager</legend>
		<form:form action="allot_customer_to_fn_manager.res" method="post" commandName="salesCustomerBean">
			<table>
			<c:forEach items="${slcustomerlist}" var="slcust" varStatus="status">
				<tr>
					<td>
						Customer Id
					</td>
					<td>
						<form:input path="custid" value="${slcust.custid}" readonly="true"/>
					</td>
				</tr>
			</c:forEach>
				<tr>
					<td>
						Department
					</td>
					<td>
						<form:input path="depart1"  value="Finance" readonly="true" id="dept2"/>
					</td>
				</tr>
				<tr>
					<td>
						Manager
					</td>
					<td>
						<form:select path="fnmanager" id="slmlist">
						</form:select>
					</td>
					<td width="150px">
						<span id="empname"></span>
					</td>
				</tr>
				<tr>
					<td>
					<input type="hidden" name="id" value="<%=request.getParameter("id")%>"/>
					</td>
					<td>
						<input type="image" src="images/allot_button.jpg" id="button1">
					</td>
				</tr>
			</table>
			</form:form>
			<b>Note</b>:Select the Department(Finance) from list, select the manager from the list.
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
