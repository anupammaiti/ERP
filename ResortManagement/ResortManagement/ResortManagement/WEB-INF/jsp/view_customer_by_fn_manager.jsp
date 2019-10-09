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
			<jsp:include page="fn_manager_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
			<fieldset>
				<legend>View Customer List</legend><span id="successmsg">${successmsg}</span>
				<table cellspacing="0" cellspacing="0" border="1px">
					<tr class="column_header">
						<td>
							Customer Id
						</td>
						<td>
							Price	
						</td>
						<td>
							Customer Price
						</td>
						<td>
							Villa Type
						</td>
						<td>
							Installments
						</td>
						<td>
							DeltBy
						</td>
					</tr>
					<c:forEach items="${slcustbyfnmanagerlist}" var="customer" varStatus="status">
					<tr>
						<td>
							<a href="allot_executor_to_customer_by_manager.res?id=<c:out value="${customer.sno}"></c:out>"><c:out value="${customer.custid}"></c:out></a>	
							
						</td>
						<td>
						<c:out value="${customer.price}"></c:out>
						</td>
						<td>
						<c:out value="${customer.cust_price}"></c:out>
						</td>
						<td>
						<c:out value="${customer.villatype}"></c:out>
						</td>
						<td>
						<c:out value="${customer.noofinstallments}"></c:out>
						</td>
						<td>
							<c:out value="${customer.fnexecutive }"></c:out>
						</td>
					</tr>
					</c:forEach>
				</table><br/>
				<b>Note</b>:Click on the Customer ID for generate the Finance Customer.
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
