<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
<style type="text/css">
<!--
  .style{
    color:#573801;
	font-family:Verdana, Arial, Helvetica, sans-serif;
	font:verdana;
	font-style:italic;
	richness:inherit;
	}
	.style1{
	    color:#573801;
		background:background-color:#D1965A;
		}
-->
</style>
</head>

<body background="images/bg.jpg">

 <h3 class="style" align="center">
  Org Name
 </h3>

<%
  Class.forName("com.mysql.jdbc.Driver");
  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
  String str="insert into bill_generate1  values(?,?,?,?);";
  PreparedStatement pstmt=conn.prepareStatement(str);
  pstmt.setString(1,session.getAttribute("date").toString());
  pstmt.setString(2,request.getParameter("customer"));
  pstmt.setString(3,request.getParameter("price"));
  pstmt.executeUpdate(str);
  


%>
<div align="center">
<form action="vijjidoc.jsp">
 <input type="submit" value="  Home  " class="style">
</form>
</div>
</body>
</html>
