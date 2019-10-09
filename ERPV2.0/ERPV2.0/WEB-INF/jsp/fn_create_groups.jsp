<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
<%@ page import="com.erp.util.*;" %>
    
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ERP</title>
<link rel="stylesheet" href="css/erp.css"/>

<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/erpjs.js"></script>
<script type="text/javascript" src="js/jQuery.Validate.min.js"></script>
<script type="text/javascript" src="js/erp_validations.js"></script>
<script type="text/javascript">
$(document).ready(function(){
alert('Hai');
	$.get('groups_under.erp',function(data){
		alert('Hello'+data);
		$('.groupsdata1').html(data);
	});
});
</script>


</head>
<body>
<center><h3>ERP</h3></center><a href="fn_main.erp">Back</a><hr/>
<fieldset>
	<legend>Groups</legend>
	



<form:form action="created_fn_group.res" method="post" commandName="groupDetailsBean" id="groups-form">


<table  border = "1" align="center" width= "800"  bgcolor="#FADFC3" bordercolor="#F0B269">


<tr>
<td width="392">
<font color="#573801" face="verdana" size="2">Name</font>
</td>
<td width="392">
<form:input path="name"/>

</td>
</tr>

<tr>
<td>
<font color="#573801" face="verdana" size="2">(Alias)  </font>
</td>
<td>
<form:input path="alias"/>

</td>
</tr>

<tr>
<td>
<font color="#573801" face="verdana" size="2">Under  </font>
</td>
<td>
<form:select path="under" class="groupsdata1">
</form:select>
</td>
</tr>
<tr>
<td>
<font color="#573801" face="verdana" size="2">Nature Of Group  </font>
</td>
<td>
<form:input path="natureofgroup"/>

</td>
</tr>


<tr>
<td>
<font color="#573801" face="verdana" size="2">Group behaves like a Sub-Ledger  </font>
</td>
<td>
<form:select path="grpbeh">
	<form:option value="No">No</form:option>
	<form:option value="Yes">Yes</form:option>
</form:select>

</td>
</tr>

<tr>
<td>
<font color="#573801" face="verdana" size="2">Net Debit/Credit Balances for Reporting  </font>
</td>
<td>
<form:select path="netrep">
<form:option value="No">No</form:option>
<form:option value="Yes">Yes</form:option>
</form:select>

</td>
</tr>


<tr>
<td>
<font color="#573801" face="verdana" size="2">Used for Calculation  </font>
</td>
<td>
<form:select path="usecal">
	<form:option value="No">No</form:option>
	<form:option value="Yes">Yes</form:option>
</form:select>

</td>
</tr>
<tr>
<td>
<font color="#573801" face="verdana" size="2">Method to Allocate when Used in Purchase Invoice </font>
</td>
<td>
<form:select path="metall">
	<form:option value="NotApplicable">Not Applicable</form:option>
	<form:option value="AppropriateByQty">Appropriate By Qty</form:option>
	<form:option value="AppropriateByValue">Appropriate By Value</form:option>
	<form:option value="NoAppropriatoin">No Appropriatoin</form:option>
</form:select>

</td>
</tr>
<tr><td></td>
	<td>	
		<form:button>Submit</form:button>
	</td>
</tr>
</table>
</form:form>

</fieldset>

</body>
</html>