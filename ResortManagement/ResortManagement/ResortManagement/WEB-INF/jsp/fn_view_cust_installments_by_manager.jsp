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
				   Customer's Installment List
				</legend>
				<table border="1px"> 
					<tr class="column_header">
						<td>
								Customer Id							
						</td>
						<td>
								Total Amount
						</td>
						<td>
								Amount Paid
						</td>
						<td>
								Total Installments
						</td>
						<td>
								Installments Paid 
						</td>
						<td>
								Status
						</td>
						
						<td>
							DeltBy
						</td>
					</tr>
					<c:forEach items="${fncustomer}" var="fncust" varStatus="status">
					<tr>
						<td>
							<a href="rep_customer_installments.res?id=<c:out value="${fncust.id}"></c:out>" target="_blank"><c:out value="${fncust.custid}"></c:out></a>
						</td>
						<td>
							<c:out value="${fncust.totalamount}"></c:out>
						</td>
						<td>
							<c:out value="${fncust.amountpaid}"></c:out>
						</td>
						<td>
							<c:out value="${fncust.totalinstallments }"></c:out>
						</td>
						<td>
							<c:out value="${fncust.installmentspaid}"></c:out>
						</td>
						<td>
							<c:out value="${fncust.status}"></c:out>
						</td>
						<td>
							<c:out value="${fncust.deltby}"></c:out>
						</td>
					</tr>
					</c:forEach>
				</table><br/>
				<b>Note</b>: Click on the Customer Id You will get the  Customer Installation Report.
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
