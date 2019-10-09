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
<center><h3>ERP</h3></center><a href="fn_main.erp">Back</a><hr/>
<fieldset>
	<legend>Measurment</legend>


<form:form action="sfn_inventory_measure.erp" method="post" commandName="measuresBean">

<table  border = "1" align="center" width= "800"  bgcolor="#FADFC3" bordercolor="#F0B269">


<tr>
<td width="392">
<font color="#573801" face="verdana" size="2">Type</font>
</td>
<td>
<form:select path="type">
	<form:option value="Simple">Simple</form:option>
	<form:option value="Compound">Compound</form:option>
</form:select>

</td>
</tr>

<tr>
<td>
<font color="#573801" face="verdana" size="2">Symbol  </font>
</td>
<td>
<form:input path="symbol"/>

</td>
</tr>




<tr>
<td>
<font color="#573801" face="verdana" size="2">Formal Name  </font>
</td>
<td>
<form:input path="formalname"/>

</td>
</tr>


<tr>
<td>
<font color="#573801" face="verdana" size="2">Number of Decimal Places  </font>
</td>
<td>
<form:input path="numofdec"/>

</td>
</tr>
<tr>
	<td>
	</td>
	<td>
		<input type="submit" value="Submit"/>
	</td>
</tr>


</table>
</form:form>
</fieldset>
</body>
</html>