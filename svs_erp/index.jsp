<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style></head>

<body bgcolor="#F1B672" background="images/bg.jpg">
<% session.removeAttribute("user_name");
	session.removeAttribute("pwd");
 %>

<table width="800"  align="center" cellpadding="0" cellspacing="0" border="1" bordercolor="#C58941">
  <tr>
    <th scope="col"><img src="images/banner.jpg"></th>
  </tr>
  <tr>
    <td height="148"><img src="images/main.jpg"></td>
  </tr>
  
</table>
<table border="0" cellspacing="0" align="center" cellpadding="0" >
  <tr>
    <td><img src="images/after_main1.jpg"></td>
  </tr>
</table>
<table border="0" cellspacing="0" cellpadding="0" align="center" >
  <tr>
    <td width="174"><table border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/finance.jpg"></td>
  </tr>
  <tr>
    <td><img src="images/project-management.jpg"></td>
  </tr>
  <tr>
    <td><img src="images/inventory.jpg"></td>
  </tr>
  <tr>
    <td><img src="images/sales.jpg"></td>
  </tr>
  <tr>
    <td><img src="images/maintenance.jpg"></td>
  </tr>
 <!-- <tr>
    <td><img src="images/power.jpg"></td>
  </tr>-->
  <tr>
    <td><img src="images/human-resources.jpg"></td>
  </tr>
</table>
</td>
    <td width="431" background="images/inner_table_bg.jpg">
	<table border="0" cellspacing="0" cellpadding="0" align="center">
	<form action="specific.jsp" method="post">
	<tr>
	<td height="33" colspan="2" background="images/bg.jpg">&nbsp;</td>
	</tr>
  <tr>
    <td><img src="images/login.jpg"></td>
    <td><input type="text" name="username"></td>
  </tr>
  <tr>
    <td><img src="images/password.jpg"></td>
    <td><input type="password" name="password"></td>
  </tr>
  <tr>
    <td height="33" colspan="2" background="images/bg.jpg"><div align="center">
      <input type="image" src="images/submit.jpg">
    </div></td>
    </tr>
  </form>
</table>
</td>
    <td width="195" background="images/bg.jpg"><table border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="260"><img src="images/create_user_link1.jpg"></td>
  </tr>
  <tr>
    <td><img src="images/create_user_link2.jpg"></td>
  </tr>
</table>
</td>
  </tr>
  
</table>
<!--<table width="801" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="801" align="center"><img src="images/inner_table_bottom.jpg" width="801"></td>
  </tr>
</table>-->

<table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="174">&nbsp;</td>
    <td width="437"><img src="images/inner_table_bottom.jpg" width="435" height="21"></td>
    <td width="189">&nbsp;</td>
  </tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
