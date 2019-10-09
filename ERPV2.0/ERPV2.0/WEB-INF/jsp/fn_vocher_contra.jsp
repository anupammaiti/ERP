<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*"%>
<%@ page import="com.erp.util.*;" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
		alert('Hello');
		$.ajax({
			url:'account_recive.erp',
			success:function(data){
				$('#account').html(data);
			}
		});
		return true;	
	});
$(document).ready(function(){
	alert('Hai');
	$.get('second_account_recive.erp',function(data){
		$('#account1').html(data);
	});
});
	

	
</script>

</head>
<body>
<center><h3>ERP</h3></center><a href="fn_main.erp">Back</a><hr/>
<fieldset>
	<legend>Vocher Contra</legend>

<form:form action="sfn_vocher_contra.erp" method="post" commandName="vocherContraBean">
<table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Receipt No.
   </font>
  </td>
  <td width="392">
<form:input path="reciptno" id="contrareciptno"/>
  </td>
 </tr>
 <tr> 
 <td><font color="#573801" face="verdana" size="2">
    Date
   </font></td> 
 <td>   
 <form:input path="date"  id="gendate1"/>
</td> 
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    TO Account
   </font>
   </td>
   <td>
	<form:select path="under" id="account">
	</form:select>   
   </td>
 </tr>
<tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Current Balance
   </font>
  </td>
  <td width="392">
   <form:input path="currentbalance" readonly="true" id="balance"/>
  </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
   From Account
   </font>
  </td>
  <td>
<form:select path="particular" id="account1">
</form:select>
  </td>
  </tr>
  <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Current Balance
   </font>
  </td>
  <td width="392">
 <form:input path="currentbalance" readonly="true" id="balance1"/>
  </td>
 </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Amount
	</font>
   </td>
   <td>
   <form:input path="ammount" />
   </td>
  </tr>
   <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Narration
   </font>
  </td>
  <td width="392" >
  <form:textarea path="narration"/>
  </td>
 </tr>
<tr>
	<td>
	</td>
	<td>
		<input type="Submit" value="Submit"/>
	</td>
</tr>  
</table>
</form:form>
</fieldset>
</body>
</html>