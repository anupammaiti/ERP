<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
<style type="text/css">
<!--
body {
	background-image: url(images/bg.jpg);
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style></head>

<body>
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
<table align="center" background="images/bg.jpg" width="800">
<tr>
<td>
<form action="employeeinformationform1.jsp">
 <input type="image" src="images/back.jpg">
</form>
 
<%
 String str=request.getParameter("empid");
 out.println("<font color=#006600 size=4>");
 out.println("Data Of Employee with EMPID="+request.getParameter("empid"));
 out.println("</font>");
 Class.forName("com.mysql.jdbc.Driver");
 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
 String str1="select * from employee where empno=?";
 PreparedStatement stmt=conn.prepareStatement(str1);
 stmt.setString(1,str);
 ResultSet rs=stmt.executeQuery();
   out.println("<table align=center border=1 bordercolor=#006600 bgcolor=#FADFC3>");
  while(rs.next())
   {   
      
		out.println("<tr>");
		out.println("<td>");
		out.println("Company Name");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(23));
	   out.println("</td>");
	   out.println("</tr>");
	   
     out.println("<tr>");
	 out.println("<td>");
		out.println("Emp No.");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(1));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Name in Full");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(2));
	   out.println("</td>");
	   out.println("</tr>");
	 out.println("<tr>");
	 out.println("<td>");
		out.println("Name in Hris");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(3));
	   out.println("</td>");
	   out.println("</tr>");
       out.println("<tr>");
	   out.println("<td>");
		out.println("Father's Name");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(4));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Date Of Birth");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(5));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Sex");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(6));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Joining Date");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(7));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Designation");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(8));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Department");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(9));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Reporting To");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(10));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Job Level");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(11));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Location");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(12));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Manner Of Entry");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(13));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	    out.println("<td>");
		out.println("Nationality");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(14));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Birth Place");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(15));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Maritul Status");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(16));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Marriage Date");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(17));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Religion");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(18));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("PAN Number");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(19));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Passport Number");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(20));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Issue Date & Time");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(21));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
		out.println("<td>");
		out.println("Validity");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(22));
	   out.println("</td>");
	   out.println("</tr>");
	    out.println("<tr>");
		out.println("<td>");
		out.println("Qualification");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(24));
	   out.println("</td>");
	   out.println("</tr>");
   }
   
 

%>
</td>
</tr>
</table>
</body>
</html>
