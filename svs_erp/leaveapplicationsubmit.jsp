<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>

<body background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="800" border="0" cellspacing="0" cellpadding="0" align="center" background="images/bg.jpg">
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
<td height="154">
<form action="specific.jsp">
 <input type="hidden" name="username" value="hr_pranam">
 <input type="hidden" name="password" value="hr_pranam">
  <input type="image" src="images/home.jpg">
 </form> 

<%

  Class.forName("com.mysql.jdbc.Driver");
  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
  String str="insert into leaveapplications values(?,?,?,?,?,?,?,?,?,?,?,?)";
  PreparedStatement pstmt=conn.prepareStatement(str);
  pstmt.setString(1,request.getParameter("name1"));
  pstmt.setString(2,request.getParameter("company"));
  pstmt.setString(3,request.getParameter("employeecode"));
  pstmt.setString(4,request.getParameter("designation"));
  pstmt.setString(5,request.getParameter("purposeofleave"));
  pstmt.setString(6,request.getParameter("addressonleave"));
  pstmt.setString(7,request.getParameter("fromdate"));
  pstmt.setString(8,request.getParameter("todate"));
  pstmt.setString(9,request.getParameter("cl"));
  pstmt.setString(10,request.getParameter("sl"));
  pstmt.setString(11,request.getParameter("el"));
  pstmt.setString(12,request.getParameter("lop"));
  pstmt.executeUpdate();
  
 %> 
 <font color="#573801" face="Verdana" size="2">Successfully submitted</font> 
 </td>
 </tr>
</table>
</body>
</html>
