<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<center><h3>ERP</h3></center><a href="HRAdmin.erp">Back</a><hr/>
<fieldset><legend>Search</legend>
			<form action="hr_search1.erp" method="get">
        	
		<table border=1 align="center">
		<tr>
			<td>StartDate
				<input type="text" name="fromdate"/>
			</td>
			<td>EndDate
				<input type="text" name="todate"/>
			</td>
			<td>
				<input type="submit" value="Search"/>
			</td>
		</tr>
		</table>
	</form>
	
	<br/>
	<br/>
	<form:form action="hr_search2.erp" method="get" commandName="employeeBean">
	<table border=1 align="center">
		<tr>
		<td>
			Gender
				<form:select path="sex">
					<form:option value="Male">Male</form:option>
					<form:option value="Female">Female</form:option>
				</form:select> 
				
		</td>
		<td>
			Qualification
				<form:select path="qualification">
					<form:option value="Doctarate">Doctarate</form:option>
					<form:option value="Proffessionals">Proffessionals</form:option>
					<form:option value="PostGraduates">PostGraduates</form:option>
					<form:option value="Technical">Technical</form:option>
					<form:option value="Graduates">Graduates</form:option>
					<form:option value="UnderGraduates">UnderGraduates</form:option>
				</form:select>
			</td>
			<td>
				<input type="submit" value="Search"/>
			</td>
		</tr>
	</table>	
	</form:form>
	
</fieldset>
</body>
</html>