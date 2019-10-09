<%@page import="java.sql.*"%>

<html>
<head>


<title>SVS</title>
</head>

<body>

<%



Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
String str="select qty from closing_stock where stock_item=?";
//Statement pstmt=conn.createStatement();
PreparedStatement pstmt=conn.prepareStatement(str);
pstmt.setString(1,request.getParameter("q"));
ResultSet rs=pstmt.executeQuery();
rs.next();


 %>
 <input type="hidden"  name="qt"  id="qt"  value="<%out.println(rs.getString(1));%>" />
 
  




</body>
</html>
