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
<script type="text/javascript" src="js/form_validation.js"></script>
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
			<jsp:include page="admin_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
		<fieldset>
			<legend>Vehicle Maintenance</legend>
			<table border="1px" cellpadding="0" cellspacing="0"> 
				<tr class="column_header">
					<td>
						VehNo
					</td>
					<td>
						Company Name
					</td>
					<td>	
						Model No
					</td>
					<td>
						Vehicle Type
					</td>
					<td>
						Given Date
					</td>
					<td>
						Delivery Date
					</td>
					<td>
						Spare Parts
					</td>
					<td>
						Spare PartsAmount
					</td>
					<td>
						Service Amount
					</td>
					<td>
						Total Amount
					</td>
					<td>
						Shop Name
					</td>
					<td>
						Land Line
					</td>
					<td>
						Mobile No
					</td>
				</tr>
			<c:forEach items="${VHManList}" var="vmmain" varStatus="status">
			<tr>
				<td>
					<c:out value="${vmmain.vehno}"></c:out>
				</td>
				<td>
					<c:out value="${vmmain.companyname}"></c:out>
				</td>
				<td>
					<c:out value="${vmmain.modelno}"></c:out>
				</td>
				<td>
					<c:out value="${vmmain.vehicletype}"></c:out>
				</td>
				<td>
					<c:out value="${vmmain.service_givendate}"></c:out>
				</td>
				<td>
					<c:out value="${vmmain.service_deliverydate}"></c:out>
				</td>
				<td>
					<c:out value="${vmmain.spare_parts}"></c:out>
				</td>
				<td>
					<c:out value="${vmmain.amount}"></c:out>
				</td>
				<td>
					<c:out value="${vmmain.serviceamount}"></c:out>
				</td>
				<td>
					<c:out value="${vmmain.totalamount}"></c:out>
				</td>
				<td>
					<c:out value="${vmmain.service_compname}"></c:out>
				</td>
				<td>
					<c:out value="${vmmain.service_phoneno}"></c:out>
				</td>
				<td>
					<c:out value="${vmmain.service_mobileno}"></c:out>
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
		