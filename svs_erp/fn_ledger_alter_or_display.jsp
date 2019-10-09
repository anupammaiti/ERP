<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>

<script type="text/javascript">

  function f()
  {
	  window.history.go(-1);
  }
  </script>
  

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
      <td><input align ="left" type="image" src="images/home.jpg"/>
  </form>
  <td width="600"></td>
      <td><input align ="right" type="image" src="images/back.jpg" onClick="f();"/>
      </td>
  </tr>
</table>
<h4 align="center"><font color="#573801" face="verdana" size="3"> Ledger Alter  </font></h4>
<table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
 <form action="fn_ledger_update.jsp">
 <%    
      // out.println(request.getParameter("ledgertype"));
      Class.forName("com.mysql.jdbc.Driver");
	  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
	  String str1="select * from ledgersdata where ledgername=?";
	  PreparedStatement pstmt1=conn.prepareStatement(str1);
	  pstmt1.setString(1,request.getParameter("ledgertype"));
	  ResultSet rs1=pstmt1.executeQuery();
	  while(rs1.next())
	  {
	    rs1.getString(1);
 %>
 <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Ledger Name
   </font>
  </td>
  <td width="392">
   <input type="text" name="ledgername" value=<%=rs1.getString(1)%>>
  </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Alias
   </font>
  </td>
  <td>
   <input type="text" name="alias" value=<%=rs1.getString(2)%>>
  </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Under
   </font>
   </td>
   <td>
    <%
	 
	  String str="select * from groups";
	  Statement stmt=conn.createStatement();
	  ResultSet rs=stmt.executeQuery(str);
	  out.println("<select name=under>");
	  out.println("<option selected>");
	  out.println(rs1.getString(3));
	  out.println("</option>");
	  while(rs.next())
	  {
	    out.println("<option>");
		out.println(rs.getString(1));
		out.println("</option>");
	  }
	%>
   </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Inventory Values are Effected
   </font>
  </td>
  <td>
   <select name="inventoryvalues">
   <option selected><%=rs1.getString(4)%></option>
    <option>Yes</option>
	<option>No</option>
   </select>
  </td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Name
	</font>
   </td>
   <td>
    <input type="text" name="name2" value=<%=rs1.getString(5)%>>
   </td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Address
	</font>
   </td>
   <td>
    <input type="text" name="address" value=<%=rs1.getString(6)%>>
   </td>
  </tr>
  <tr>
   <td>
   <font color="#573801" face="verdana" size="2">
    State
   </font>
   </td>
   <td>
    <input type="text" name="state" value=<%=rs1.getString(7)%>>
   </td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Pin Code
	</font>
    </td>
	<td>
	 <input type="text" name="pincode" value=<%=rs1.getString(8)%>>
	</td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 PAN/IT No:
	</font>
   </td>
   <td>
    <input type="text" name="panoritno" value=<%=rs1.getString(9)%>>
   </td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Sales Tax No:
	</font>
	
   </td>
   <td>
    <input type="text" name="salestaxno" value=<%=rs1.getString(10)%>>
   </td>
   </tr>
   <tr>
    <td>
	 <font color="#573801" face="verdana" size="2">
	  Opening Balance
	 </font>
	 </td>
	 <td>
	  <input type="text" name="openingbalance" value=<%=rs1.getString(11)%>>
	  <select name="type">
	  <option selected><%=rs1.getString(12)%></option>
	   <option>Dr</option>
	   <option>Cr</option>
	  </select>
	 </td>
	</tr>
	<tr>
	 <td colspan="2" align="center">
	  <input type="image" src="images/submit.jpg">
	 </td>
	</tr>
	<%}%>
  </form>
</table>

<% } %>

</body>
</html>
