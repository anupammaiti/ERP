<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>


<% 
boolean hr_admin = false;
boolean admin = false;
if(session.getAttribute("user_name").toString().equals("hr_admin") & "hr_admin".equals(session.getAttribute("pwd").toString()) )
{
	hr_admin = true;
}
else if(session.getAttribute("user_name").toString().equals("admin") & "admin".equals(session.getAttribute("pwd").toString()) )
{
	admin = true;
}
%>

<body background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="1500" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="800"><img src="images/banner.jpg" width="1000"></td>
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
<table align="center" width="800" background="images/bg.jpg">
<tr>
<td height="151">
<% if(hr_admin){ %>
<form action="specific.jsp" method="post">
 <input type="hidden" name="username" value="hr_admin">
 <input type="hidden" name="password" value="hr_admin">
  <input type="image" src="images/home.jpg">
 </form> 
 <% } %>
 
 <% if(admin){ %>
 <form action="humanresource1.jsp" method="post">
 <input type="hidden" name="username" value="admin">
 <input type="hidden" name="password" value="admin">
  <input type="image" src="images/home.jpg">
 </form> 
<% } %>
 <strong><font color="#573801" size="2" face="verdana">
   Employee Details
 </font></strong>
<%
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
   String str="select * from  employee";  
   Statement stmt=conn.createStatement();
   ResultSet rs=stmt.executeQuery(str);
   out.println("<center>");
   out.println("<font color=\"#573801\" size=\"4\">");
   out.println("Details Of Employee");
   out.println("</font>");
   out.println("</center>");
    out.println("<table border=\"1\" bordercolor=\"#573801\" align=\"center\" bgcolor=#FADFC3>");
	out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Company Name");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Emp No.");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Name in Full");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Name in Hris");
	   out.println("</font>");
	   out.println("</td>");
	    out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Father's name");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Date of Birth");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Sex");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Joining Date");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Designation");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Department");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Reporting To");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Job Level");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Location");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Manner Of Entry");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Nationality");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Birth Place");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Marital Status");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Marriage Date");
	   out.println("</font>");
	   out.println("</td>");
	    out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Religion");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("PAN number");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Passport Number");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Issue Date & Place");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Validity");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Qualification");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("</tr>");
	   
   while(rs.next())
     {
	  
	   out.println("<tr>");
	   
	   out.println("<td>");
	   
	   out.println(rs.getString(23));
	   out.println("</td>");
	   
	   
	   out.println("<td>");
	   out.println(rs.getString(1));
	   out.println("</td>");
	   
	   out.println("<td>");
	   out.println("<a href='employeeinfo.jsp?empid="+rs.getString(1)+"'>"+rs.getString(2)+"</a>");
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
	   out.println(rs.getString(13));
	   out.println("</td>");
	   
	   out.println("<td>");
	   out.println(rs.getString(14));
	   out.println("</td>");
	   
	   out.println("<td>");
	   out.println(rs.getString(15));
	   out.println("</td>");
	   
	   out.println("<td>");
	   out.println(rs.getString(16));
	   out.println("</td>");
	   
	   out.println("<td>");
	   out.println(rs.getString(17));
	   out.println("</td>");
	   
	   out.println("<td>");
	   out.println(rs.getString(18));
	   out.println("</td>");
	   
	   out.println("<td>");
	   out.println(rs.getString(19));
	   out.println("</td>");
	   
	   out.println("<td>");
	   out.println(rs.getString(20));
	   out.println("</td>");
	   
	   out.println("<td>");
	   out.println(rs.getString(21));
	   out.println("</td>");
	   
	   out.println("<td>");
	   out.println(rs.getString(22));
	   out.println("</td>");
	   out.println("<td>");
	   out.println(rs.getString(24));
	   out.println("</td>");
	   out.println("</tr>");
	  
	 }
	  out.println("</table>");
	  %>
    </td>
  </tr>
</table>
</body>
</html>
