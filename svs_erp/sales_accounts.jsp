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
if(admin_check || admin)
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

<% if(admin_check){ %>
<form action="kvk_finance_main.jsp" method="post">
<% } %>

<% if(admin){ %>
<form action="account1_admin.jsp" method="post">
<% } %>

<tr>
<td width="200"/>

<td>
<input align ="left" type="image" src="images/home.jpg"/>
</form>
</td>

<form action="Profit&Loss_main.jsp" method="post">

<td width="780"/>

<td>
<input align ="right" type="image" src="images/back.jpg"/>
</form>
</td>
</tr>
</table>

 

 
 <table align="center"    >
   <tr>
     <td ><strong> <font  face = "verdana" size = "3" color="#573801" >Sales Accounts Details</font></strong> </td>
   </tr>
 </table>
 <p>&nbsp;</p>
 
 <table align="center" width="1000" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Voucher No.</font></strong></td>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Voucher Type</font></strong></td>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Ref No.</font></strong></td>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Date</font></strong></td>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Party Acc Name</font></strong></td>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Ledger Name</font></strong></td>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Item Name</font></strong></td>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Quantity</font></strong></td>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Rate</font></strong></td>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Units</font></strong></td>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Debit</font></strong></td>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Credit</font></strong></td>
	</tr>
	<% 
		double tot = 0.0;
		String ps="select * from voucher_sales";
		ResultSet prs=st.executeQuery(ps);
	    int i=0;
		while(prs.next())
		{
		i++;
	%>
	<form action="sales_accounts__alter.jsp" >
	<tr>
		<td align="center"> <% out.println(prs.getInt(1));%></td>
		<td align="center"> <% out.println(prs.getString(4));%></td>
		<td align="center"> <% out.println(prs.getString(2));%></td>
		<td align="center"> <% out.println(prs.getString(3));%></td>
		<td align="center"> <% out.println(prs.getString(5));%></td>
		<td align="center"> <% out.println(prs.getString(6));%></td>
		<td align="center"> <% out.println(prs.getString(7));%></td>
		<td align="center"> <% out.println(prs.getInt(8));%></td>
		<td align="right"> <% out.println(prs.getDouble(9));%></td>
		<td align="right"> <% out.println(prs.getString(10));%></td>
		<td align="center"> <% out.println("");%></td>
		<td align="right"> <% out.println(prs.getDouble(11));%></td>
		<td> <input type="submit" name="submit" value="Alter" ></td>
		<input type="hidden" name="hid1" value=<% out.println(prs.getInt(1));%> > 
	</tr>
	</form>
	<% 
		tot = tot + prs.getDouble(11);
		
		
		}
		
	%>
	
	
	<%
	
	
	String jps="select j.* from voucher_journal j ,ledgersdata l where j.by_parti=l.ledgername and l.under='SundryDebtors' ";
	
	ResultSet jprs=st.executeQuery(jps);
	   
		while(jprs.next())
		{
		
	
	
	%>
	
	<tr>
		<td align="center"> <% out.println(jprs.getInt(1));%></td>
		<td align="center"> <% out.println(jprs.getString(3));%></td>
		<td align="right"> <% out.println("");%></td>
		<td align="center"> <% out.println(jprs.getString(2));%></td>
		<td align="center"> <% out.println(jprs.getString(10));%></td>
		<td align="center"> <% out.println(jprs.getString(4));%></td>
		<td align="center"> <% out.println(jprs.getString(5));%></td>
		<td align="center"> <% out.println(jprs.getInt(6));%></td>
		<td align="center"> <% out.println(jprs.getDouble(7));%></td>
		<td align="right"> <% out.println(jprs.getString(8));%></td>
		 <td align="right"> <% out.println("");%></td>
		<td align="right"> <% out.println(jprs.getDouble(11));%></td>
	 
		
	</tr>
	
		
		<%
		tot = tot + jprs.getDouble(11);
		
		}
	%>
	
	
 </table>
 
 
 <table align="center" width="1000" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 <tr>
 <td align="right" width="1100">
  <strong><font   face="Times New Roman, Times, serif">Total</font></strong>
 </td>
 <td width="110">
 <% out.println(tot); %>
 </td>
 </tr>
 </table>
 
 
 
 <p>&nbsp;</p>



<% } %>

 </BODY>
</HTML>
