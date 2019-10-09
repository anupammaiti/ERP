<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>ERP</title>
<link rel="stylesheet" href="css/erp.css"/><script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/erpjs.js"></script>
<link rel="shortcut" href="images/logo.jpg"/> 

</head>

<body>
<center><h2>ERP </h2></center><a href="sl_admin.erp">Back</a><hr/>
<fieldset>
	<legend>Order Form Report</legend>

<table align="center">
  <tr>
    <td>Order Number </td>
    
    
  </tr>
  <c:forEach items="${orderformlist}" var="orderlist" varStatus="status">
  <tr>
    <td><c:out value="${orderlist.number}"/></td>
  </tr>
  </c:forEach>
</table>
</fieldset>
</body>
</html>
