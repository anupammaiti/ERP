<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ERP</title>
<link rel="stylesheet" href="css/erp.css"/><script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/erpjs.js"></script>
<link rel="shortcut" href="images/logo.jpg"/> 

</head>
<body>

<center><h3>ERP</h3></center><a href="HRAdmin.erp">Back</a><a href="webreport.erp">report</a><hr/>
<fieldset>
	<legend>Interview Evalution Report</legend>
	<table>
	
	<tr>
		<td>
			EmpNo
		</td>
		<td>
			Employee Name
		</td>
		<td>
			Position
		</td>
	</tr>
	<c:forEach items="${InterviewEvalution}" var="interviewevalution" varStatus="status">
	<tr>
		<td>
			<c:out value="${interviewevalution.srno}"></c:out>
		</td>
		<td>
		   	<a href="#"><c:out value="${interviewevalution.candidatename}" /></a>
		</td>
		<td>
			<c:out value="${interviewevalution.position}"/>
		</td>
	</tr>
	</c:forEach>
</table>
</fieldset>

</body>
</html>