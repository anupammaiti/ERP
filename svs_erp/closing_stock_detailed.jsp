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

<form action="closing_stock.jsp" method="post">

<td width="600"/>

<td>
<input align ="right" type="image" src="images/back.jpg"/>
</form>
</td>

</table>

 

 
 <table align="center"    >
   <tr>
     <td ><strong> <font  face = "verdana" size = "3" color="#573801">Closing Stock Details</font></strong> </td>
   </tr>
 </table>
 <p></p>
 
 <% String a=request.getParameter("hid1"); 
 			
		String ps="select * from voucher_purchase where nameofitem='"+a+"' ";
		

		ResultSet prs=st.executeQuery(ps);
		 int i=0;
		
	
 %> 
 <table align="center" width="840" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
<tr>
<td>
 <strong><font   face="Times New Roman, Times, serif">Stock Item  : </font></strong>
<% out.println("  "+a); %>
</td>
</tr>
</table>
 
 <table align="center" width="840" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td align="center" width="120"> <strong><font   face="Times New Roman, Times, serif">Voucher No.</font></strong></td>
		<td align="center" width="120"> <strong><font   face="Times New Roman, Times, serif">Voucher Type</font></strong></td>
		<td align="center" width="120"> <strong><font   face="Times New Roman, Times, serif">Date</font></strong></td>
		<td align="center" width="120"> <strong><font   face="Times New Roman, Times, serif">Particulars</font></strong></td>
		<td align="center" width="120"> <strong><font   face="Times New Roman, Times, serif">Inwards    </font></strong></td>
		<td align="center" width="120"> <strong><font   face="Times New Roman, Times, serif">Outwards</font></strong></td>
		<td align="center" width="120"> <strong><font   face="Times New Roman, Times, serif">Closing</font></strong></td>
	</tr>
 </table>
	
	
	<table align="center" width="840" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td align="center" width="740"> <strong><font   face="Times New Roman, Times, serif"></font></strong></td>
		<td align="center" width="60"> <font   face="Times New Roman, Times, serif">Quantity</font></td>
		<td align="center" width="60"> <font   face="Times New Roman, Times, serif">Value</font></td>
		<td align="center" width="60"> <font   face="Times New Roman, Times, serif">Quantity</font></td>
		<td align="center" width="60"> <font   face="Times New Roman, Times, serif">Value</font></td>
		<td align="center" width="60"> <font   face="Times New Roman, Times, serif">Quantity</font></td>
		<td align="center" width="60"> <font   face="Times New Roman, Times, serif">Value</font></td>
	</tr>
	</table>
	<% 
	int pqty=0;
	double pbal=0.0;
	String units=null;
	while(prs.next())
	{
		//i++;
		
	 %>
	<table align="center" width="840" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td align="center" width="120"> <% out.println(prs.getInt(1)); %></td>
		<td align="center" width="120"> <% out.println(prs.getString(4)); %></td>
		<td align="center" width="120"> <% out.println(prs.getString(3)); %></td>
		<td align="center" width="120"> <% out.println(prs.getString(5)); %></td>
		<td align="center" width="60"> <% out.println(prs.getInt(8)); %><% out.println(prs.getString(10)); %></td>
		<td align="center" width="60"> <% out.println(prs.getDouble(11)); %></td>
		<td align="center" width="60"> <strong><font   face="Times New Roman, Times, serif"></font></strong></td>
		<td align="center" width="60"> <strong><font   face="Times New Roman, Times, serif"></font></strong></td>
		<td align="center" width="60"> <strong><font   face="Times New Roman, Times, serif"></font></strong></td>
		<td align="center" width="60"> <strong><font   face="Times New Roman, Times, serif"></font></strong></td>
	</tr>
	</table>
	<%	
		units = prs.getString(10);		
		 pqty=pqty+prs.getInt(8);
		 pbal=pbal+prs.getDouble(11);
		}
		///////////////
	 %>
	 
	 
	 
	 
	<%
		String jps="select j.* from voucher_journal j , ledgersdata l where j.nameofitem='"+a+"' and (j.to_parti=l.ledgername and l.under='SundryCreditors') ";
		 ResultSet jprs=st.executeQuery(jps);
		 int jcl=0;
		 int jpqty=0;
		 double jpbal=0.0;
		 while(jprs.next())
		{
		 jcl=1;
		 
		 
		
	 %>
	 
	 <table align="center" width="840" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td align="center" width="120"> <% out.println(jprs.getInt(1)); %></td>
		<td align="center" width="120"> <% out.println(jprs.getString(3)); %></td>
		<td align="center" width="120"> <% out.println(jprs.getString(2)); %></td>
		<td align="center" width="120"> <% out.println(jprs.getString(10)); %></td>
		<td align="center" width="60"> <% out.println(jprs.getInt(6)); %><% out.println(jprs.getString(8)); %></td>
		<td align="center" width="60"> <% out.println(jprs.getDouble(9)); %></td>
		<td align="center" width="60"> <strong><font   face="Times New Roman, Times, serif"></font></strong></td>
		<td align="center" width="60"> <strong><font   face="Times New Roman, Times, serif"></font></strong></td>
		<td align="center" width="60"> <strong><font   face="Times New Roman, Times, serif"></font></strong></td>
		<td align="center" width="60"> <strong><font   face="Times New Roman, Times, serif"></font></strong></td>
	</tr>
	</table>
	<% 
		pqty=pqty+jprs.getInt(6);
		pbal=pbal+jprs.getDouble(9);
	} 
		
		
		
		%>
		
		
		
		
	 
	 
	 
	 
	 
	 
	 
	<% ///////////////////
		String ss="select * from voucher_sales where nameofitem='"+a+"' ";
		 ResultSet srs=st.executeQuery(ss);
		 int cl=0;
		 int sqty=0;
		 double sbal=0.0;
		 while(srs.next())
		{
		 cl=1;
		 
		 
		
	 %>
	 
	 <table align="center" width="840" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td align="center" width="120"> <% out.println(srs.getInt(1)); %></td>
		<td align="center" width="120"> <% out.println(srs.getString(4)); %></td>
		<td align="center" width="120"> <% out.println(srs.getString(3)); %></td>
		<td align="center" width="120"> <% out.println(srs.getString(5)); %></td>
		<td align="center" width="60"> <strong><font   face="Times New Roman, Times, serif"></font></strong></td>
		<td align="center" width="60"> <strong><font   face="Times New Roman, Times, serif"></font></strong></td>
		<td align="center" width="60"> <% out.println(srs.getInt(8)); %><% out.println(srs.getString(10)); %></td>
		<td align="center" width="60"> <% out.println(srs.getDouble(11)); %></td>
		<td align="center" width="60"> <strong><font   face="Times New Roman, Times, serif"></font></strong></td>
		<td align="center" width="60"> <strong><font   face="Times New Roman, Times, serif"></font></strong></td>
	</tr>
	</table>
	<% 
		sqty=sqty+srs.getInt(8);
		sbal=sbal+srs.getDouble(11);
	} 
	
		
		/////////////////
		
		%>
		
		
		
		<%
		String jss="select j.* from voucher_journal j , ledgersdata l where j.nameofitem='"+a+"' and (j.by_parti=l.ledgername and l.under='SundryDebtors') ";
		 ResultSet jsrs=st.executeQuery(jss);
		 //int jcl=0;
		 //int jpqty=0;
		 //double jpbal=0.0;
		 while(jsrs.next())
		{
		 //jcl=1;
		 
		 
		
	 %>
	 
	 <table align="center" width="840" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td align="center" width="120"> <% out.println(jsrs.getInt(1)); %></td>
		<td align="center" width="120"> <% out.println(jsrs.getString(3)); %></td>
		<td align="center" width="120"> <% out.println(jsrs.getString(2)); %></td>
		<td align="center" width="120"> <% out.println(jsrs.getString(10)); %>></td>
		<td align="center" width="60"> <strong><font   face="Times New Roman, Times, serif"></font></strong></td>
		<td align="center" width="60"> <strong><font   face="Times New Roman, Times, serif"></font></strong></td>
		
		<td align="center" width="60"> <% out.println(jsrs.getInt(6)); %><% out.println(jsrs.getString(8)); %></td>
		<td align="center" width="60"> <% out.println(jsrs.getDouble(9)); %></td>
		<td align="center" width="60"> <strong><font   face="Times New Roman, Times, serif"></font></strong></td>
		<td align="center" width="60"> <strong><font   face="Times New Roman, Times, serif"></font></strong></td>
	</tr>
	</table>
	<% 
		sqty=sqty+jsrs.getInt(6);
		sbal=sbal+jsrs.getDouble(9);
	} 
		
		
		
		%>
		
		
		
		
		
		<%
		/////////////////////
		
		
		int	cqty=0;
		double cbal=0.00;
		
			String cs="select * from closing_stock where stock_item='"+a+"' ";
		 	ResultSet crs=st.executeQuery(cs);
		 	while(crs.next())
			{
	
	%>
	
	<table align="center" width="840" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td align="center" width="120"> <strong><font   face="Times New Roman, Times, serif"></font></strong></td>
		<td align="center" width="120"> <strong><font   face="Times New Roman, Times, serif"></font></strong></td>
		<td align="center" width="120"> <strong><font   face="Times New Roman, Times, serif"></font></strong></td>
		<td align="center" width="120"> <strong><font   face="Times New Roman, Times, serif"></font></strong></td>
		<td align="center" width="60"> <strong><font   face="Times New Roman, Times, serif"></font></strong></td>
		<td align="center" width="60"> <strong><font   face="Times New Roman, Times, serif"></font></strong></td>
		<td align="center" width="60"> <strong><font   face="Times New Roman, Times, serif"></font></strong></td>
		<td align="center" width="60"> <strong><font   face="Times New Roman, Times, serif"></font></strong></td>
		<td align="center" width="60"> <% out.println(crs.getInt(2)); %><% out.println(crs.getString(3)); %></td>
		<td align="center" width="60"> <% out.println(crs.getDouble(5)); %></td>
	</tr>
	</table>
	<%
		cqty=cqty+crs.getInt(2);
		cbal=cbal+crs.getDouble(5);
	 } 
	
		
		
		
	%>
	
	<table align="center" width="840" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td></td>
	</tr>
	<tr>
		<td></td>
	</tr>
	</table>
	
	<table align="center" width="840" border="1"  bgcolor="#FADFC3" bordercolor="#F0B269">
 	<tr>
		<td align="center" width="600"> <strong><font   face="Times New Roman, Times, serif">Totals : </font></strong></td>
		<td align="center" width="60"> <strong><font   face="Times New Roman, Times, serif"></font><% out.println(pqty); %><% out.println(units); %></strong></td>
		<td align="center" width="60"> <strong><font   face="Times New Roman, Times, serif"><% out.println(pbal); %></font></strong></td>
		<td align="center" width="60"> <strong><font   face="Times New Roman, Times, serif"><% out.println(sqty); %><% out.println(units); %></font></strong></td>
		<td align="center" width="60"> <strong><font   face="Times New Roman, Times, serif"><% out.println(sbal); %></font></strong></td>
		<td align="center" width="60"> <strong><font   face="Times New Roman, Times, serif"><% out.println(cqty); %><% out.println(units); %></font></strong></td>
		<td align="center" width="60"> <strong><font   face="Times New Roman, Times, serif"><% out.println(cbal); %></font></strong></td>
	</tr>
	</table>
	
 <p>&nbsp;</p>
 
<% } %>



 </BODY>
</HTML>
