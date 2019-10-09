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

<form action="Profit&Loss_main.jsp" method="post">

<td width="600"/>

<td>
<input align ="right" type="image" src="images/back.jpg"/>
</form>
</td>
</tr>
</table>

 

 
 <table align="center"    >
   <tr>
     <td ><strong> <font  face = "verdana" size = "3" color="#573801" >Direct Expenses Details</font></strong> </td>
   </tr>
 </table>
 <p>&nbsp;</p>
 
 <table align="center" width="800" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Voucher No.</font></strong></td>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Voucher Type</font></strong></td>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Date</font></strong></td>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Account</font></strong></td>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Ledger Name</font></strong></td>
		<td align="center"> <strong><font   face="Times New Roman, Times, serif">Amount</font></strong></td>
	</tr>
	<% 
		//String a=session.getAttribute("parti").toString(); 
		//out.println(a);
		
		String ps="select v.* from voucher_payment v ,ledgersdata where ledgername=v.particulars and under='DirectExpenses' ";
		ResultSet prs=st.executeQuery(ps);
	    int i=0;
		while(prs.next())
		{
		i++;
	%>
	<form action="#" >
	<tr>
		<td align="center"> <% out.println(prs.getInt(1));%></td>
		<td align="center"> <% out.println(prs.getString(3));%></td>
		<td align="center"> <% out.println(prs.getString(2));%></td>
		<td align="center"> <% out.println(prs.getString(4));%></td>
		<td align="center"> <% out.println(prs.getString(5));%></td>
		<td align="center"> <% out.println(prs.getDouble(6));%></td>
		<td align="center"> <input type="submit" name="submit" value="Alter" ></td>
		<input type="hidden" name="hid1" value=<% out.println(prs.getInt(1));%> > 
	</tr>
	</form>
	<% 
		
		
		
		}
		
	%>
	
	
	
	<% 
		//String a=session.getAttribute("parti").toString(); 
		//out.println(a);
		
		String pjs="select vj.* from voucher_journal vj ,ledgersdata where ledgername=vj.by_parti and under='DirectExpenses' ";
		ResultSet pjrs=st.executeQuery(pjs);
	    int ii=0;
		while(pjrs.next())
		{
		ii++;
	%>
	<form action="direct_expenses_alter.jsp" >
	<tr>
		<td align="center"> <% out.println(pjrs.getInt(1));%></td>
		<td align="center"> <% out.println(pjrs.getString(3));%></td>
		<td align="center"> <% out.println(pjrs.getString(2));%></td>
		<td align="center"> <% out.println(pjrs.getString(4));%></td>
		<td align="center"> <% out.println(pjrs.getString(10));%></td>
		<td align="center"> <% out.println(pjrs.getDouble(11));%></td>
		<td align="center"> <input type="submit" name="submit" value="Alter" ></td>
		<input type="hidden" name="hid1" value=<% out.println(pjrs.getInt(1));%> > 
	</tr>
	</form>
	<% 
		
		
		
		}
		
	%>
	
	
 </table>
 
 <p>&nbsp;</p>
 
<% } %>


 </BODY>
</HTML>
