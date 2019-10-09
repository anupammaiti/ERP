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
<center><h2>leave application report </h2></center><a href="HRAdmin.erp">Back</a><hr/>

<table align="center">
  <tr>
    <td>Name </td>
    <td>No of Leaves</td>
    <td>To Date</td>
    <td>From Date</td>
    
    
  </tr>
  <c:forEach items="${leavedetailslist}" var="leaveform" varStatus="status">
  <tr>
    <td><a href="#"><c:out value="${leaveform.name}"/> </a></td>
    <td><c:out value="${leaveform.noofleaves}"/></td>
    <td><c:out value="${leaveform.todate} "/></td>
    <td><c:out value="${leaveform.fromdate}"/></td>
    
  </tr>
  </c:forEach>
</table>

</body>
</html>
