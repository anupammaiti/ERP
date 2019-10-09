<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
<style type="text/css">
<!--
body {
	background-image: url(images/bg.jpg);
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style></head>

<body>
<table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
<table align="center" width="800" background="images/bg.jpg">
<tr>
<td>
<form action="specific.jsp">
 
 <input type="hidden" name="username" value="hr_admin">
 <input type="hidden" name="password" value="hr_admin">
  <input type="image" src="images/home.jpg">
 </form> 
  <%
  Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
   String query="select * from  employee where  joiningdate between ? and ?";
   PreparedStatement pstmt=conn.prepareStatement(query);
  // pstmt.setString(1,request.getParameter("gender"));
  // pstmt.setString(2,request.getParameter("qualification"));
   pstmt.setString(1,request.getParameter("startdate"));
   pstmt.setString(2,request.getParameter("enddate"));
   ResultSet rs=pstmt.executeQuery();
    out.println("<table border=1 bordercolor=#F0B269 bgcolor=#FADFC3>");
   while(rs.next())
    {
	  out.println("<tr>");
	   
	  out.println("<td>");
	
	  out.println(rs.getString(1));
	  out.println("</td>");
	  out.println("<td>");
	
	  out.println(rs.getString(2));
	  out.println("</td>");
	  out.println("<td>");
	
	  out.println(rs.getString(3));
	  out.println("</td>");
	  out.println("<td>");
	
	  out.println(rs.getString(4));
	  out.println("</td>");
	  out.println("<td>");
	
	  out.println(rs.getString(5));
	  out.println("</td>");
	  out.println("<td>");
	
	  out.println(rs.getString(6));
	  out.println("</td>");
	  out.println("<td>");
	
	  out.println(rs.getString(7));
	  out.println("</td>");
	  out.println("<td>");
	
	  out.println(rs.getString(8));
	  out.println("</td>");
	
	   out.println("<td>");
	
	  out.println(rs.getString(9));
	  out.println("</td>");
	  out.println("<td>");
	
	  out.println(rs.getString(10));
	  out.println("</td>");
	  out.println("<td>");
	
	  out.println(rs.getString(11));
	  out.println("</td>");
	  
	  out.println("<td>");
	  out.println(rs.getString(12));
	  out.println("</td>");
	  out.println("<td>");
	
	  out.println(rs.getString(13));
	  out.println("</td>");
	  out.println("<td>");
	
	  out.println(rs.getString(14));
	  out.println("</td>");
	  out.println("<td>");
	
	  out.println(rs.getString(15));
	  out.println("</td>");
	  out.println("<td>");
	
	  out.println(rs.getString(16));
	  out.println("</td>");
	  out.println("<td>");
	
	  out.println(rs.getString(17));
	  out.println("</td>");
	  out.println("<td>");
	
	  out.println(rs.getString(18));
	  out.println("</td>");
	  out.println("<td>");
	
	  out.println(rs.getString(19));
	  out.println("</td>");
	  out.println("<td>");
	
	  out.println(rs.getString(20));
	  out.println("</td>");
	  out.println("<td>");
	
	  out.println(rs.getString(21));
	  out.println("</td>");
	  out.println("<td>");
	
	  out.println(rs.getString(22));
	  out.println("</td>");
	 out.println("<td>");
	
	  out.println(rs.getString(23));
	  out.println("</td>");
	  out.println("<td>");
	
	  out.println(rs.getString(24));
	  out.println("</td>");
	  
	  out.println("</tr>");
	 }
  
  %>
  </td>
  </tr>
  </table>
</body>
</html>
