<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu</title>
<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<link rel="stylesheet" href="css/menu.css"/>
<script>
function disableBackButton()
 {
  //location.href("logout.html");

 }
if(window.history.forward(1) != null)
         window.history.forward(1);
</script>
</head>
<body>
<span id="dateandtime"></span>
<%String username=(String)session.getAttribute("username");
%>
<span id="loginby"><b>Welcome </b>: <i><%=username%></i></span>
<div id="menu" align="left">
    <ul class="menu">
        <li><a href="tele_director_main.res" class="parent"><span>Layout</span></a></li>
       <li><a href="#" class="parent"><span>Customers</span></a>
       <div>
       	<ul>
       		<li>
       			<a href="view_guestby_tele_director.res"><span>New Guest</span></a>		
       		</li>
       		<li>
       			<a href="view_customer_by_tele_director.res"><span>Customers</span></a>
       		</li>
       		
       	</ul>
       </div>
       </li>
       <li><a href="#" class="parent"><span>Employee</span></a>
       <div>
       		<ul>
       			<li>
       				<a href="tele_director_allot_managers.res"><span>Employees List</span></a>
       			</li>
       			<li>
       				<a href="tele_view_caller.res"><span>Employee Allotment</span></a>
       			</li>
       		</ul>
       </div>
       </li>
       <li>
       	<a href="rep_villadetails.res" target="_blank"><span>Villa Details</span></a>
       </li>
       <li>
       		<a href="#" class="parent"><span>Personal</span></a>
       		<div>
       			<ul>
       				<li>
       				<a href="editpassword.res"><span>Change Password</span></a>
       				</li>
       				<li>
       				<a href="update_hr_employee.res"><span>Change Profile</span></a>
       			</li>
       			</ul>
       		</div>
       </li>
              <li class="last"><a href="logout.res"><span>logout</span></a></li>
      </ul>
  
</div>


<script type="text/javascript">
$(document).ready(function(){
$("body div:last").remove();
});
</script>

</body>
</html>