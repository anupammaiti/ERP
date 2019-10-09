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
	<ceter>
	<h3>ERP</h3>
	</ceter>
	<a href="fn_main.erp">Back</a>
	<hr />
	<fieldset>
		<legend>Stock Items</legend>




		<form:form action="sfn_stok_items.erp" method="post"
			commandName="stockItemsBean">
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
					<td><font color="#573801" face="verdana" size="2">Units
					</font></td>
					<td><form:select path="units">
							<form:option value=""></form:option>
							<form:option value="NotApplicable">NotApplicable</form:option>
							<form:option value="tonn">tonn</form:option>
						</form:select></td>
				</tr>




				<tr>
					<td><font color="#573801" face="verdana" size="2">Tax
							Information (Rate of Duty) </font></td>
					<td><form:input path="rateofduty" /></td>
				</tr>

				<tr>
					<td><font color="#573801" face="verdana" size="2">Tax
							Information (Traffic Classification) </font></td>
					<td><form:input path="trafficclassification" /></td>
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