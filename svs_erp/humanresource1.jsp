<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>



<% 
boolean admin_check = false;
boolean admin = false;
if(session.getAttribute("user_name").toString().equals("admin_account") & "admin_account".equals(session.getAttribute("pwd").toString()) )
{
	admin_check = true;
}
else if(session.getAttribute("user_name").toString().equals("admin") & "admin".equals(session.getAttribute("pwd").toString()) )
{
	admin = true;
}
%>



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
<table width="199" align="center" bgcolor="#FFD3A2" background="images/bg.jpg">
 <tr>
  <td width="191">
  <form action="employeeinformationform1.jsp">
     <input type="hidden" name="username" value="admin">
	 <input type="hidden" name="password" value="admin">  
       <input type="image" src="images/emp_info_report.jpg">
   
   </form>
   </td>
   </tr>
   <tr>
   <td width="191">
   <form action="interviewevaluationform1.jsp">
     <input type="hidden" name="username" value="admin">
	 <input type="hidden" name="password" value="admin">
	 <input type="image" src="images/interview_report.jpg">
   </form>
   
    
   </td>
   </tr>
   <tr>
   <td width="191">
   <form action="leaveapplication1.jsp">
     <input type="hidden" name="username" value="admin">
	 <input type="hidden" name="password" value="admin">
	 <input type="image" src="images/leave_application_report.jpg">
   </form>
   
    
   </td>
    
   </tr>
   <tr>
   <td width="191">
   <form action="employeerequsitionreport.jsp">
     <input type="hidden" name="username" value="admin">
	 <input type="hidden" name="password" value="admin">
	 <input type="image" src="images/employee_requi_report.jpg">
   </form>
   
    
   </td>
   </tr>
   <tr>
   <td width="191">
   <form action="headcount.jsp">
     <input type="hidden" name="username" value="admin">
	 <input type="hidden" name="password" value="admin">
	 <input type="image" src="images/employee_head_count.jpg">
   </form>
   
    
   </td>
   </tr>
</table>
   
  

</body>
</html>
