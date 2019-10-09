<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>ERP</title>
<link rel="stylesheet" href="css/erp.css"/><script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/erpjs.js"></script>
<link rel="shortcut" href="images/logo.jpg"/> 
 
</head>

<body>
<center><h2>ERP</h2></center><a href="HRAdmin.erp">Back</a><a href="report2.erp">report</a><hr/>
<fieldset>
	<legend>Employee Requisition Report</legend>
<table align="center">
	<tr>
		<td>
			Position
		</td>
		<td>
			 Company Name
		</td>
		<td>
			Department
		</td>
		<td>
			Location
		</td>
	</tr>
	<c:forEach items="${requisitionlist}" var="requisition" varStatus="status">
	<tr>
		<td>
			<c:out value="${requisition.position}"></c:out>
		</td>
		<td>
			<c:out value="${requisition.company}"/>
		</td>
		<td>
			<c:out value="${requisition.department}"/>
		</td>
		<td>
			<c:out value="${requisition.location}"/>
		</td>
	</tr>
	</c:forEach>
</table>
	
</fieldset>
</body>
</html>
