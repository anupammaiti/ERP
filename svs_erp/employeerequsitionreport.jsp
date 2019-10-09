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


<% 
boolean hr_admin = false;
boolean admin = false;
if(session.getAttribute("user_name").toString().equals("hr_admin") & "hr_admin".equals(session.getAttribute("pwd").toString()) )
{
	hr_admin = true;
}
else if(session.getAttribute("user_name").toString().equals("admin") & "admin".equals(session.getAttribute("pwd").toString()) )
{
	admin = true;
}
%>
<body>
<table width="808" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="804"><img src="images/banner.jpg" width="808"></td>
  </tr>
  <!--  <tr>
   <td>
  <table width="800" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/finance.jpg" width="119"></td>
    <td><img src="images/project-management.jpg" width="119"></td>
    <td><img src="images/inventory.jpg" width="119"></td>
    <td><img src="images/sales.jpg" width="119"></td>
    <td><img src="images/maintenance.jpg" width="119"></td>
    <td><img src="images/power.jpg" width="119"></td>
    <td><img src="images/human-resources.jpg" width="119"></td>
  </tr>
</table>

   </td>
  </tr>-->
  
</table>
<table align="center" background="images/bg.jpg" width="800">
<tr>
<td>
 <% if(hr_admin){ %>
<form action="specific.jsp" method="post">
 <input type="hidden" name="username" value="hr_admin">
 <input type="hidden" name="password" value="hr_admin">
  <input type="image" src="images/home.jpg">
 </form> 
 <% } %>
 
 <% if(admin){ %>
 <form action="humanresource1.jsp" method="post">
 <input type="hidden" name="username" value="admin">
 <input type="hidden" name="password" value="admin">
  <input type="image" src="images/home.jpg">
 </form> 
<% } %>
<%
Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
   String str="select * from  employeerequsition";  
   Statement stmt=conn.createStatement();
   ResultSet rs=stmt.executeQuery(str);
   out.println("<center>");
   out.println("<font color=\"#573801\" size=\"4\">");
   out.println("Employee Requsition Form");
   out.println("</font>");
   out.println("</center>");
    out.println("<table border=\"1\" bordercolor=\"#573801\" align=\"center\" bgcolor=#FADFC3>");
	out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Position");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Company");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Department");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Location");
	   out.println("</font>");
	   out.println("</td>");
	    out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Job Level");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Job Resposibilities");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Specific Accountabilities");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Skills Required");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Qualification");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Experience");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Target Time");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Industry Specific");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Agerange");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Age Range");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Personality Traits");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Mobility");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Oraganizational Specific");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Computer Literacy");
	   out.println("</font>");
	   out.println("</td>");
	    out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Leadership Qualities a.");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Leadership Qualities b.");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Leadership Qualities c.");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Leadership Qualities d.");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Location Specific a.");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Location Specific b.");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Location Specific c.");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Gender Specific");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Indenter Name");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Functional Head Name");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Unit Head Name");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Sign in date for Indenter");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Sign in Date for Functional Head");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Sign in Date for UnitHead");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("</tr>");
	   
   while(rs.next())
     {
	  
	   out.println("<tr>");
	   
	  
	   
	   
	   out.println("<td>");
	   out.println(rs.getString(1));
	   out.println("</td>");
	   
	   out.println("<td>");
	   out.println(rs.getString(2));
	   //out.println(rs.getString(2));
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
	    out.println("<td>");
	   
	   out.println(rs.getString(25));
	   out.println("</td>");
	    out.println("<td>");
	   
	   out.println(rs.getString(26));
	   out.println("</td>");
	    out.println("<td>");
	   
	   out.println(rs.getString(27));
	   out.println("</td>");
	    out.println("<td>");
	   
	   out.println(rs.getString(28));
	   out.println("</td>");
	    out.println("<td>");
	   
	   out.println(rs.getString(29));
	   out.println("</td>");
	    out.println("<td>");
	   
	   out.println(rs.getString(30));
	   out.println("</td>");
	    out.println("<td>");
	   
	   out.println(rs.getString(31));
	   out.println("</td>");
	    out.println("<td>");
	   
	   out.println(rs.getString(32));
	   out.println("</td>");
	   out.println("</tr>");	  
	 }
	  out.println("</table>");   
%>
</td>
</tr>
</table>
</body>
</html>
