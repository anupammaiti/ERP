<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>

<body background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<%if(request.getParameter("username").equals("hr_admin") && request.getParameter("password").equals("hr_admin"))
 {
   
    
 %><table width="804" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
 <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td background="images/after_main.jpg" height="44" align="center"><font color="#573801" size="3"><strong><font face="verdana">Welcome To Human Resources Department</font></strong></font><font size="3" face="verdana"><strong>
      <!--<img src="images/after_main.jpg">-->
    </strong></font>	</td>
  </tr>
</table>
<%}%>

<%else if(request.getParameter("username").equals("hr_pranam") && request.getParameter("password").equals("hr_pranam"))
 {
   
    
 %><table width="804" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
 <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td background="images/after_main.jpg" height="44" align="center"><font color="#573801" size="3"><strong><font face="verdana">Welcome To Human Resources Department</font></strong></font><font size="3" face="verdana"><strong>
      <!--<img src="images/after_main.jpg">-->
    </strong></font>	</td>
  </tr>
</table>
<%}%>

</body>
</html>
