<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>


<% 
boolean admin_check = false;
boolean fn_check = false;
if(session.getAttribute("user_name").toString().equals("admin_account") & "admin_account".equals(session.getAttribute("pwd").toString()) )
{
	admin_check = true;
}
else if(session.getAttribute("user_name").toString().equals("fn_account") & "fn_account".equals(session.getAttribute("pwd").toString()) )
{
	fn_check = true;
}
%>

<%
if(admin_check || fn_check)
{

 %>


<body background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
  <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td background="images/after_main.jpg" height="41" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome To Finance Department</font>      </strong>    	</td>
  </tr>
</table>

<p>&nbsp;</p>

<table>
<% if(admin_check){ %>
<form action="kvk_finance_main.jsp" method="post">
<% } %>

<% if(fn_check){ %>
<form action="account_operator.jsp" method="post">
<% } %>

<tr>
<td width="300"/>

<td>
<input align ="left" type="image" src="images/home.jpg"/>
</form>
</td>

<form action="accounting_inf_main.jsp" method="post">

<td width="600"/>

<td>
<input align ="right" type="image" src="images/back.jpg"/>
</form>
</td>

</tr>
</table>

<table align="center"    >
<tr>
 <td ><strong> <font   face = "verdana" size = "3" color="#573801">Ledgers Information </font></strong>
</td>
</tr>
</table>

<table height="50" cellspacing="0" cellpadding="0" >
<tr>
<td></td>
</tr>
</table>

<table align="center">

<form action="fn_ledger_create.jsp" method="post">
<tr>
<td >
<input type="submit" name="group" value="       Create Ledger           " />
</td>
</tr>
</form>
<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>


<form action="fn_ledger_alter_or_display1.jsp" method="post">
<tr>
<td >
<input type="submit" name="group" value="Alter Or Display Ledger" />
</td>
</tr>
</form>

</table>

<% } %>


</body>
</html>