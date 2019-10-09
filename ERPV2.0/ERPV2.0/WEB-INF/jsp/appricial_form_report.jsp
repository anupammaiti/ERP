 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ERP</title>
<link rel="stylesheet" href="css/erp.css"/><script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/erpjs.js"></script>
</head>
<body>
<h3>Inventory Report</h3><a href="in_admin_main.erp">Back</a><hr/>
<fieldset>
<legend class="text1"><b>Stock Details Report</b></legend>
<table>
<tr>
	<td>
		Department
	</td>
</tr>
<c:forEach items="${AppricialFormList}" var="appricialformlist" varStatus="status">
	<tr>
		<td>
			<c:out value="${appricialformlist.item1}"/>
		</td>
	</tr>
</c:forEach>
</table>
</fieldset>
</body>
</html>