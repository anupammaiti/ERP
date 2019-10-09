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
  
  <script type="text/javascript">
  
  function ff()
  {
  	var dec = confirm("Are You Sure, Want To Clear All Data ? ");
	if(dec==true)
	{ document.location = "dummy_clear.jsp" ; }
	else
	{ document.location = "kvk_finance_main.jsp" ; }
  }
  
  </script>
</HEAD>

<% 
if(session.getAttribute("user_name").toString().equals("admin") & "admin".equals(session.getAttribute("pwd").toString()) )
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
 <td background = "images/after_main.jpg" height = "41" align = "center" ><p><strong> <font color = "#573801" size = "3" 
 face = "verdana"> Welcome To Finance Department</font></strong> </p>
   </td>
 </tr>
 </table>


<p>&nbsp;</p>

<table>

<form action="specific.jsp" method="post">
<tr>
<td width="300"/>

<td>
<input type="hidden" name="username" value="admin"/>
<input type="hidden" name="password" value="admin"/>
<input align ="left" type="image" src="images/home.jpg"/>
</form>
</td>




</tr>
</table>

<table align="center"    >
<tr>
 <td ><strong> <font  size = "3" face = "verdana" color="#573801">Reports </font></strong>
</td>
</tr>

</table>


&nbsp;
<table height="10" cellspacing="0" cellpadding="0" >
<tr>
<td></td>
</tr>
</table>

<table align="center">


<form action="balancesheet_main.jsp" method="post">
<tr>
<td ><input type="submit" name="group"   value="               Balance Sheet                 " /></td>
</tr>
</form>

<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>



<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
<form action="Profit&Loss_main.jsp" method="post">
<tr>
<td >
<input type="submit"   name="voucher" value="               Profit & Loss A/C             " />
</td>
</tr>
</form>


</table>



<% } %>

 </BODY>
</HTML>
