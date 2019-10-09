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

 <font color="#573801" size="4"><center>
   Leave Applications </center></font>
 <%
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
   String str="select * from  leaveapplications";  
   Statement stmt=conn.createStatement();
   ResultSet rs=stmt.executeQuery(str);
   
    out.println("<table border=\"1\" bordercolor=#F0B269 bgcolor=#FADFC3 align=\"center\">");
	out.println("<tr>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Name");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Company.");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Employee Code");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Designation");
	   out.println("</font>");
	   out.println("</td>");
	    out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Purpose Of Leave");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Address While on Leave");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("From Date");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("To Date");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("CL");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("SL");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("EL");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("LOP");
	   out.println("</font>");
	   out.println("</td>");
	   out.println("<td>");
	   out.println("<font color=\"#573801\">");
	   out.println("Sanction");
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
	   out.println("<input type=checkbox name=check >");
	   out.println("</td>");
	   out.println("</tr>");
	  
	 }
	  out.println("</table>");
	  
%>  
<form action="homepage1.jsp" method="post">
 <input type="hidden" name="username" value="hr_admin">
 <input type="hidden" name="password" value="hr_admin">
 <h4 align="center"><input type="image" src="images/submit.jpg"></h4>
</form>
</td>
</tr>
</table>
</body>
</html>
