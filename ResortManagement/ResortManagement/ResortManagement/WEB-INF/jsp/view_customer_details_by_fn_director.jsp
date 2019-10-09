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
 if(pwd!=null)
 { %>
<body>
	<div class="project_title">
		<img src="images/svs_logo.gif" alt="logo" id="logo"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span id="proj_title">RESORT MANAGEMENT</span>
	</div>

	<div class="main_screen" align="center">
		<div class="menu" align="left">	
			<jsp:include page="fn_director_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
			<fieldset>
				<legend>View Customer List</legend>
				<table cellspacing="0" cellspacing="0" border="1px">
					<tr class="column_header">
						<td>
							Customer Name
						</td>
						<td>
							Mobile No
						</td>
						<td>
							Email
						</td>
						<td>
							Villa Type
						</td>
						<td>
							Price
						</td>
						<td>
							Facing Villa
						</td>
						<td>
							Plot Area
						</td>
						<td>
							Location
						</td>
						<td>
							Bank Name 
						</td>
						<td>
							Bank Account
						</td>
					</tr>
					<c:forEach items="${customerlist}" var="customer" varStatus="status">
					<tr>
						<td>
							<c:set var="name" value="${customer.customer_first_name}${customer.customer_last_name}"></c:set>
							<c:out value="${name}"></c:out>
						</td>
						<td>
							<a href="rep_customerbyid.res?id=<c:out value="${customer.sno}" ></c:out>" target="_blank" title="Click here to see Reports"><c:out value="${customer.mobileno}"></c:out></a>
						</td>
						<td>
							<c:out value="${customer.email}"></c:out>
						</td>
						<td>
							<c:out value="${customer.typeofvilla}"></c:out>
						</td>
						<td>
							<c:out value="${customer.pricelimit}"></c:out>
						</td>
						<td>
							<c:out value="${customer.facingofvilla}"></c:out>
						</td>
						<td>
							<c:out value="${customer.flatinfeet }"></c:out>
						</td>
						<td>
							<c:out value="${customer.location }"></c:out>
						</td>
						<td>
							<c:out value="${customer.bankname}"></c:out>
						</td>
						<td>
							<c:out value="${customer.bankaccount}"></c:out>
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
