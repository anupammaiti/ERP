<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>

<body background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
<table align="center" background="images/bg.jpg" width="800">
<tr>
<td>
<form action="purchaserequsitionsubmit.jsp" method="post">
<table align="center" border="1" bgcolor="#FADFC3" bordercolor="#F0B269" width="800">

<tr>
 <td width="120">
   <font color="#573801" size="4">Sr No.</font>
   
 </td>
 <td width="120">
  <font color="#573801" size="4">Name of Item</font>
 </td>
 <td width="90">
  <font color="#573801" size="4">ItemCode</font>
 </td>
 <td width="120">
  <font color="#573801" size="4">Internal Code</font>
 </td>
 <td width="120">
  <font color="#573801" size="4">Qty Required</font>
 </td>
 <td width="175">
 
 <font color="#573801" size="4">Remarks</font>
 </td>
</tr>
<tr>
<td>
<input type="text" name="srno" size="20">
</td>
<td>
<input type="text" name="itemname" size="20">
</td>
<td>
<input type="text" name="itemcode" size="15">
</td>
<td>
<input type="text" name="internalcode" size="20">
</td>
<td>
<input type="text" name="qtyrequired" size="20">
</td>
<td>
<textarea name="remarks"></textarea>
</td>
</tr>
<tr>
 <td>
 <input type="text" name="srno1" size="20">
 </td>
 <td>
 <input type="text" name="itemname1" size="20">
 </td>
 <td>
 <input type="text" name="itemcode1" size="15">
 </td>
 <td>
 <input type="text" name="internalcode1" size="20">
 </td>
 <td>
 <input type="text" name="qtyrequired1" size="20">
 </td>
 <td>
 <textarea name="remarks1"></textarea>
 </td>
</tr>

</table>
<table align="center">
 <tr>
 <td align="center">
  <input type="image" src="images/submit.jpg">
 </td>
 </tr>
</table>
</form>
</td>
</tr>
</table>
</body>
</html>
