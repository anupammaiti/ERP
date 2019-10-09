<!-- Strip whitespace -->
<%@ page import="java.util.*"%>
<%@ page import="java.util.Vector.*"%>
<%@ page import="java.sql.*"%>

<% Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
   %>
<HTML>
 <HEAD>
 <title>SVS</title>
  
 </HEAD>

 <BODY background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
 

 <table width="800"  border = "0" cellspacing = "0" cellpadding = "0" align ="center">
 <tr>
 <td>
	<img src = "images/banner.jpg" width = "800">
 </td>
 </tr>
 </table>

 

 

 <table width = "800" border = "0" cellspacing = "0" cellpadding = "0" align = "center">
 <tr>
 <td background = "images/after_main.jpg" height = "41" align = "center" >
	<strong> <font color = "#573801" size = "3" face = "verdana"> Welcome To Finance Department</font></strong>
 </td>
 </tr>
 </table>


<table >
<tr> <td ></td></tr><tr> <td></td></tr>
 <tr> <td ></td> <td ></td> <td ></td> <td ></td><td ></td><td ></td><td ></td><td ></td><td ></td><td ></td><td ></td><td ></td><td ></td><td ></td><td ></td><td ></td><td ></td><td ></td><td ></td><td ></td>
 <td>
 
 </td>
 </tr>
 <tr> <td></td></tr><tr> <td></td></tr>
 <tr> <td></td></tr><tr> <td></td></tr><tr> <td></td></tr><tr> <td></td></tr>
 </table>

 







<table height="50" cellspacing="0" cellpadding="0" >
<tr>
<td></td>
</tr>
</table>

<table align="center">


<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
<form action="groupmain.jsp" method="post">
<tr>
<td >
<input type="submit" name="group" value="Group Details      " />
</td>
</tr>
</form>
<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
<form action="ledgersmain.jsp" method="post">
<tr>
<td >
<input type="submit" name="group" value="Ledgers Details  " />
</td>
</tr>
</form>

<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
<form action="vouchercr.jsp" method="post">
<tr>
<td >
<input type="submit" name="voucher" value="Voucher Details  " />
</td>
</tr>
</form>
</table>



 </BODY>
</HTML>
