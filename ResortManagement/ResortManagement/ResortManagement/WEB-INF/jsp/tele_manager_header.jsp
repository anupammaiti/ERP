<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8'/>
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
        <li><a href="#" class="parent"><span>Layout</span></a></li>
       <li><a href="#" class="parent"><span>Customers</span></a>
       <div>
       	<ul>
       		<li>
       			<a href="#"><span>New Guest</span></a>	
       			<div>
       				<ul>
       					<li>
       						<a href="view_guest_by_tele_manager.res"><span>View</span></a>
       					</li>
       					
       				</ul>
       			</div>	
       		</li>
       		<li>
       			<a href="view_customer_by_tele_manager.res"><span>Customers</span></a>
       		</li>
       		
       	</ul>
       </div>
       </li>
       <li><a href="#" class="parent"><span>Employee</span></a>
       	<div>
       		<ul>
       			<li>
       				<a href="view_tele_caller_by_manager.res"><span>Employee List</span></a>
       			</li>
       		</ul>
       	</div>
       </li>
       <li><a href="rep_villadetails.res" target="_blank"><span>Villa Details</span></a></li>
       <li><a href="#" class="parent"><span>Resource</span></a>
       	</li>
       <li>
       	<a href="#"><span>Personal</span></a>
       	<div>
       		<ul>
       			<li>
       				<a href="marketing_manager_editing_password.res"><span>Change Password</span></a>
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