<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>header</title>
	<link type="text/css" href="css/menu.css" rel="stylesheet" />
	
    <script type="text/javascript" src="js/jquery-1.7.1.js"></script>
    <script type="text/javascript" src="js/menu.js"></script>
</head>
<body>

<!-- Menu Bar -->
<div id="menu" align="center">
    <ul class="menu">
        <li><a href="Admin.erp" class="parent"><span>Home</span></a></li>
       <li><a href="#" class="parent"><span>Finance</span></a></li>
       <li><a href="#"><span>Inventory</span></a></li>
       <li><a href="#"><span>Sales & Recives</span></a>
       <li><a href=""><span>Human Resource</span></a>
        <li class="last"><a href="logout.erp"><span>logout</span></a></li>
    </ul>
</div>


<script type="text/javascript">
$(document).ready(function(){
$("body div:last").remove();
});
</script>
</body>
</html>