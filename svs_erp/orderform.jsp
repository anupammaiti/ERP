<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>

<body background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="804" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
  <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td background="images/after_main.jpg" height="41" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome To Sales Department</font>      <font size="3" face="verdana">
      <!--<img src="images/after_main.jpg">-->
    </font></strong>    	</td>
  </tr>
</table>
<h4 align="center"><font color="#573801" face="verdana" size="3">Order Form </font></h4>
<form action="orderformsubmit.jsp">
<table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
 <tr>
  <td>
   <table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
    <tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Number</font>
	   </strong></td>
	 <td>
	 <input type="text" name="number">
    </td>
	</tr>
    <tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Date</font>
	   </strong></td>
	 <td>
	  <input type="text" name="date">
	 </td>
	</tr>
	<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Sales Person</font>
	   </strong></td>
	  <td>
	  <input type="text" name="salesperson">
	  </td> 
	 </tr>
   </table>
   </td>
 </tr>
 <tr>
  <td>
   <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3" width="800">
    <tr>
	 <td>
	  <font color="#573801" face="verdana" size="2"><strong>Sold To</strong></font>
	  <input type="text" name="solodto">
	  </td>
	  <td>
	   <font color="#573801" face="verdana" size="2"><strong>Ship To</strong></font>
	   <input type="text" name="shipto">
	  </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2"> <strong>Phone</strong>&nbsp;&nbsp; </font>
	  <input type="text" name="phone">
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2"><strong>Ship By</strong></font>
	  <input type="text" name="shipby">
 	 </td>
	 </tr>
   </table>
     </td>
 </tr>
 <tr>
  <td>
  <table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
   <tr>
    <td>
	  <strong><font color="" face="verdana" size="2">
	  Quantity
	  </font>
	  </strong></td>
	<td>
	  <strong><font color="#573801" face="verdana" size="2">
	  Item/Description
	  </font>
	  </strong></td>
	<td>
	  <strong><font color="#573801" face="verdana" size="2">
	  Price/Item
	  </font>
	  </strong></td>
	 
   </tr>
   <tr>
    <td height="30">
	 <input type="text" name="qunatity1">
	 </td>
	 <td>
	  <input type="text" name="itemdesc1">
	 </td>
	 <td>
	  <input type="text" name="price1">
	 </td>
	
    </tr>
     <tr>
	  <td>
	   <input type="text" name="quantity2">
	  </td>
	  <td>
	   <input type="text" name="itemedesc2">
	   </td>
	   <td>
	    <input type="text" name="price2">
	   </td>
	   
	 </tr>
	 <tr>
	  <td>
	   <input type="text" name="quantity3">
	  </td>
	  <td>
	   <input type="text" name="itemedesc3">
	   </td>
	   <td>
	    <input type="text" name="price3">
	   </td>
	   
	 </tr>
	 <tr>
	  <td>
	   <input type="text" name="quantity4">
	  </td>
	  <td>
	   <input type="text" name="itemedesc4">
	   </td>
	   <td>
	    <input type="text" name="price4">
	   </td>
	   
	 </tr>
	 <tr>
	  <td>
	   <input type="text" name="quantity5">
	  </td>
	  <td>
	   <input type="text" name="itemedesc5">
	   </td>
	   <td>
	    <input type="text" name="price5">
	   </td>
	   
	 </tr>
	 <td colspan="4" align="center">	   <input type="image" src="images/submit.jpg"></td>
	 </table>
  </td>
  </tr>
</table>
</form>
</body>
</html>
