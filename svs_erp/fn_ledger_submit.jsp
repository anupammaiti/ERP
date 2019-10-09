<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>

<script type="text/javascript">

  function bck()
  {
	  window.history.go(-2);
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
    <td background="images/after_main.jpg" height="41" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome To Finance Department</font>      <font size="3" face="verdana">
      <!--<img src="images/after_main.jpg">-->
    </font></strong>    	</td>
  </tr>
</table>
<h4 align="center"><font color="#573801" face="verdana" size="3"> Ledger Creation </font></h4>
<%
  Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
   String str="insert into ledgersdata values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
   PreparedStatement pstmt=conn.prepareStatement(str);
   pstmt.setString(1,request.getParameter("ledgername"));
  
   pstmt.setString(2,request.getParameter("alias"));
   pstmt.setString(3,request.getParameter("under"));
   pstmt.setString(4,request.getParameter("inventoryvalues"));
   pstmt.setString(5,request.getParameter("name2"));
   pstmt.setString(6,request.getParameter("address"));
   pstmt.setString(7,request.getParameter("state"));
   
   pstmt.setString(8,request.getParameter("pincode"));
   pstmt.setString(9,request.getParameter("panoritno"));
   pstmt.setString(10,request.getParameter("salestaxno"));
   pstmt.setString(11,request.getParameter("openingbalance"));
   pstmt.setString(12,request.getParameter("type"));
   pstmt.setDouble(13,0);

   
  
  int ins =0;
  try
  {
  
  	 
	 ins = pstmt.executeUpdate();
	 }
	 catch(SQLException e)
	 {
	 	%>
		<h4 align="center"><font color="#573801" face="verdana" size="3">
			<% out.println("Error of "+e); %>
		</font></h4>
		<%
	}
	 	
if(ins==1)
{
%>

<h4 align="center"><font color="#573801" face="verdana" size="3">Successfully Inserted </font></h4>
<% } %>

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
<td>
<input align ="right" type="image" src="images/back.jpg" onClick="bck();"/>

</td>

</tr>
</table>

<% } %>


</body>
</html>
