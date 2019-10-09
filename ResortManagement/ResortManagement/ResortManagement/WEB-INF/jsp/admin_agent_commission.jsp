<!DOCTYPE html>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="msg" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset='utf-8'/>
<title>Resort</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	$('#percentage').blur(function(){
		var villaprice=$('#price').val();
		var percentage=$('#percentage').val();
		var totalprice;
		totalprice=(villaprice*percentage)/100;
		alert('Total Amount \t'+totalprice);
		
		$('#totalamount').val(totalprice);
	});
	
});
</script>
<link rel="stylesheet" href="css/resort_styles.css"/>
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
		<div class="content1" align="center" >
			<fieldset><legend>Agent Commission</legend>
			<form:form action="sfn_agent_comission.res" method="post" commandName="agentComissionBean">
			<table>  
				<tr>
					<td>
						Villa Name
					</td>
					<td>
						<form:input path="villa_name"/>		
					</td>
				</tr>
				<tr>
					<td>
						Facing Villa
					</td>
					<td>
						<form:select path="facing_villa">
							<form:option value="East">East</form:option>
							<form:option value="West">West</form:option>
							<form:option value="North">North</form:option>
							<form:option value="South">South</form:option>
						</form:select>
					</td>
				</tr>
				<tr>
					<td>
						Villa Type
					</td>
					<td>
						<form:select path="villa_type">
							<form:option value="1BHK">1BHK</form:option>
							<form:option value="1BHK">2BHK</form:option>
							<form:option value="1BHK">3BHK</form:option>
							<form:option value="1BHK">4BHK</form:option>
							<form:option value="1BHK">5BHK</form:option>
						</form:select>
					</td>
				</tr>
				<tr>
					<td>
						Villa Price
					</td>
					<td>
					<form:input path="villa_price" id="price"/>
					</td>
				</tr>
				<tr>
					<td>
						Percentage 
					</td>
					<td>
						<form:input path="comission_percent" id="percentage"/>
					</td>
				</tr>
				<tr>
					<td>
						Agent Amount
					</td>
					<td>
						<form:input path="agent_amount" id="totalamount"/>
					</td>
				</tr>
				<tr>
					<td>
					</td>
					<td>
						<input type="image" src="images/submit_button.jpg" id="button1"/>
					</td>
				</tr>
			</table>	
			</form:form>
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
