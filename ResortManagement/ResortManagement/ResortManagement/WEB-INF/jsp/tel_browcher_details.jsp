<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="msg" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Resort</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<link href="css/CalendarControl.css" rel="stylesheet" type="text/css">
<script src="js/CalendarControl.js" language="javascript"></script>
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
		<div class="content" align="left" >
			<fieldset>
				<legend>
					Tele Browcher Details
				</legend>
				<form:form action="" method="post" commandName="teleAgentPercentageDetails">
				<table align="center">
					<tr>
						<td>
							Agent Id		
						</td>
						<td>
							<form:select path="agentid" id="agentid"></form:select>
						</td>
					</tr>
					<tr>
						<td>
							AgentName
						</td>
						<td>
							<form:input path="agentname" id="agentname"/>
						</td>
					</tr>
					<tr>
						<td>
							No Of Vouchers
						</td>
						<td>
							<form:input path="noofvouchers"/>
						</td>
					</tr>
					<tr>
						<td>
							Browchers Given Date
						</td>
						<td>
							<form:input path="vouchergivendate" onfocus="showCalendarControl(this);" value="yyyy-mm-dd" required="true"/>
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
	<% }
else
{
response.sendRedirect("login.res");
}%>	
</body>
</html>
