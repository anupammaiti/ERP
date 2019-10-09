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
<h4 align="center"><font color="#573801" face="verdana" size="3">Sales Order Form </font></h4>
<table align="center" width="800" bgcolor="#FADFC3" bordercolor="#F0B269" border="1">
 <form action="salesordersubmit.jsp">
 <tr>
  <td>
   <table align="center" border="1" width="800" 	bordercolor="#F0B269" bgcolor="#FADFC3">
    <tr>
	 <td width="363" rowspan="3">
	  <font color="#573801" face="verdana" size="2">To&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font> 
	   <textarea name="to"></textarea>
	 </td>
	 <td width="421">
	  <font color="#573801" face="verdana" size="2">Customer#&nbsp;&nbsp;</font>
	  <input type="text" name="customer">
	 </td>
	 
	 </tr>
     <tr>
	 <td>
	   <font color="#573801" face="verdana" size="2">Terms&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font>
	   <input type="text" name="terms">
	   </td>
	 </tr>
	 <tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">SalesPerson</font>
	   <input type="text" name="salesperson">
	  </td>
	
	 </tr>
   </table>
   </td>
 </tr>
 <tr>
  <td>
   <table align="center" width="800" bordercolor="#F0B269" bgcolor="#FADFC3" border="1">
    <tr>
	 <td width="367">
	  <font color="#573801" face="verdana" size="2">Ship to</font>
	  <textarea name="shipto"></textarea>
	 </td>
	 <td width="417">
	  <font color="#573801" face="verdana" size="2">Ship WeekOf</font>
	  <input type="text" name="shipweek">
	  </td>
	</tr>
   </table>
  </td>
 </tr>
 <tr>
  <td>
   <table align="center" width="800" bordercolor="#F0B269"  bgcolor="#FADFC3" border="1">
    <tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">
	   Item
	  </font>
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">Quantity Ordered</font>
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">Description</font>
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">Unit Count</font>
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">Unit Price</font>
	</td>
	
	</tr>
	<tr>
	 <td>
	  <input type="text" name="item">
	  </td>
	  <td>
	   <input type="text" name="quantityordered">
	  </td>
	  <td>
	   <textarea name="description"></textarea>
	  </td>
	  <td>
	   <input type="text" name="unitcount">
	  </td>
	  <td>
	   <input type="text" name="unitprice">
	  </td>
	  
	</tr>
   </table>
  </td>
 </tr>
 <tr>
  <td>
   <table align="center" width="800" bordercolor="#F0B269" bgcolor="#FADFC3" border="1">
    <tr>
	 <td rowspan="3">
	  <font color="#573801" face="verdana" size="2">Special Instructions</font>
	  <p>
	   <textarea name="specilainstructions"></textarea>
	  </p>
	 </td>
	 <td rowspan="3">
	  <font color="#573801" face="verdana" size="2">Date</font>
	  <input type="text" name="date">
	 </td>
	  <td height="36">
	  <font color="#573801" face="verdana" size="2">Approval Name&nbsp;</font>
	  <input type="text" name="approvalname">
	  </td>
	</tr>
	<tr>
	<td height="34">
	 <font color="#573801" face="verdana" size="2">Purchaser Name</font>
	  <Input type="text" name="purcharsername">
	  </td>
	  
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">Title&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font>
	  <input type="text" name="title">
	 </td>
	</tr>
	<tr>
	<td colspan="3" align="center">
	  <input type="image" src="images/submit.jpg">	 </td>
	</tr>
   </table>
  </td>
 </tr>
 </form>
</table>
</body>
</html>
