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
  <script type="text/javascript">
  	function f1()
	{
		var s=document.getElementById("id1").value;
		var v=2;
		
	}
		
		
  
  </script>
   </HEAD>

<% 
boolean admin_check = false;
boolean admin = false;
boolean fn_check = false;
boolean inv_ad = false;
if(session.getAttribute("user_name").toString().equals("fn_account") & "fn_account".equals(session.getAttribute("pwd").toString()) )
{
	fn_check = true;
}
if(session.getAttribute("user_name").toString().equals("admin_account") & "admin_account".equals(session.getAttribute("pwd").toString()) )
{
	admin_check = true;
}
 if(session.getAttribute("user_name").toString().equals("admin") & "admin".equals(session.getAttribute("pwd").toString()) )
{
	admin = true;
}
if(session.getAttribute("user_name").toString().equals("inventory_admin") & "inventory_admin".equals(session.getAttribute("pwd").toString()) )
	inv_ad=true;
%>

<%
if(admin_check || admin || fn_check || inv_ad)
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
<tr>

<td width="300"/>

<td>
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

<% if(inv_ad){ %>
 <input type="hidden" name="username" value="inventory_admin">
 <input type="hidden" name="password" value="inventory_admin">
 <% } %>
 
<input align ="left" type="image" src="images/home.jpg"/>
</form>
</td>

<td width="600"/>

<td>
<% 
if(inv_ad)
	{ }
else
if(admin){ %>
<form action="inventery1.jsp" method="post">
<input align ="left" type="image" src="images/back.jpg"/>
</form>
<% }
	else
	{ 
%>

<form action="fn_acc_inventory.jsp" method="post">
<input align ="left" type="image" src="images/back.jpg"/>
</form>
<% } %>

</td>


</tr>

</table>
 

 
 <table align="center"    >
   <tr>
     <td ><strong> <font  face = "verdana" size = "3"  color="#573801" >Purchases Details</font></strong> </td>
   </tr>
 </table>
 <p>&nbsp;</p>
 
 <table align="center" width="1000" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Date</font></strong></td>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Party Name</font></strong></td>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Quatation No.</font></strong></td>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Item Code</font></strong></td>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Item Name</font></strong></td>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Quantity</font></strong></td>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Measurement</font></strong></td>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Rate</font></strong></td>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Amount</font></strong></td>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Narration</font></strong></td>
	</tr>
	<% 
		double tot = 0.0;
		String ps="select * from in_purchases";
		ResultSet prs=st.executeQuery(ps);
	    int i=0;
		while(prs.next())
		{
		i++;
	%>
	
	<tr>
		
		<td align="center"> <% out.println(prs.getString(1));%></td>
		<td align="center"> <% out.println(prs.getString(2));%></td>
		<td align="center"> <% out.println(prs.getString(3));%></td>
		<td align="center"> <% out.println(prs.getString(4));%></td>
		<td align="center"> <% out.println(prs.getString(5));%></td>
		
		<td align="center"> <% out.println(prs.getInt(6));%></td>
		<td align="center"> <% out.println(prs.getString(7));%></td>
		<td align="center"> <% out.println(prs.getDouble(8));%></td>
		<td align="center"> <% out.println(prs.getDouble(9));%></td>
		<td align="center"> <% out.println(prs.getString(10));%></td>
		
		
		
	</tr>
	
	<% 
		tot = tot + prs.getDouble(9);
		
		
		}
		
	%>
	
	
	
	
	
	
	
 </table>
 
 
 <table align="center" width="1000" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 <tr>
 <td align="right" width="1100">
  <strong><font   face="Times New Roman, Times, serif">Total</font></strong>
 </td>
 <td width="210">
 <% out.println(tot); %>
 </td>
 </tr>
 </table>
 
 
 
 <p>&nbsp;</p>

 <%
 	if(admin_check || fn_check ) 
	{
 
  %>
  
  <table width = "199" align = "center">
 <tr>
  <td align="center">
  
  <% if(fn_check) { %>
  <form action="account_operator.jsp">
  <% } %>
  
  <% if(admin_check) { %>
   <form action="kvk_finance_main.jsp">
  <% } %>
  
    <input type="submit" value="        Accounting Package       ">
   </form>
   
   </td>
   </tr>
   
  </table>

<% } %>

<% } %>

 </BODY>
</HTML>
