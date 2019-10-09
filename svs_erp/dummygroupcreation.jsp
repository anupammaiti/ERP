<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<%@ page import="java.util.*"%>
<%@ page import="java.util.Vector.*"%>
<%@ page import="java.sql.*"%>

<% Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
 %>
<HTML>
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
 

 <%
	String s1=request.getParameter("name");
	//out.println(s1);
	String s2=request.getParameter("alias");
	//out.println(s2);
	String s3=request.getParameter("under");
	//out.println(s3);
	String s4=request.getParameter("natrgrp");
	//out.println(s4);
	String s5=request.getParameter("grpbeh");
	//out.println(s5);
	String s6=request.getParameter("netrep");
	//out.println(s6);
	String s7=request.getParameter("usecal");
	//out.println(s7);
	String s8=request.getParameter("metall");
	//out.println(s8);
	
	String ss=""+s1+"";
	//out.println(ss);
	Statement st=con.createStatement();
	String q1="insert into groupdetails	values ('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"')";
	String q2="insert into groups values('"+s1+"')";

	int i=st.executeUpdate(q1);
	int j=st.executeUpdate(q2);
	
	//if(i==1 && j==2)
	//out.println("success");
	%>

<center>

<strong> <font color = "#573801" size = "3" face = "verdana">Successfully Inserted</font></strong>
</center>
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


<% } %>
 </BODY>
</HTML>
