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
<script src="js/CalendarControl.js" language="javascript"></script>
<link href="css/CalendarControl.css" rel="stylesheet" type="text/css">

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
			<fieldset><legend>Update Customer Installments</legend>
			<c:forEach items="${InstallmentList}" var="cust" varStatus="status">
			<form:form action="fn_update_installment.res" method="post" commandName="financeCustomerBean">
			<table>
				<tr>
					<td>
						Cust Id:							
					</td>
					<td>
						<form:input path="custid" value="${cust.custid}" readonly="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Total Amount
					</td>
					<td>
						<form:input path="totalamount" value="${cust.totalamount}" readonly="true"/>
					</td>
				</tr>	
				<tr>
					<td>
						Remaining Amount
					</td>
					<td>
						<form:input path="remainingamount" value="${cust.remainingamount}" readonly="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Amount Paid
					</td>
					<td>
						<form:input path="amountpaid"/>
					</td>
				</tr>
				<tr>
					<td>
						Total Installments
					</td>
					<td>
						<form:input path="totalinstallments" value="${cust.totalinstallments}" readonly="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Installments Paid
					</td>
					<td>
						<form:input path="installmentspaid" value="${cust.installmentspaid}" readonly="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Installment Date
					</td>
					<td>
						<form:input path="installment_date" onfocus="showCalendarControl(this);" value="yyyy-mm-dd" required="true"/>
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
