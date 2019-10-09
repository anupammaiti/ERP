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
	margin-top: 00px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style></head>

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
<form action="interviewevaluationform1.jsp">
 
 <input type="hidden" name="username" value="hr_admin">
 <input type="hidden" name="password" value="hr_admin">
  <input type="image" src="images/home.jpg">
 </form> 
<%
  String str=request.getParameter("name");
 out.println("<font color=#006600 size=4>");
 out.println("Data Of Employee with Name="+request.getParameter("name"));
 out.println("</font>");
 Class.forName("com.mysql.jdbc.Driver");
 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
 String str1="select * from interviewevaluationreport1 where candidatename=?";
 PreparedStatement stmt=conn.prepareStatement(str1);
 stmt.setString(1,str);
 ResultSet rs=stmt.executeQuery();
   out.println("<table align=center border=1 bordercolor=#F0B269>");
  while(rs.next())
   {   
      
		
	   
     out.println("<tr>");
	 out.println("<td>");
		out.println("Candidate Name");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(1));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Date");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(2));
	   out.println("</td>");
	   out.println("</tr>");
	 out.println("<tr>");
	 out.println("<td>");
		out.println("Position");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(3));
	   out.println("</td>");
	   out.println("</tr>");
       out.println("<tr>");
	   out.println("<td>");
		out.println("Company");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(4));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Appreance");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(5));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Qualification");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(6));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Experience");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(7));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Job Stability");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(8));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Attitude");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(9));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Communication Skills");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(10));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Job Knowledge");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(11));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Job Skills");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(12));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Job Potential");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(13));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	    out.println("<td>");
		out.println("Career Achievements");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(14));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Work Dedication");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(15));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Ability Learn");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(16));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Open Mindness");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(17));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Maturity Level");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(18));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Overall Suitability");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(19));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Final Assessment");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(20));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Other Comments");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(21));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
		out.println("<td>");
		out.println("Validity");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(22));
	   out.println("</td>");
	   out.println("</tr>");
   }
 
%>
</td>
</tr>
</table>
</body>
</html>
