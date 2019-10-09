<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*"%>
<%@ page import="com.erp.util.*;" %>

<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	$.get('vocher_under.erp',function(data){
		alert('Hello'+data);
		$('#vochertypedata').html(data);
	});
});
</script>

</head>
<body>
<center>ERP</center><a href="fn_main.erp">Back</a><hr/>
<fieldset>
	<legend>Vocher</legend>
<form:form action="sfn_create_vocher.erp" method="post" commandName="vocherDetailsBean" id="vocher-form">
<table align="center" width="800" bgcolor="#FADFC3" bordercolor="#F0B269" border=1>

 
 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
     Name
   </font>
   </td>
   <td width="392">
   <form:input path="name"/>
    
    </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Type of Voucher
   </font>
  </td>
  
  <td>
  <font color="#573801" face="verdana" size="2">
   
	<form:select path="typeofvocher" id="vochertypedata">
	 	
	</form:select>
  </font>
  </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Abbr
   </font>
  </td>
  
  <td>
  <font color="#573801" face="verdana" size="2">
   <form:input path="abbr"/>
   
  </font>
  </td>
 </tr>

 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Method Of  Voucher Numbering 
    </font>
  </td>
  <td>
   <form:select path="vochernumbering">
   <form:option value="Automatic">Automatic</form:option>
   <form:option value="Manual">Manual</form:option>
   <form:option value="None">None</form:option>
   </form:select>
   
  
  </td>
  
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Use Advanced Configuration
   </font>
  </td>
  <td>
   <form:input path="advconfiguration" value="No"/>
   
  </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Use Effective Dates
   </font>
  </td>
  <td>
  <form:input path="useeffectivedates" value="No"/>
   
  </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Use common Narration
   </font>
   </td>
   <td>
   <form:input path="usecommonnarration" value="Yes"/>
    
   </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Narrations for Each Entry
   </font>
  </td>
   <td>
   <form:input path="narrationsforeachentry" value="No"/>
   
  </td>
  </tr>
  <tr>
  <td>
  <font color="#573801" face="verdana" size="2">
   Name of Class
  </font>
   </td>
   <td>
   <form:input path="nameofclass" value="None"/>
    
   </td>
 </tr>
 <tr>
  <td colspan="2" align="center">
   <form:button>Submit</form:button>
   
  </td>
 </tr>
 
</table>
</form:form>
</fieldset>
</body>
</html>