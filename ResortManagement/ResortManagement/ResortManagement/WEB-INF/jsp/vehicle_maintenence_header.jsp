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
<body><%String username=(String)session.getAttribute("username");
%>
<span id="loginby"><b>Welcome </b>: <i><%=username%></i></span>
<span id="dateandtime"></span>
<div id="menu" align="left">
    <ul class="menu">
        <li><a href="vm_driver_main.res" class="parent"><span>Home</span></a></li>
       <li><a href="#" class="parent"><span>Vehicle Details</span></a>
       <div>
       	<ul>
       		<li>
       			<a href="vm_vehicle_display.res"><span>Vehicle Display</span></a>
       		</li>
       		<li>
       			<a href="rep_driver_vehicle_incurence.res" target="_blank"><span>Vehicle Insurence</span></a>
       		</li>
       		<li>
       			<a href="#" ><span>Maintenance</span></a>
       			<div>
       				<ul>
       					<li>
       						<a href="rep_driver_vehicle_maintenance.res" target="_blank"><span>View</span></a>
       					</li>
       					<li>
       						<a href="#"><span>Request</span></a>
       					</li>
       				</ul>
       			</div>
       		</li>
       	</ul>
       </div>
       </li>
       <li><a href="#" class="parent"><span>Personal</span></a>
       	<div>
       		<ul>
       			<li>
       				<a href="#"><span>Change Password</span></a>
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