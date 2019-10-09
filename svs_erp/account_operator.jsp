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
if(session.getAttribute("user_name").toString().equals("fn_account") & "fn_account".equals(session.getAttribute("pwd").toString()) )
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




<table>

<form action="specific.jsp" method="post">
<tr>
<td width="300"/>

<td>
<input type="hidden" name="username" value="fn_account"/>
<input type="hidden" name="password" value="fn_account"/>
<input align ="left" type="image" src="images/home.jpg"/>
</form>
</td>




</tr>
</table>




 
 <table align="center"    >
<tr>
 <td ><strong> <font  size = "3" face = "verdana" color="#573801">Masters  Details</font></strong>
</td>
</tr>

</table>


 <table height="10" cellspacing="0" cellpadding="0" >
<tr>
<td></td>
</tr>
</table>

<table align="center">


<form action="accounting_inf_main.jsp" method="post">
<tr>
<td ><input type="submit" name="group"   value="             Account Information              " /></td>
</tr>.
</form>

<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>



<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
<form action="inventorymain.jsp" method="post">
<tr>
<td >
<input type="submit"   name="voucher" value="             Inventory Information            " />
</td>
</tr>
</form>




</table>

<p>&nbsp;</p>
<table align="center"    >
<tr>
 <td ><strong> <font  size = "3" face = "verdana" color="#573801">Transaction Details</font></strong>
</td>
</tr>

</table>


<table height="10" cellspacing="0" cellpadding="0" >
<tr>
<td></td>
</tr>
</table>

<table align="center">


<form action="accounting_voucher_main.jsp" method="post">
<tr>
<td ><input type="submit" name="group"   value="             Account Voucher              " /></td>
</tr>
</form>

<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>


</table>













<% } %>

 </BODY>
</HTML>
