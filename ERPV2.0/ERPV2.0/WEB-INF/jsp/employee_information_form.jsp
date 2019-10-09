<%@ page contentType="text/html; charset=iso-8859-1" language="java" %>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>ERP</title>
<link rel="stylesheet" href="css/erp.css"/>

<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/erpjs.js"></script>

</head>

<body>
<center>ERP</center><a href="HRAdmin.erp">Back</a><hr/>

<!-- Report Calling -->
<a href="staticjasperreport.erp">report</a>
<table border="1" cellpadding="0" cellspacing="0">
  <tr>
    <td>Empno</td>
    <td>name</td>
    <td>nameihris</td>
    <td>fathername</td>
    <td>dob</td>
    <td>sex</td>
    <td>joiningdate</td>
    <td>designation</td>
    <td>department</td>
    <td>reportingto</td>
    <td>joblevel</td>
    <td>location</td>
    <td>entrymanner</td>
    <td>nomination</td>
    <td>birthplace</td>
    <td>maritalstatus</td>
    <td>marriagedate</td>
    <td>religion</td>
    <td>pannumber</td>
    <td>passportnumber</td>
    <td>issuedateandplace</td>
    <td>validity</td>
    <td>companyname</td>
    <td>qualification</td>
  </tr>
  	<c:forEach items="${EmployeeList}" var="emplist" varStatus="status">
  <tr>
  	<td>
  		<c:out value="${emplist.empno}"/></a>
  	</td>
  	<td>
  		<c:out value="${emplist.name}"/>
  	</td>
  </tr>
  </c:forEach>
</table>


</body>
</html>
