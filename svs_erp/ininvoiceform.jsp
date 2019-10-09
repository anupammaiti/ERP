<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>

<body bgcolor="#F1B672" background="images/bg.jpg">


<table width="800"  align="center" cellpadding="0" cellspacing="0" border="1" bordercolor="#C58941">
  <tr>
    <th scope="col"><img src="images/banner.jpg"></th>
  </tr>
</table>
<form action="specific.jsp">
 
 <input type="hidden" name="username" value="sl_admin">
 <input type="hidden" name="password" value="sl_admin">
  <input type="image" src="images/home.jpg">
 </form> 
<%

   Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
   String str1="select * from invoice";
   Statement stmt=conn.createStatement();
   //pstmt1.setString(1,request.getParameter("candidatename"));
   ResultSet rs=stmt.executeQuery(str1);
   
	out.println("<table border=\"1\" bordercolor=#F0B269 bgcolor=#FADFC3 align=\"center\">");
	out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Customer Name");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Id");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Invoice No.");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Date");
	   out.println("</font>");
	   out.println("</td>");
	    out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Refference No.");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Sr No.");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println(" Item Name");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Unit Price");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("NUmber Of Pieces");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Service Tax");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Vat");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Educess Tax");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Total");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("</tr>");
	   
   while(rs.next())
     {
	  
	   out.println("<tr>");
	   
	   
	   
	   out.println("<td>");
	   out.println(rs.getString(1));
	   out.println("</td>");
	   
	   out.println("<td>");
	   out.println(rs.getString(2));
	   //out.println(rs.getString(2));
	   out.println("</td>");
	   
	   out.println("<td>");
	   out.println(rs.getString(3));
	   out.println("</td>");
	   
	   out.println("<td>");
	   out.println(rs.getString(4));
	   out.println("</td>");
	   
	   out.println("<td>");
	   out.println(rs.getString(5));
	   out.println("</td>");
	   
	   out.println("<td>");
	   out.println(rs.getString(6));
	   out.println("</td>");
	   
	   out.println("<td>");
	   out.println(rs.getString(7));
	   out.println("</td>");
	   
	   out.println("<td>");
	   out.println(rs.getString(8));
	   out.println("</td>");
	   
	   out.println("<td>");
	   out.println(rs.getString(9));
	   out.println("</td>");
	   
	   out.println("<td>");
	   out.println(rs.getString(10));
	   out.println("</td>");
	   
	   out.println("<td>");
	   out.println(rs.getString(11));
	   out.println("</td>");
	   
	   out.println("<td>");
	   out.println(rs.getString(12));
	   out.println("</td>");
	  out.println("<td>");
	   out.println(rs.getString(12));
	   out.println("</td>");
	   out.println("</tr>");
	  
	 }
	  out.println("</table>");
	
	 
   
%>
</body>
</html>
