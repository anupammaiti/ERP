<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>


<% 
if(session.getAttribute("user_name").toString().equals("admin") & "admin".equals(session.getAttribute("pwd").toString()) )
{

 %>
<body background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table align="center" width="800"bgcolor="#FFD3A2" background="images/bg.jpg">
<tr>
<td>



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

  <p>&nbsp;</p>
  <table align="center"    >
<tr>
 <td ><p><strong> <font  size = "3" face = "verdana" color="#573801">Main Admin Details</font></strong></p>
   
    </td>
</tr>

</table>

&nbsp;

<table>

<tr>

<td>
<form action="specific.jsp">
 <input type="hidden" name="username" value="admin"/>
<input type="hidden" name="password" value="admin"/>
<input align ="left" type="image" src="images/home.jpg"/>

</form>

</td></tr></table>

 <table width="199" align="center">
 <tr>
  <td align="center">
   <form action="account1_admin.jsp">
    <input type="submit" value="        Accounting Package       ">
   </form>
   
   </td>
   </tr>
   <tr>
  <td align="center">
   <form action="department_details.jsp">
    <input type="submit" value="         Department Details         ">
   </form>
   
   </td>
   </tr>
 
   
</table>
   

</td>
</tr>
</table>


<% } %>
</body>
</html>








