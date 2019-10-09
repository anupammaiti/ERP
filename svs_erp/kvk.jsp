<!-- Strip whitespace -->
<%@ page import="java.util.*"%>
<%@ page import="java.util.Vector.*"%>
<%@ page import="java.sql.*"%>

<% Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
   Statement st=con.createStatement();
   %>
<HTML>
 <HEAD>
<title>SVS</title>
   </HEAD>

 <BODY background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
  <table width="800"  border = "0" cellspacing = "0" cellpadding = "0" align ="center">
 <tr>
 	<td><img src = "images/banner.jpg" width = "800"></td>
 </tr>
 </table>

 <table width = "800" border = "0" cellspacing = "0" cellpadding = "0" align = "center">
 <tr>
 <td background = "images/after_main.jpg" height = "41" align = "center" ><strong> <font color = "#573801" size = "3" 
 face = "verdana"> Welcome To Finance Department</font></strong> </td>
 </tr>
 </table>
<p>&nbsp;</p>

<table>

<form action="kvk_finance_main.jsp" method="post">
<tr>
<td width="100"/>

<td>
<input align ="left" type="image" src="images/home.jpg"/>
</form>
</td>
</tr>
</table>

 

 
 <table align="center"    >
<tr>
 <td ><strong> <font  face = "verdana">xxxx  Details</font></strong>
</td>
</tr>

</table>



<br></br>
<center>
<input type="image" src="images/submit.jpg">
</center>


<table>

<form action="xxx.jsp" method="post">
<tr>
<td width="1100"/>

<td>
<input align ="right" type="image" src="images/back.jpg"/>
</form>
</td>
</tr>
</table>




 </BODY>
</HTML>
