<!DOCTYPE html>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="msg" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset='utf-8'/>

<title>Resort</title>
<link rel="stylesheet" href="css/resort_styles.css"/>
<script type="text/javascript" src="js/resort_js.js"></script>
</head>
<%
 String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 //System.out.println("hi"+username);
 //System.out.println("hi"+pwd);
 if((username!=null)&&(pwd!=null))
 { %>
<body onload="sundryCreditors();">
	<div class="project_title" > 
		<img src="images/svs_logo.gif" alt="logo" id="logo" height="50px" width="100px"/>
		<span id="proj_title">RESORT MANAGEMENT</span>
	</div>

	<div class="main_screen" align="center">
		<div class="menu" align="left">	
			<jsp:include page="admin_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content1" align="center">
		<fieldset>
			<legend>Sundry Creditors</legend>
			<table border="1">
				<tr>
					<th>
						CustomerId 
					</th>
					<th>
						Total Amount
					</th>
					<th>
						Amount Paid
					</th>
					<th>	
						Remaining Amount
					</th>
					<th>
						Total Installments
					</th>
					<th>
						Installments Paid
					</th>
				</tr>
				<tbody id="sundry_creditors"></tbody>
			</table>
		</fieldset>
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
