<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>


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



<body background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
  <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td background="images/after_main.jpg" height="41" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome To Finance Department</font>      </strong>    	</td>
  </tr>
</table>

<h4 align="center"><font color="#573801" face="verdana" size="3"> Alter or Display Ledger </font></h4>

<p>&nbsp;</p>

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

<td width="600"></td>
<form action="fn_ledger_info.jsp">
<td>
<input align ="right" type="image" src="images/back.jpg" onClick="f();"/>
</form>
</td>
</tr>
</table>

<p>&nbsp;</p>
<table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
 <form action=fn_ledger_alter_or_display.jsp>
 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Select ledger </font>
  </td>
  <td width="392">
   <%
    Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
	Statement stmt=conn.createStatement();
	String str="select * from ledgersdata";
	ResultSet rs=stmt.executeQuery(str);
	//out.println("<form action=fn_ledger_alter_or_display.jsp>");
	out.println("<select name=ledgertype>");
	while(rs.next())
	{
	  out.println("<option>");
	  out.println(rs.getString(1));
	  out.println("</option>");
	}
	out.println("</select>");
	//out.println("<input type=submit value=submit>");
	//out.println("</form>");
   %>
  </td>
  <td colspan="2" align="center">
	  <input type="image" src="images/submit.jpg">
	 </td>
  </tr>
  </form>
</table>


<% } %>
</body>
</html>
