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
    <td background="images/after_main.jpg" height="41" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome To Finance Department</font>      <font size="3" face="verdana">
      <!--<img src="images/after_main.jpg">-->
    </font></strong>    	</td>
  </tr>
</table>
<h4 align="center"><font color="#573801" face="verdana" size="3"> Create Voucher </font></h4>

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



<table align="center" width="800" bgcolor="#FADFC3" bordercolor="#F0B269" border=1>
 <form action="fn_create_vouchersubmit.jsp">
 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
     Name
   </font>
   </td>
   <td width="392">
    <input type="text" name="vochername" >
    </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Type of Voucher
   </font>
  </td>
  
  <td>
  <font color="#573801" face="verdana" size="2">
   <%
    Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
	Statement stmt=conn.createStatement();
	String str="select * from vochertypes";
	ResultSet rs=stmt.executeQuery(str);
	
	out.println("<select name=vochertype>");
	while(rs.next())
	{
	  out.println("<option>");
	  out.println(rs.getString(1));
	  out.println("</option>");
	}
	out.println("</select>");
	;
	out.println("<form>");
   %>
  </font>
  </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Abbr
   </font>
  </td>
  
  <td>
  <font color="#573801" face="verdana" size="2">
   <input type="text" name="abbr">
  </font>
  </td>
 </tr>

 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Method Of  Voucher Numbering 
    </font>
  </td>
  <td>
   <select name="vochernumbering">
    <option>Automatic</option>
	<option>Manual</option>
	<option>None</option>
   </select>
  
  </td>
  
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Use Advanced Configuration
   </font>
  </td>
  <td>
   <input type="text" name="advconfiguration" value="No">
  </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Use Effective Dates
   </font>
  </td>
  <td>
   <input type="text" name="useeffectivedates" value="No">
  </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Use common Narration
   </font>
   </td>
   <td>
    <input type="text" name="usecommonnarration" value="Yes">
   </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Narrations for Each Entry
   </font>
  </td>
   <td>
   <input type="text" name="narrationsforeachentry" value="No">
  </td>
  </tr>
  <tr>
  <td>
  <font color="#573801" face="verdana" size="2">
   Name of Class
  </font>
   </td>
   <td>
    <input type="text" name="nameofclass" value="None">
   </td>
 </tr>
 <tr>
  <td colspan="2" align="center">
   <input type="image" src="images/submit.jpg">
  </td>
 </tr>
 </form>
</table>

<% } %>


</body>
</html>
