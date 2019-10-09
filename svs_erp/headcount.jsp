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
<table width="804" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="800"><img src="images/banner.jpg" width="807"></td>
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

 <%
  int malecount=0,femalecount=0,empcount=0,doccount=0,procount=0,postcount=0,techcount=0,grcount=0,ungrcount=0;
  Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
   String empcount1="select * from  employee";
    Statement stmt1=conn.createStatement();
	ResultSet rs1=stmt1.executeQuery(empcount1);
	while(rs1.next())
	{
	  empcount++;
	 }
   String malequery="select * from  employee where sex='male'";
    Statement stmt=conn.createStatement();
	ResultSet rs2=stmt.executeQuery(malequery);
	while(rs2.next())
	{
	  malecount++;
	 }
	String femalequery="select * from  employee where sex='female'";
    Statement stmt2=conn.createStatement();
	ResultSet rs3=stmt2.executeQuery(femalequery);
	while(rs3.next())
	{
	  femalecount++;
	 }
	 String malequerya="select * from  employee where qualification='doctorities'";
    Statement stmta=conn.createStatement();
	ResultSet rsa=stmta.executeQuery(malequerya);
	while(rsa.next())
	{
	  doccount++;
	 }
	 String malequery4="select * from  employee where qualification='professionals'";
    Statement stmt4=conn.createStatement();
	ResultSet rs4=stmt4.executeQuery(malequery4);
	while(rs4.next())
	{
	  procount++;
	 }
	 String malequery5="select * from  employee where qualification='post graduates'";
    Statement stmt5=conn.createStatement();
	ResultSet rs5=stmt5.executeQuery(malequery5);
	while(rs5.next())
	{
	  postcount++;
	 }
	 String malequery6="select * from  employee where qualification='technical'";
    Statement stmt6=conn.createStatement();
	ResultSet rs6=stmt6.executeQuery(malequery6);
	while(rs6.next())
	{
	  techcount++;
	 }
	 String malequery7="select * from  employee where qualification='graduates'";
    Statement stmt7=conn.createStatement();
	ResultSet rs7=stmt7.executeQuery(malequery7);
	while(rs7.next())
	{
	  grcount++;
	 }
	 String malequery8="select * from  employee where qualification='under graduates'";
    Statement stmt8=conn.createStatement();
	ResultSet rs8=stmt8.executeQuery(malequery8);
	while(rs8.next())
	{
	  ungrcount++;
	 }
  %> 
 <h3 align="center"><font color="#573801">Head Count</font></h3>
 <table width="800" border="1" align="center" bgcolor="#FADFC3" bordercolor="#F0B269">
   <tr>
     <th scope="col"><font color="#573801" size="4">Particulars</font></th>
     <th scope="col"><font color="#573801" size="4">Jul-07</font></th>
     <th scope="col"><font color="#573801" size="4">Aug-07</font></th>
     <th scope="col"><font color="#573801" size="4">Sep-07</font></th>
     <th scope="col"><font color="#573801" size="4">Oct-07</font></th>
     <th scope="col"><font color="#573801" size="4">Nov-07</font></th>
     <th scope="col"><font color="#573801" size="4">Dec-07</font></th>
     <th scope="col"><font color="#573801" size="4">Jan-08</font></th>
	      <th scope="col"><font color="#573801" size="4">Feb-08</font></th>
   </tr>
   <tr>
     <td><font color="#573801" size="4">On Roll Employee</font></td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
	 <td><% out.println(empcount);%></td>
	
   </tr>
   <tr>
     <td><font color="#573801" size="4">Add:New Joinings</font></td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
	 <td><% out.println(empcount);%></td>
   </tr>
   <tr>
     <td><font color="#573801" size="4">On Roll at the end of Period</font></td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
	 <td><% out.println(empcount);%></td>
   </tr>
   <tr>
     <td><font color="#573801" size="4">On Roll at the end of Period </font></td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
	 <td><% out.println(empcount);%></td>
   </tr>
   <tr>
     <td><font color="#573801" size="4">Males at the Beginning</font></td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
	 <td><% out.println(malecount);%></td>
   </tr>
   <tr>
     <td><font color="#573801" size="4">Males at the End of Period</font></td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
	 <td><% out.println(malecount);%></td>
   </tr>
   <tr>
     <td><font color="#573801" size="4">Females at the Beginning</font></td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td><% out.println(femalecount);%></td>
   </tr>
   <tr>
     <td><font color="#573801" size="4">Females at the End of Day</font></td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
	 <td><% out.println(femalecount);%></td>
   </tr>
   <tr>
     <td><font color="#573801" size="4">Doctorates</font></td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
	 <td><% out.println(doccount);%></td>
   </tr>
   <tr>
     <td><font color="#573801" size="4">Professionals</font></td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
	 <td><% out.println(procount);%></td>
   </tr>
   <tr>
     <td><font color="#573801" size="4">Post Graduates</font></td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
	 <td><% out.println(postcount);%></td>
   </tr>
   <tr>
     <td><font color="#573801" size="4">Technical</font></td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
	 <td><% out.println(techcount);%></td>
   </tr>
   <tr>
     <td><font color="#573801" size="4">Graduates</font></td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
	 <td><% out.println(grcount);%></td>
   </tr>
   <tr>
     <td><font color="#573801" size="4">Under Graduates</font></td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
     <td>--</td>
	 <td><% out.println(ungrcount);%></td>
   </tr>
 </table>
 </td>
 </tr>
</table>
</body>
</html>
