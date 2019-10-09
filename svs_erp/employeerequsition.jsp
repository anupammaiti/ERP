<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>

<body background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
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
<table align="center" background="images/bg.jpg" width="800">
<tr>
<td height="184">
<form action="specific.jsp">
 
 <input type="hidden" name="username" value="hr_pranam">
 <input type="hidden" name="password" value="hr_pranam">
  <input type="image" src="images/home.jpg">
 </form> 
 <%
 Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
   String query="insert into employeerequsition values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
   PreparedStatement pstmt=conn.prepareStatement(query);
   pstmt.setString(1,request.getParameter("position"));
   pstmt.setString(2,request.getParameter("company"));
  
  pstmt.setString(3,request.getParameter("department"));
  pstmt.setString(4,request.getParameter("location"));
   pstmt.setString(5,request.getParameter("joblevel"));
   pstmt.setString(6,request.getParameter("jobresponsibilities"));
   pstmt.setString(7,request.getParameter("specificaccountabilities"));
    pstmt.setString(8,request.getParameter("skillsrequired"));
  pstmt.setString(9,request.getParameter("qualification"));
   pstmt.setString(10,request.getParameter("experience"));
   pstmt.setString(11,request.getParameter("targettime"));
   pstmt.setString(12,request.getParameter("industryspecific"));
    pstmt.setString(13,request.getParameter("age"));
  pstmt.setString(14,request.getParameter("ageto"));
   pstmt.setString(15,request.getParameter("personalitytraits"));
   pstmt.setString(16,request.getParameter("mobility"));
   pstmt.setString(17,request.getParameter("organizationspecific"));
    pstmt.setString(18,request.getParameter("computerleteracy"));
  pstmt.setString(19,request.getParameter("leadershipqualitiesa"));
   pstmt.setString(20,request.getParameter("leadershipqualitiesb"));
   pstmt.setString(21,request.getParameter("leadershipqualitiesc"));
   pstmt.setString(22,request.getParameter("leadershipqualitiesd"));
   pstmt.setString(23,request.getParameter("locationspecifica"));
   pstmt.setString(24,request.getParameter("locationspecificb"));
   pstmt.setString(25,request.getParameter("locationspecificc"));
   pstmt.setString(26,request.getParameter("genderspecific"));
    pstmt.setString(27,request.getParameter("indentername"));
  pstmt.setString(28,request.getParameter("functionalheadname"));
   pstmt.setString(29,request.getParameter("unitheadname"));
   pstmt.setString(30,request.getParameter("date1"));
   pstmt.setString(31,request.getParameter("date2"));
   pstmt.setString(32,request.getParameter("date3"));
   pstmt.executeUpdate();

  %>
  <font color="#573801" size="3" face="verdana">Successfully Send to HR admin</font>
  </td>
  </tr>
</table>
</body>
</html>
