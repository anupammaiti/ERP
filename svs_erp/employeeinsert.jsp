<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>

<body background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="00">
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

<%

  Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
   String query="insert into employee values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
   PreparedStatement pstmt=conn.prepareStatement(query);
   pstmt.setString(1,request.getParameter("empno"));
   pstmt.setString(2,request.getParameter("name"));
  
  pstmt.setString(3,request.getParameter("nameinhris"));
  pstmt.setString(4,request.getParameter("fathername"));
   pstmt.setString(5,request.getParameter("dob"));
   pstmt.setString(6,request.getParameter("sex"));
   pstmt.setString(7,request.getParameter("joiningdate"));
    pstmt.setString(8,request.getParameter("designation"));
  pstmt.setString(9,request.getParameter("department"));
   pstmt.setString(10,request.getParameter("reportingto"));
   pstmt.setString(11,request.getParameter("joblevel"));
   pstmt.setString(12,request.getParameter("location"));
    pstmt.setString(13,request.getParameter("entrymanner"));
  pstmt.setString(14,request.getParameter("nomination"));
   pstmt.setString(15,request.getParameter("birthplace"));
   pstmt.setString(16,request.getParameter("maritalstatus"));
   String m = request.getParameter("marriagedate") ;
   out.println(m);
   if(m.equals("yyyy/mm/dd") | m.equals(""))
   	m=null;
   pstmt.setString(17,m);
    pstmt.setString(18,request.getParameter("religion"));
  pstmt.setString(19,request.getParameter("pannumber"));
   pstmt.setString(20,request.getParameter("passportnumber"));
   pstmt.setString(21,request.getParameter("issuedateandplace"));
   pstmt.setString(22,request.getParameter("validity"));
   pstmt.setString(23,request.getParameter("companyname"));
   pstmt.setString(24,request.getParameter("qualification"));
   pstmt.setString(25,request.getParameter("presentsalary"));
   pstmt.setString(26,request.getParameter("exceptedsalary"));
   pstmt.setString(27,request.getParameter("salaryoffred"));
   pstmt.setString(28,request.getParameter("join_time_req"));
   pstmt.executeUpdate();
 %>
<form action="specific.jsp">
  <input type="hidden" name="username" value="hr_pranam">
  <input type="hidden" name="password" value="hr_pranam">
  <input type="image" src="images/home.jpg">
</form>
<font color="#573801" size="4"> Successfully Entered into Database </font>
</td>
</tr>
</table>
</body>
</html>
