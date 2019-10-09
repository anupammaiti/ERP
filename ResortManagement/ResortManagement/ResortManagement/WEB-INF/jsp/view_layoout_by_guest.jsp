<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">

<title>Resort</title>
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/easyzoom.js"></script>

<link rel="stylesheet" media="all" href="css/easyzoom.css" type="text/css"/>
<link rel="stylesheet" type="text/css" media="all" href="css/resort_styles.css"/>
</head>
<body>
	<div class="project_title">
		<img src="images/svs_logo.gif" alt="logo" id="logo"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span id="proj_title">RESORT MANAGEMENT</span>
	</div>

	<div class="main_screen" align="center">
		<div class="menu" align="left">	
			<jsp:include page="guest_user_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
			<div id="w">
      
    <h2>@3x Zoom</h2>
    <div class="easyzoom easyzoom--adjacent">
      <a href="images/master_layout1.jpg"><img src="images/master_layout2.jpg" alt="autumn road" width="480" height="320"></a>
    </div>
  </div>
		</div>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>
	
<script type="text/javascript">
$(function(){
  var $easyzoom = $('.easyzoom').easyZoom();
});
</script>
	
</body>
</html>