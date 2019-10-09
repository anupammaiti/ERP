<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ERP</title>
<link rel="stylesheet" href="css/erp.css"/>
<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/erpjs.js"></script> 
</head>
<body>
<center><h3>ERP</h3><a href="fn_main.erp">Back</a><hr/></center>
	<fieldset>
		<legend>Groups Data</legend>
		<table>
			<tr>
				<td>
					VName
				</td>
				<td>
					Alias
				</td>
				<td>
					Under
				</td>
			</tr>
			<c:forEach items="${StockGroupList}" var="stockgroups" varStatus="status">
			<tr>
				<td>
					<a href="#" title="Edit Ledger Data"><c:out value="${stockgroups.name}"/></a>
				</td>
				<td>
					<c:out value="${stockgroups.alias}"/>
				</td>
				<td>
					<c:out value="${stockgroups.under}"></c:out>
				</td>
			</tr>
			</c:forEach>
		</table>
	</fieldset>
</body>
</html>