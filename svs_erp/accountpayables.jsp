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
    <td background="images/after_main.jpg" height="41" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome To Finance Department</font>      <font size="3" face="verdana">
      <!--<img src="images/after_main.jpg">-->
    </font></strong>    	</td>
  </tr>
</table>
<h4 align="center"><font color="#573801" face="verdana" size="3"> Acount Payables </font></h4>
<table align="center" width="800" bordercolor="#F0B269" bgcolor="#FADFC3" border="1">
 <form action="accountpayablessubmit.jsp">
  <tr>
   <td colspan="4">
     <strong><font color="#573801" face="verdana" size="2">
	 Reporting Period
	 </font>
     </strong></td>
  </tr>
  <tr>
   <td>
     <strong><font color="#573801" face="verdana" size="2">
	 From
	 </font>
     </strong></td>
   <td>
    <input type="text" name="fromdate">
   </td>
   <td>
     <strong><font color="#573801" face="verdana" size="2">
	 To
	 </font>
     </strong></td>
   <td>
    <input type="text" name="todate">
   </td>
  </tr>
  <tr>
   <td colspan="2">
     <strong><font color="#573801" face="verdana" size="2">
	 Dept
	 </font>
     </strong></td><td colspan="2">
	 <select name="dept">
	  <option>Sales</option>
	  <option>Finance</option>
	  <option>Account</option>
	 </select>
	</td>
  </tr>
  <tr>
   <td colspan="4" align="center">
    <input type="image" src="images/submit.jpg">
   </td>
  </tr>
 </form>
</table>
 
</body>
</html>
