<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

	<center>
		<h3>ERP</h3>
	</center>
	<a href="fn_main.erp">Back</a>
	<hr />
	<fieldset>
		<legend>Stock Group</legend>
		<form:form action="sfn_create_stockgroup.erp" method="post" commandName="stockGroupBean">
			<table border="1" align="center" width="800" bgcolor="#FADFC3"
				bordercolor="#F0B269">
				<tr>
					<td width="392"><font color="#573801" face="verdana" size="2">Name</font>
					</td>
					<td width="392"><form:input path="name" /></td>
				</tr>

				<tr>
					<td><font color="#573801" face="verdana" size="2">(Alias)
					</font></td>
					<td><form:input path="alias" /></td>
				</tr>

				<tr>
					<td><font color="#573801" face="verdana" size="2">Under
					</font></td>
					<td><form:select path="under">
							<form:option value=""></form:option>
							<form:option value="Primary">Primary</form:option>
						</form:select></td>
				</tr>







				<tr>
					<td><font color="#573801" face="verdana" size="2">Can
							Quantity of Items Be Added </font></td>
					<td><form:select path="qtyadd">
							<form:option value="No">No</form:option>
							<form:option value="Yes">Yes</form:option>
						</form:select></td>
				</tr>
				<tr>
					<td></td>
					<td><form:button>Submit</form:button></td>
				</tr>




			</table>
		</form:form>
	</fieldset>
</body>
</html>