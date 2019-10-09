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
	<img src = "images/banner.jpg" width = "800"></td>
 </tr>
 </table>

 

 

 <table width = "800" border = "0" cellspacing = "0" cellpadding = "0" align = "center">
 <tr>
 <td background = "images/after_main.jpg" height = "41" align = "center" >
	<strong> <font color = "#573801" size = "3" face = "verdana"> Welcome To Finance Department</font></strong>
 </td>
 </tr>
 </table>


<p>&nbsp;</p>

<table align="center"    >
<tr>
 <td ><strong> <font  face = "verdana">Multi Group  details</font></strong>
</td>
</tr>
</table>

 

  <%
	out.println(request.getParameter("nameofgroup"));

  %>	



<table>

<form action="groupmain.jsp" method="post">
<tr>
<td width="1100"/>

<td>
<input align ="right" type="submit" value="Back"/>
</form>
</td>
</tr>
</table>
 </BODY>
</HTML>
