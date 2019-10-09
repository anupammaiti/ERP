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
    <td background="images/after_main.jpg" height="45" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome To Inventery Department</font></strong>      <!--<img src="images/after_main.jpg">-->
	
	 
	</td>
  </tr>
</table>
<h4 align="center"><font color="#573801" face="verdana" size="3"> Out Of Stock Notice</font></h4>
<table align="center" width="800" bordercolor="#F0B269" bgcolor="#FADFC3" border="1">
<form action="outofstocknoticesubmit.jsp">
 <tr>
  <td>
   <table align="center" bgcolor="#FADFC3" border="1" bordercolor="#F0B269" width="800">
   
    <tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">Order No#</font>
	 </td>
	 <td>
	  <input type="text" name="ordeno">
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">Date</font>
	 </td>
	 <td>
	  <input type="text" name="date">
	 </td>
	 </tr>
	 <tr>
	  <td>
	    <font color="#573801" face="verdana" size="2">Customer</font>
	   </td>
	   <td>
	    <input type="text" name="customer">
	   </td>
	   <td>
	    <font color="#573801" face="verdana" size="2">Phone</font>
	   </td>
	   <td>
	    <input type="text" name="phone">
	   </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">Address</font>
	  </td>
      <td>
	   <input type="text" name="address">
	  </td>
      <td>
	    <font color="#573801" face="verdana" size="2">City</font>
	   </td>
	   <td>
	    <input type="text" name="city">
	   </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">State</font>
	  </td>
	  <td>
	   <input type="text" name="state">
	  </td>
	  <td>
	   <font color="#573801" face="verdana" size="2">Zip</font>
	  </td>
	  <td>
	   <input type="text" name="zip">
	   </td>
	 </tr>
	 
	 
   </table> 

  
  </td>
 </tr>
 <tr>
  <td>
   <table align="center" width="800"bordercolor="#F0B269" bgcolor="#FADFC3" border="1">
    <tr>
	 <td width="259">
	  <font color="#573801" face="verdana" size="2">Qty</font>
	 </td>
	 <td width="259">
	  <font color="#573801" face="verdana" size="2">Item/Description</font>
	 </td>
	 <td width="260">
	  <font color="#573801" face="verdana" size="2">Estimated Shipping Date</font>
 	 </td>
	</tr>
	<tr>
	 <td>
	  <input type="text" name="qty1">
	 </td>
	 <td>
	  <input type="text" name="item1">
	  
	 </td>
     <td>
	  <input type="text" name="estimatedshippingdate1">
	 </td>
	</tr>
	<tr>
	 <td>
	  <input type="text" name="qty2">
	 </td>
	 <td>
	  <input type="text" name="item2">
	  
	 </td>
     <td>
	  <input type="text" name="estimatedshippingdate2">
	 </td>
	</tr>
 <tr>
	 <td>
	  <input type="text" name="qty3">
	 </td>
	 <td>
	  <input type="text" name="item3">
	  
	 </td>
     <td>
	  <input type="text" name="estimatedshippingdate3">
	 </td>
	</tr>
    <tr>
	 <td>
	  <input type="text" name="qty4">
	 </td>
	 <td>
	  <input type="text" name="item4">
	  
	 </td>
     <td>
	  <input type="text" name="estimatedshippingdate4">
	 </td>
	</tr>
 
   </table>
  </td>
 </tr>
 <tr>
  <td align="center">
   <font color="#573801" face="verdana" size="2">We cannot fill your order at this time.<br>The items listed above are temporarily out of stock.
We apologize for the inconvenience.</font>
  </td>
 </tr>
 <tr>
  <td align="center">
   <input type="image" src="images/submit.jpg">
  </td>
 </tr>
 </form>
</table>
</body>
</html>
