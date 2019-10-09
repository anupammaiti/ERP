<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>

<body>
  <%
    Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
    String str="insert into usernames values(?,?)";
	PreparedStatement pstmt=conn.prepareStatement(str);
	pstmt.setString(1,"ajay");
	pstmt.setString(2,"ajay");
	pstmt.executeUpdate();
    out.println("Inserted Successfully");
  %>
</body>
</html>
