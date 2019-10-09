<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Resort</title>
  <script type="text/javascript" src="js/jquery-2.0.0.js"></script>
  <script type="text/javascript" src="js/resort_js.js"></script>
<link rel="stylesheet" href="css/resort_styles.css"/>
<%
 String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 //System.out.println("hi"+username);
 //System.out.println("hi"+pwd);
 if((username!=null)&&(pwd!=null))
 { %>
</head>
<body>
	<div class="project_title" > 
		<img src="images/svs_logo.gif" alt="logo" id="logo" height="50px" width="100px"/>
		<span id="proj_title">RESORT MANAGEMENT</span>
	</div>

	<div class="main_screen" align="center">
		<div class="menu" align="left">	
			<jsp:include page="admin_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center" id="master_layout_image">
		<img src="images/master_layout.jpg" id="layout_image" width="80%" height="440px"/ >
		<div id="dialogs">
		<h3>Plot Details</h3>
			<p>You can check the details of the booked Villas</p>
			<table class="plotbooking">
				<tr>
					<td>
						<h3>Block1</h3>
						<table class="block" border="1" id="blk1"></table>
					</td>
					<td>
						<h3>Block2</h3>
						<table border="1" class="block" id="blk2">
							
							
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<h3>Block3</h3>
						<table border="1" class="block" id="blk3">
							
						</table>
					</td>
					<td>
						<h3>Block4</h3>
						<table class="block" id="blk4">
							
						</table>
					</td>
				</tr>
			</table>
		<a href="#" id="close">Close</a>
		</div>
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
