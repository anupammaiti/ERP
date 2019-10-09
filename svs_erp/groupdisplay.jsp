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
boolean fn_check = false;
if(session.getAttribute("user_name").toString().equals("admin_account") & "admin_account".equals(session.getAttribute("pwd").toString()) )
{
	admin_check = true;
}
else if(session.getAttribute("user_name").toString().equals("fn_account") & "fn_account".equals(session.getAttribute("pwd").toString()) )
{
	fn_check = true;
}
%>

<%
if(admin_check || fn_check)
{

 %>
 
 
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
 <td ><strong> <font color="#573801" size="3" face="verdana">Group  Alter</font></strong>
</td>
</tr>
</table>

<table>
<% if(admin_check){ %>
<form action="kvk_finance_main.jsp" method="post">
<% } %>

<% if(fn_check){ %>
<form action="account_operator.jsp" method="post">
<% } %>

<tr>
<td width="300"/>

<td>
<input align ="left" type="image" src="images/home.jpg"/>
</form>
</td>

<form action="accounting_inf_main.jsp" method="post">

<td width="600"/>

<td>
<input align ="right" type="image" src="images/back.jpg"/>
</form>
</td>

</tr>
</table>


<form action="dummygroupalter.jsp" method = "post" >

<% 
	String ser=request.getParameter("groupname");
	//out.println(ser);
	Statement st2=con.createStatement();
	 String q2="select * from groupdetails where name=? ";
	 PreparedStatement p = con.prepareStatement(q2);
	 p.setString(1,ser);
	 	
	 ResultSet rs2=p.executeQuery();
	 String ss1=null;
	 String ss2=null;
	 String ss3=null;
	 String ss4=null;
	 String ss5=null;
	 String ss6=null;
	 String ss7=null;
	 String ss8=null;

	  while(rs2.next())
	  {
		  ss1=rs2.getString(1);
		  ss2=rs2.getString(2);
		  ss3=rs2.getString(3);
		  ss4=rs2.getString(4);
		  ss5=rs2.getString(5);
		  ss6=rs2.getString(6);
		  ss7=rs2.getString(7);
		  ss8=rs2.getString(8);
		   
		  
	  }
	 /* out.println(ss1);
	  out.println(ss2);
	  out.println(ss3);
	  out.println(ss4);
	  out.println(ss5);
	  out.println(ss6);
	  out.println(ss7);
	  out.println(ss8);*/
	 
	   String dd= ss1;
	    session.setAttribute("dummy",dd);
	 
%>
 



<table  border = "1"    align="center"  width="800"  bgcolor="#FADFC3" bordercolor="#F0B269"  >


<tr>
<td width="392">
<font color="#573801" face="verdana" size="2">Name  :</font>
</td>
<td width="392">
<input type="text" name="name" size="15" value=<%out.println(ss1);%>>
</td>
</tr>

<tr>
<td>
<font color="#573801" face="verdana" size="2">(Alias)  :</font>
</td>
<td>
<input type="text" name="alias" size="15" value=<%out.println(ss2);%>>
</td>
</tr>

<tr>
<td>
<font color="#573801" face="verdana" size="2">Under  :</font>
</td>
<td>
<%out.println(ss3);%> 
</td>
</tr>





<tr>
<td>
<font color="#573801" face="verdana" size="2">Nature Of Group  :</font>
</td>
<td>
<input type="text" name="natrgrp" size="15"  value=<%out.println(ss4);%> >
</td>
</tr>


<tr>
<td>
<font color="#573801" face="verdana" size="2">Group behaves like a Sub-Ledger  :</font>
</td>
<td>
<input type="text" name="grpbeh" size="15"  value=<%out.println(ss5);%>  >
</td>
</tr>

<tr>
<td>
<font color="#573801" face="verdana" size="2">Nett Debit/Credit Balances for Reporting  :</font>
</td>
<td>
<input type="text" name="netrep" size="15"  value=<%out.println(ss6);%>  >
</td>
</tr>


<tr>
<td>
<font color="#573801" face="verdana" size="2">Used for Calculation  :</font>
</td>
<td>
<input type="text" name="usecal" size="15"  value=<%out.println(ss7);%>  >
</td>
</tr>


<tr>
<td>
<font color="#573801" face="verdana" size="2">Method to Allocate when Used inPurchase Invoice :</font>
</td>
<td>
<input type="text" name="metall" size="15"  value=<%out.println(ss8);%>  >
</tr>

</table>


<br></br>
<center>
<input type="image" src="images/submit.jpg">
</center>
</form>


<% } %>
 </BODY>
</HTML>
