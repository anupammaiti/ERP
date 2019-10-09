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
<td width="300"/>

<td>
<input align ="left" type="image" src="images/home.jpg"/>
</form>
</td>

<form action="balancesheet_main.jsp" method="post">

<td width="600"/>

<td>
<input align ="right" type="image" src="images/back.jpg"/>
</form>
</td>
</tr>
</table>

 

 
 <table align="center"    >
   <tr>
     <td ><strong> <font  face = "verdana" size = "3" color="#573801" >Loans (Liability) Details</font></strong> </td>
   </tr>
 </table>
 <p>&nbsp;</p>
 
 <table align="center" width="800" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Particulars</font></strong></td>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Amount</font></strong></td>
	</tr>
	
	
	
	
	<% ////////////////// %>
	
	
	<% double tot = 0;
		String ps="select l.ledgername,c.balance from current_assets c,ledgersdata l where (l.ledgername=c.ledgername and l.under='Loans(Liability)') ";

		ResultSet prs=st.executeQuery(ps);
	    int i=0;
		while(prs.next())
		{
		i++;
	%>
	<form action="#" >
	<tr>
		<td align="center"> <% out.println(prs.getString(1));%></td>
		<td align="right"> <% out.println(prs.getDouble(2));%></td>
		<td width="50" align="center"> <input type="submit" name="submit" value="Display" ></td>
		<input type="hidden" name="hid1" value=<% out.println(prs.getString(1));%> > 
	</tr>
	</form>
	<% 
		
		tot = tot + prs.getDouble(2);
		
		}
		
	
	
		
	%>
	
	
	
 </table>
 
 <table align="center" width="800" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td width="450" align="center"> <strong><font   face="Times New Roman, Times, serif">Total</font></strong></td>
		<td align="center"> <% out.println(tot);%> </td>
	</tr>
</table>
 
 <p>&nbsp;</p>
 

<% } %>


 </BODY>
</HTML>
