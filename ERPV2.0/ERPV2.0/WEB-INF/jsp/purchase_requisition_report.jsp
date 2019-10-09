<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ERP</title>
<link rel="stylesheet" href="css/erp.css"/>

<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/erpjs.js"></script>

</head>
<body>
<center><h3>ERP</h3></center><hr/>

<fieldset>
	<legend>Puchase Requisition Report</legend>
	<table align="center">
		<tr>
			<td>
				Item Name
			</td>
			<td>
				Item Code	
			</td>
		</tr>
			<c:forEach var="p" items="${purList}" varStatus="status">
		<tr>
			<td>
				<c:out value="${p.itemname}"/>
				
			</td>
			<td>
			
			</td>
		</tr>
	</c:forEach>
	</table>
</fieldset>

  
</body>
</html>