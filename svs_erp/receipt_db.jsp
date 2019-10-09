<%@page import="java.sql.*"%>

<html>
<head>


<title>SVS</title>
</head>

<body>

<%



Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
String str="select balance from current_assets where ledgername=?";
//Statement pstmt=conn.createStatement();
PreparedStatement pstmt=conn.prepareStatement(str);
pstmt.setString(1,request.getParameter("q"));
ResultSet rs=pstmt.executeQuery();
while(rs.next())
{

  out.println(rs.getString(1));
}
%>


</body>
</html>
