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
			<jsp:include page="sl_executive_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
			<fieldset>	
				<legend>Create Sales Details for Customer</legend>
				<c:forEach items="${customerlist}" var="customer" varStatus="status">
				<form:form action="sl_saved_customer.res" method="post" commandName="salesCustomerBean">
				<table  class="form_table">
					<tr>
						<td>
							Customer Id:
						</td>
						<td>
							<form:input path="custid" value="${customer.username }" readonly="true"/>
						</td>
					</tr>
					<tr>
						<td>
							Bank Name:
						</td>
						<td>
							<form:input path="bankname" value="${customer.bankname}" readonly="true"/>
						</td>
					</tr>
					<tr>
						<td>
							Bank Account:
							
						</td>
						<td>
							<form:input path="bankaccount" value="${customer.bankaccount }" readonly="true"/>
						</td>
					</tr>
					<tr>
						<td>
							Villa Type:
						</td>
						<td>
							<form:input path="villatype" value="${customer.typeofvilla }" readonly="true"/>
						</td>
					</tr>
					<tr>
						<td>
							Villa Facing:
						</td>
						<td>
							<form:input path="villafacing" value="${customer.facingofvilla }" readonly="true"/>
						</td>
					</tr>
					<tr>
						<td>
							Villa Size:
						</td>
						<td>
							<form:input path="villasize"/>
						</td>
					</tr>
					<tr>
						<td>
							Plot Size:
						</td>
						<td>
							<form:input path="platsize" value="${customer.flatinfeet}" readonly="true"/>
						</td>
					</tr>
					<tr>
						<td>
							Market Price:
						</td>
						<td>
							<form:input path="price"/>
						</td>
					</tr>
					<tr>
						<td>
							Customer Price:
						</td>
						<td>
							<form:input path="cust_price" value="${customer.pricelimit}" readonly="true"/>
						</td>
					</tr>
					<tr>
						<td>
							No of Installments
						</td>
						<td>
							<form:input path="noofinstallments"/>
						</td>
					</tr>
					<tr>
						<td>
							Department
						</td>
						<td>
							<form:input path="department" value="${customer.sldept}" readonly="true"/>
						</td>
					</tr>
					<tr>
						<td>
							Manager
						</td>
						<td>
							<form:input path="manager" value="${customer.slm_id}" readonly="true"/>
						</td>
					</tr>
					<tr>
						<td>
							DeltBy
						</td>
						<td>
							<form:input path="executive" value="${customer.sle_id}" readonly="true"/>
						</td>
					</tr>
					<tr><td></td>
						<td>
							<input type="image" src="images/submit_button.jpg" id="button1">
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