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
<h3>ERP</h3><a href="fn_main.erp">Back</a><hr/>
<fieldset>
<legend><b>Employee List</b></legend>
<table align="center">
<tr>
	<td>
		Empno
	</td>
	<td>
		Emp Name
	</td>
	<td>
		Department
	</td>
</tr>
<c:forEach items="${employeelist}" var="emplist" varStatus="status">
	<tr>
		<td>
			<a href="fn_emp_payslip.erp?empid=<c:out value="${emplist.empno}"/>"><c:out value="${emplist.empno}"/></a>
		</td>
		<td>
			<c:out value="${emplist.name }"></c:out>
		</td>
		<td>
			<c:out value="${emplist.department}"/>
		</td>
	</tr>
</c:forEach>
</table>
</fieldset>
</body>
</html>