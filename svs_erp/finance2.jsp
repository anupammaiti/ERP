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
   String str1="select empno,name,designation,offered_sal,department from employee";
   Statement stmt=conn.createStatement();
   //pstmt1.setString(1,request.getParameter("candidatename"));
   ResultSet rs=stmt.executeQuery(str1);
   out.println("<center>");
   out.println("<font color=\"#573801\" size=\"4\">");
   out.println("Salary Report");
   out.println("</font>");
   out.println("</center>");
    out.println("<table border=\"1\" bordercolor=#F0B269 align=\"center\" bgcolor=#FADFC3>");
	out.println("<tr>");
		
		out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Employee No");
	   out.println("</font>");
	   out.println("</td>");
		
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Employee Name");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Designation");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("CTC Salary");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Department");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("</tr>");
	   while(rs.next())
	   {
	     out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println(rs.getString(1));
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println(rs.getString(2));
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println(rs.getString(3));
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println(rs.getDouble(4));
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println(rs.getString(5));
	   out.println("</font>");
	   out.println("</td>");
	 out.println("</tr>");
	  }
	  out.println("</table>");  
%>

</body>
</html>
