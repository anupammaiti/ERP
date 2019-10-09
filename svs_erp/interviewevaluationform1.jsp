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
<table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="800"><img src="images/banner.jpg" width="800"></td>
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
<table align="center" width="800" background="images/bg.jpg">
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
   String str1="select * from interviewevaluationreport1";
   Statement stmt=conn.createStatement();
   //pstmt1.setString(1,request.getParameter("candidatename"));
   ResultSet rs=stmt.executeQuery(str1);
   out.println("<center>");
   out.println("<font color=\"#573801\" size=\"4\">");
   out.println("Details of Interview");
   out.println("</font>");
   out.println("</center>");
    out.println("<table border=\"1\" bordercolor=#F0B269 align=\"center\" bordercolor=#F0B269 bgcolor=#FADFC3>");
	out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Candidate Name");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Date");
	   out.println("</font>");
	   out.println("</td>");
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
	   out.println("Final Assessment");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Interviewed By");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("</tr>");
	   
   while(rs.next())
     {
	  
	   out.println("<tr>");
	   out.println("<td>");
	   out.println("<a href='interviewinfo.jsp?name="+rs.getString(1)+"'>"+rs.getString(1)+"</a>");
	   //out.println(rs.getString(1));
	   
	   
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
	   out.println(rs.getString(20));
	   out.println("</td>");
	   
	  
	   
	   out.println("<td>");
	   out.println(rs.getString(22));
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
