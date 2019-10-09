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

<table align="center" width="800" bgcolor="#FFD3A2" background="images/bg.jpg">
<tr>
<td>
 <form action="specific.jsp" method="post">
 <input type="hidden" name="username" value="hr_pranam">
 <input type="hidden" name="password" value="hr_pranam">
  <input type="image" src="images/home.jpg">
 </form> 

<%

Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
   String query="insert into interviewevaluationreport1 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
   PreparedStatement pstmt=conn.prepareStatement(query);
   pstmt.setString(1,request.getParameter("candidatename"));
   pstmt.setString(2,request.getParameter("date"));
  
  pstmt.setString(3,request.getParameter("position"));
  pstmt.setString(4,request.getParameter("company"));
   pstmt.setString(5,request.getParameter("appearance"));
   pstmt.setString(6,request.getParameter("qualification"));
   pstmt.setString(7,request.getParameter("experience"));
   pstmt.setString(8,request.getParameter("jobstability"));
    pstmt.setString(9,request.getParameter("attitude"));
  pstmt.setString(10,request.getParameter("communicationskills"));
   pstmt.setString(11,request.getParameter("jobknowledge"));
   pstmt.setString(12,request.getParameter("jobskills"));
   pstmt.setString(13,request.getParameter("jobpotential"));
    pstmt.setString(14,request.getParameter("careerachievements"));
  pstmt.setString(15,request.getParameter("workdedication"));
   pstmt.setString(16,request.getParameter("abilitytolearn"));
   pstmt.setString(17,request.getParameter("openmindness"));
   pstmt.setString(18,request.getParameter("maturitylevel"));
    pstmt.setString(19,request.getParameter("overallsuitability"));
  pstmt.setString(20,request.getParameter("finalassessment"));
   pstmt.setString(21,request.getParameter("othercomments"));
   pstmt.setString(22,request.getParameter("interviewedby"));
   pstmt.setString(23,request.getParameter("executivename"));
  pstmt.setString(24,request.getParameter("presentsalary"));
   pstmt.setString(25,request.getParameter("exceptedsalary"));
   pstmt.setString(26,request.getParameter("salaryoffred"));
   pstmt.setString(27,request.getParameter("joiningtimerequired"));
   pstmt.setString(28,request.getParameter("department"));
   pstmt.executeUpdate();
   
   
   String str1="select * from interviewevaluationreport1 where candidatename=?";
   PreparedStatement pstmt1=conn.prepareStatement(str1);
   pstmt1.setString(1,request.getParameter("candidatename"));
   ResultSet rs=pstmt1.executeQuery();
   out.println("<center>");
   out.println("<font color=\"#573801\" size=\"4\">");
   out.println("Details u entered are");
   out.println("</font>");
   out.println("</center>");
    out.println("<table border=\"1\" bordercolor=#F0B269 bgcolor=#FADFC3 align=\"center\">");
   while(rs.next())
     {
	  
	   out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Candidate Name");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   
	   out.println(rs.getString(1));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Date");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println(rs.getString(2));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Position");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println(rs.getString(3));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Company");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println(rs.getString(4));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Appearance");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println(rs.getString(5));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Qualification");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println(rs.getString(6));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Experience");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println(rs.getString(7));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Job Stability");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println(rs.getString(8));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Attitude");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println(rs.getString(9));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Communication Skills");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println(rs.getString(10));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Job Knowledge");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println(rs.getString(11));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Job Skills");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println(rs.getString(12));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Job Potential");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println(rs.getString(13));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Career Achievements");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println(rs.getString(14));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Work Dedication");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println(rs.getString(15));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Ability to Learn");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println(rs.getString(16));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Open Mindness");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println(rs.getString(17));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Maturity Level");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println(rs.getString(18));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Overall Suitability");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println(rs.getString(19));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Final Assessment");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println(rs.getString(20));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Other Comments");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println(rs.getString(21));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Interviewed By");
	   out.println("</font>");
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
