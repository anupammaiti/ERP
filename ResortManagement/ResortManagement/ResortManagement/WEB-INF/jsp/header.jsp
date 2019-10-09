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
</head>
<body><%String username=(String)session.getAttribute("username");
%>
<span id="loginby"><b>Welcome </b>: <i><%=username%></i></span>
<span id="dateandtime"></span>
<div id="menu" align="left">
    <ul class="menu">
        <li><a href="main.res" class="parent"><span>Layout</span></a></li>
       <li><a href="#" class="parent"><span>Customer Details</span></a>
       <div>
       	<ul>
       		<li>
       			<a href="" ><span id="remainder">Guest </span></a>
       			<div>
       				<ul>
       					<li>
       						<a href="guest_users_by_telecaller.res"><span>View Guest</span></a>	
       					</li>
       					<li>
       						<a href="tele_caller_guest_form.res"><span>Guest Form</span></a>
       			  		</li>
       				</ul>
       			</div>		
       		</li>
       		
       		<li>
       			<a href="#"><span>Customer</span></a>
       			<div>
       				<ul>
       					<li>
       						<a href="guest_to_customer_list.res"><span>Generate Customer</span></a>
       					</li>
       					<li>
       						<a href="view_customer_details_list.res"><span>View Customer</span></a>
       					</li>
       				</ul>
       			</div>
       		</li>
       		
       	</ul>
       </div>
       </li>
       <li>
       	<a href="#" class="parent"><span>Personal</span></a>
       	<div>
       		<ul>
       			<li>
       				<a href="tele_caller_edit_password.res"><span>Change Password</span></a>
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