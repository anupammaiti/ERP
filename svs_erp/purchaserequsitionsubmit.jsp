<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>

<body background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="804" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
<form action="specific.jsp">
 
 <input type="hidden" name="username" value="admin">
 <input type="hidden" name="password" value="admin">
  <input type="image" src="images/home.jpg">
 </form>
 <%
  Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
   String query="insert into purchaserequsition values(?,?,?,?,?,?)";
   PreparedStatement pstmt=conn.prepareStatement(query);
   pstmt.setString(1,request.getParameter("srno"));
   pstmt.setString(2,request.getParameter("itemname"));
   pstmt.setString(3,request.getParameter("itemcode"));
  pstmt.setString(4,request.getParameter("internalcode"));
   pstmt.setString(5,request.getParameter("qtyrequired"));
   pstmt.setString(6,request.getParameter("remarks"));
   pstmt.executeUpdate();
   pstmt.setString(1,request.getParameter("srno1"));
   pstmt.setString(2,request.getParameter("itemname1"));
   pstmt.setString(3,request.getParameter("itemcode1"));
  pstmt.setString(4,request.getParameter("internalcode1"));
   pstmt.setString(5,request.getParameter("qtyrequired1"));
   pstmt.setString(6,request.getParameter("remarks1"));
   pstmt.executeUpdate();
%> 
</body>
</html>
