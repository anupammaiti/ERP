<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<%@ page import="java.util.*"%>
<%@ page import="java.util.Vector.*"%>
<%@ page import="java.sql.*"%>

<% Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
 %>
<HTML>
 
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
	String s2=request.getParameter("alias");
	String s3=request.getParameter("under");
	String s4=request.getParameter("qtyadd");

	
	
	String n1 = (session.getAttribute("dummy")).toString();
	
	Statement st=con.createStatement();
	String q1="update stockgroupdetails set name='"+s1+"' , alias='"+s2+"' , under='"+s3+"', qtyadd='"+s4+"' where name='"+n1+"' ";

	int i=st.executeUpdate(q1);

		if(i==1)
		 out.println("success");
	
	
%>
<center>

<strong> <font color = "#573801" size = "3" face = "verdana">Success</font></strong>
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

<form action="stock_group_main.jsp" method="post">

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
