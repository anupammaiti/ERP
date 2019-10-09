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

<table align="center" width="800" background="images/bg.jpg">
<tr>
<td height="148">
<form action="specific.jsp" method="post">
 <input type="hidden" name="username" value="fn_pranam">
 <input type="hidden" name="password" value="fn_pranam">
 <input type="image" src="images/home.jpg">
</form>
<%
Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
   String query="insert into invoice values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
   PreparedStatement pstmt=conn.prepareStatement(query);
   pstmt.setString(1,session.getAttribute("nameandaddress").toString());
   pstmt.setString(2,session.getAttribute("id").toString());
  
  pstmt.setString(3,session.getAttribute("invoiceno").toString());
  pstmt.setString(4,session.getAttribute("date").toString());
   pstmt.setString(5,session.getAttribute("refferenceno").toString());
   pstmt.setString(6,session.getAttribute("srlnumber").toString());
   pstmt.setString(7,session.getAttribute("name").toString());
    pstmt.setString(8,session.getAttribute("unitprice").toString());
  pstmt.setString(9,session.getAttribute("price").toString());
   pstmt.setString(10,session.getAttribute("servicetax").toString());
   pstmt.setString(11,session.getAttribute("vat").toString());
   pstmt.setString(12,session.getAttribute("totalamount").toString());
   pstmt.setString(13,"ajay");
   pstmt.setString(14,session.getAttribute("dept").toString());
  pstmt.executeUpdate();
  
%>
<font color="#573801" size="4">Successfully Added To Database</font>
</td>
</tr>
</table>
</body>
</html>
