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
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
  <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td background="images/after_main.jpg" height="41" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome To Finance Department</font>      <font size="3" face="verdana">
      <!--<img src="images/after_main.jpg">-->
    </font></strong>    	</td>
  </tr>
</table>
<%
 Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
   String query="insert into companyinformation values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
   PreparedStatement pstmt=conn.prepareStatement(query);
   pstmt.setString(1,request.getParameter("companyname"));
   pstmt.setString(2,request.getParameter("mailingname"));
  
  pstmt.setString(3,request.getParameter("statutory"));
  pstmt.setString(4,request.getParameter("state"));
   pstmt.setString(5,request.getParameter("pincode"));
   pstmt.setString(6,request.getParameter("telephonenumber"));
   pstmt.setString(7,request.getParameter("email"));
    pstmt.setString(8,request.getParameter("currency"));
  pstmt.setString(9,request.getParameter("maintain"));
   pstmt.setString(10,request.getParameter("finacialyearfrom"));
   pstmt.setString(11,request.getParameter("booksbeginningfrom"));
   pstmt.setString(12,request.getParameter("numberofdecimalplaces"));
    pstmt.setString(13,request.getParameter("symbolfordecimalportion"));
    pstmt.executeUpdate();
%>
<table align="center" width="800">
 <tr>
 <td align="center"> 
   <font color="#573801" face="verdana" size="2">
    Company Created  with Name:<%=request.getParameter("companyname")%>
   </font>
  </td>
  </tr>
  <tr>
 <td align="center">
<form action="specific.jsp">
  <input type="hidden" name="username" value="fn_pranam">
  <input type="hidden" name="password" value="fn_pranam">
  <input type="image" src="images/home.jpg">
</form>
</td>
</tr>
</table>
</body>
</html>
