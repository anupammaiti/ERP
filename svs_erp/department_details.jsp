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


<% 
boolean admin_check = false;
boolean admin = false;
boolean fn_check = false;
if(session.getAttribute("user_name").toString().equals("fn_account") & "fn_account".equals(session.getAttribute("pwd").toString()) )
{
	fn_check = true;
}
if(session.getAttribute("user_name").toString().equals("admin_account") & "admin_account".equals(session.getAttribute("pwd").toString()) )
{
	admin_check = true;
}
else if(session.getAttribute("user_name").toString().equals("admin") & "admin".equals(session.getAttribute("pwd").toString()) )
{
	admin = true;
}
%>

<%
if(admin_check || admin || fn_check)
{

 %>

 
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
<form action="specific.jsp" method="post">
<% if(fn_check){ %>
<input type="hidden" name="username" value="fn_account"/>
<input type="hidden" name="password" value="fn_account"/>
<% } %>

<% if(admin_check){ %>
<input type="hidden" name="username" value="admin_account"/>
<input type="hidden" name="password" value="admin_account"/>
<% } %>

<% if(admin){ %>
<input type="hidden" name="username" value="admin"/>
<input type="hidden" name="password" value="admin"/>
<% } %>


<tr>
<td width="300"/>

<td>

<input align ="left" type="image" src="images/home.jpg"/>
</form>
</td>




</tr>
</table>
 

 
 <table align="center"    >
<tr>
 <td ><strong> <font  face = "verdana"  color="#573801" size="3">Department Details</font></strong>
</td>
</tr>

</table>


<table height="50" cellspacing="0" cellpadding="0" >
<tr>
<td></td>
</tr>
</table>

<table align="center">


<form action="fn_acc_hr.jsp" method="post">
<tr>
<td >
<input type="submit"   name="voucher" value="         HR Department         " />
</td>
</tr>
</form>



<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
<form action="fn_acc_inventory.jsp" method="post">
<tr>
<td >
<input type="submit"   name="voucher" value="     Inventory Department  " />
</td>
</tr>
</form>


<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
<form action="fn_acc_sales.jsp" method="post">
<tr>
<td >
<input type="submit"   name="voucher" value="       Sales Department      " />
</td>
</tr>
</form>

</table>



<% } %>







 </BODY>
</HTML>
