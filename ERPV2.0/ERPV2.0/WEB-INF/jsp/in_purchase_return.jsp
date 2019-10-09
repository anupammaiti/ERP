<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/erp.css"/>

<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/erpjs.js"></script>

</head>
<body>
<fieldset>
	<legend>Purchase Return</legend>

<table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
<form:form>
 <form action="in_purchase_returns_submit.jsp">
 
 <tr> 
 <td> <font color="#573801" face="verdana" size="2">
    Date
   </font></td> 
 <td>   
 <input type="text" name="date1" value="">  </td>
 </tr>

 
 <tr>
  <td> 
  	<font color="#573801" face="verdana" size="2">
 	<font color="#573801" face="verdana" size="2">Party Name
   </font> 
  </td>
	<td>
	<input type="text" name="partyname" >
    </td>
  </tr>
  
  
  <tr>
  <td> 
  	<font color="#573801" face="verdana" size="2">
 	<font color="#573801" face="verdana" size="2">Quatation No.
   </font> 
  </td>
	<td>
	<input type="text" name="quat_no" >
    </td>
  </tr>
  
  
  <tr>
  <td> 
  	<font color="#573801" face="verdana" size="2">
 	<font color="#573801" face="verdana" size="2">Item Code
   </font> 
  </td>
	<td>
	<input type="text" name="item_code" >
    </td>
  </tr>
  
  


  <tr>
  <td> 
  <font color="#573801" face="verdana" size="2">
 <font color="#573801" face="verdana" size="2">Name of Item
   </font> 
  </td>
	<td>
	nameofitem
   
  </td>
  
  </tr>

  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Quantity
	</font>
   </td>
   <td>
    <input type="text" name="qty" id="iqty">
   </td>
  </tr>


  

 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Measurement
   </font>
  </td>
  <td >
	<input type="text" name="units" >
   
  </td>
 </tr>

 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Rate(Rupees)
   </font>
  </td>
  <td>
   <input type="text" name="rate" id="irate" onBlur="f();">
  </td>
 </tr>
  

  <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Amount
   </font>
  </td>
  <td >
   <input type="text" name="amount" id="iamount">
  </td>
 </tr>
  
  
   <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Narration
   </font>
  </td>
  <td width="392" >
   <textarea   name="narration" rows="3" cols="30"></textarea>
  </td>
 </tr>
  
  
   </form:form>
   
	
</table>
</fieldset>
</body>
</html>