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
 <td ><strong> <font  face = "verdana" color = "#573801" size="3">Group  Creation</font></strong>
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



<form action="dummygroupcreation.jsp" method = "post" >




<table  border = "1" align="center" width= "800"  bgcolor="#FADFC3" bordercolor="#F0B269">


<tr>
<td width="392">
<font color="#573801" face="verdana" size="2">Name</font>
</td>
<td width="392">
<input type="text" name="name" size="15"  />
</td>
</tr>

<tr>
<td>
<font color="#573801" face="verdana" size="2">(Alias)  </font>
</td>
<td>
<input type="text" name="alias" size="15"  />
</td>
</tr>

<tr>
<td>
<font color="#573801" face="verdana" size="2">Under  </font>
</td>
<td>
<% 
	Statement stmt=con.createStatement();
	 String s="select * from Groups";
	 ResultSet rs=stmt.executeQuery(s);
	 String s1=null;
	 String s2=null;
%>
	 <select name="under" onChange="messageValue()">
	 <option > </option>
	<% 
	  while(rs.next())
	  {
		  %>
		  

		  <option value=<%=rs.getString(1)%> > 
		  <% out.println(rs.getString(1));%></option>
		 <% 
			  
		  }
%>
</td>
</tr>





<tr>
<td>
<font color="#573801" face="verdana" size="2">Nature Of Group  </font>
</td>
<td>
<input type="text" name="natrgrp" size="15"    />
</td>
</tr>


<tr>
<td>
<font color="#573801" face="verdana" size="2">Group behaves like a Sub-Ledger  </font>
</td>
<td>

<select name="grpbeh" onChange="messageValue()">
	 <option value="No">No </option>
	 <option value="Yes">Yes </option>
</select>
</td>
</tr>

<tr>
<td>
<font color="#573801" face="verdana" size="2">Net Debit/Credit Balances for Reporting  </font>
</td>
<td>
<select name="netrep" onChange="messageValue()">
	 <option value="No">No </option>
	 <option value="Yes">Yes </option>
</select>
</td>
</tr>


<tr>
<td>
<font color="#573801" face="verdana" size="2">Used for Calculation  </font>
</td>
<td>
<select name="usecal" onChange="messageValue()">
	 <option value="No">No </option>
	 <option value="Yes">Yes </option>
</select>
</td>
</tr>


<tr>
<td>
<font color="#573801" face="verdana" size="2">Method to Allocate when Used in Purchase Invoice </font>
</td>
<td>
<select name="metall" onChange="messageValue()">

<option value="Not Applicable">Not Applicable </option>

<option value="Appropriate By Qty">Appropriate By Qty</option>
<option value="Appropriate By Value">Appropriate By Value</option>
<option value="No Appropriatoin">No Appropriation</option>
</td>
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
