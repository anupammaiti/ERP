<!DOCTYPE html>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="msg" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset='utf-8'/>

<title>Resort</title>
<link rel="stylesheet" href="css/resort_styles.css"/>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
</head>
<%
 String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 //System.out.println("hi"+username);
 //System.out.println("hi"+pwd);
 if((username!=null)&&(pwd!=null))
 { %>
<body onload="villaDetails();">
	<div class="project_title" > 
		<img src="images/svs_logo.gif" alt="logo" id="logo" height="50px" width="100px"/>
		<span id="proj_title">RESORT MANAGEMENT</span>
	</div>

	<div class="main_screen" align="center">
		<div class="menu" align="left">	
			<jsp:include page="admin_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content1" align="left" >
			<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
			
			<script type="text/javascript" src="js/resort_js.js"></script>
		<div class="left_content">
		<img id="zoom_01" src='images/small/master_layout_small.jpg' data-zoom-image="images/large/master_layout_large.jpg" height="500px" width="500px"/>
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
		
<div class="villatotal_details" align="center">
		<h3>Villa Details</h3>
		<table border="1" cellpadding="0" cellspacing="0" align="center">
			<tr>
			<td>
				Villa Name
			</td>
			<td>
				Facing Villa
			</td>
			<td>
				Villa Type
			</td>
			<td>
				Total Villas
			</td>
			<td>
				Available Villas
			</td>
			</tr>
			<tbody id="villa_total_details">	
				
			</tbody>
		</table>
		</div>
				 	
				
			
		</div>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>
	<script type="text/javascript">
$(document).ready(function(){
$("body div:last").remove();
});
</script>
	<% }
else
{
response.sendRedirect("login.res");
}%>	
</body>
</html>
