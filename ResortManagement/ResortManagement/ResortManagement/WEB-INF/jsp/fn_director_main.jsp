<!DOCTYPE html>

<html>
<head>
<meta charset='utf-8'/>
<title>Resort</title>

<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>

<link rel="stylesheet" href="css/resort_styles.css"/>
</head>
<%
 String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 //System.out.println("hi"+username);
 //System.out.println("hi"+pwd);
 if((username!=null)&&(pwd!=null))
 { %>
<body>
	<div class="project_title">
		<img src="images/svs_logo.gif" alt="logo" id="logo"/>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="proj_title">RESORT MANAGEMENT</span>
	</div>
	<div class="main_screen">
		<div class="menu">
		<jsp:include page="fn_director_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
		<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src='js/jquery.elevatezoom.js'></script>
<script type="text/javascript" src="js/resort_js.js"></script>		
		<img id="zoom_01" src='images/small/master_layout_small.jpg' data-zoom-image="images/large/master_layout_large.jpg" height="500px" width="490px"/>
<script type="text/javascript">
//alert('Hello');
$('#zoom_01').elevateZoom({
    zoomType: "inner",
cursor: "crosshair",
zoomWindowFadeIn: 600,
zoomWindowFadeOut: 550
   });
</script>
		
		</div>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	
	</div>
	<% }
else
{
response.sendRedirect("login.res");
}%>
</body>
</html>