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
<link href="css/CalendarControl.css" rel="stylesheet" type="text/css">
<script src="js/CalendarControl.js" language="javascript"></script>
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
			<jsp:include page="fn_executive_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
			<fieldset>
				<legend>
					Create Customer 
				</legend>
				<form:form action="save_fn_customer.res" method="post" commandName="financeCustomerBean">
				<c:forEach items="${slcustomer}" var="slcust" varStatus="status">
				<table>
					<tr>
						<td>
							Customer Id
						</td>
						<td>
							<form:input path="custid" value="${slcust.custid}" readonly="true" id="custid"/>
						</td>
					</tr>
					<tr>
						<td>
							Total Amount
						</td>
						<td>
							<form:input path="totalamount" value="${slcust.price}" readonly="true" id="totalam1"/>
						</td>
					</tr>
				
				
					<tr>
						<td>
							Total Installments
						</td>
						<td>
							<form:input path="totalinstallments" value="${slcust.noofinstallments }" readonly="true" id="totalinst"/>
						</td>
					</tr>
					
					<tr>
						<td>	
							Department
						</td>
						<td>
						<form:input path="department" value="${slcust.depart1}" readonly="true" />	
						</td>
					</tr>
					<tr>
						<td>
							Manager
						</td>
						<td>
						<form:input path="manager" value="${slcust.fnmanager }" readonly="true"/>	
						</td>
					</tr>
					<tr>
						<td>
							DeltBy
						</td>
						<td>
							<form:input path="deltby" value="${slcust.fnexecutive}" readonly="true"/>
						</td>
					</tr>
					<tr>
						<td>
							 
						</td>
						<td>
							<input type="image" src="images/submit_button.jpg" id="button1"/>
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