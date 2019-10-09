<%@ page language="java" contentType="text/html; accept-charset=utf-8 "
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; accept-charset=utf-8 ">
<title>Resort</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<link href="css/CalendarControl.css" rel="stylesheet" type="text/css">
<script src="js/CalendarControl.js" language="javascript"></script>
<script type="text/javascript" src="js/form_validation.js"></script>
<link rel="stylesheet" href="css/resort_styles.css"/>
<script type="text/javascript">
	function isEmpty(){
		//alert('Hello');
		with(document.veh_insurence)
		if((vh_model.value=="")||(no_years.value=="")||(ins_percentage.value=="")||(ins_price.value=="")){
			alert('All Fields are Mandatary','Alert');
			return false;
			
		}
		return true;
	}
</script> 
</head>
<%
 String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 //System.out.println("hi"+username);
 //System.out.println("hi"+pwd);
 if(pwd!=null)
 { %>
<body>
	<div class="project_title">
		<img src="images/svs_logo.gif" alt="logo" id="logo"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span id="proj_title">RESORT MANAGEMENT</span>
	</div>

	<div class="main_screen" align="center">
		<div class="menu" align="left">	
			<jsp:include page="admin_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
		<fieldset>
			<legend>Vehicle Insurance</legend><span class="successmsg">${successmsg}</span>
			<form:form action="created_vehicle_insurence.res" method="post" commandName="vehicleInsurenceBean" name="veh_insurence" onsubmit="return isEmpty();">
			<table>
				<tr>
					<td>
						Vehicle No:
					</td>
					<td>
						<form:select path="vhno" id="vehicle_no" required="true"></form:select>
					</td>
					
				</tr>
				<tr>
					<td>
						Model No:	
					</td>
					<td>
						<form:input path="vehcile_model" id="vh_model" readonly="true" required="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Insurance Date 
					</td>
					<td>
						<form:input path="ins_date" onblur="return numeric(this.value)" onfocus="showCalendarControl(this);" required="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Insurance No
					</td>
					<td>
						<form:input path="ins_no" required="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Year
					</td>
					<td>
						<form:input path="no_years" onblur="return numeric(this.value);" required="true"/>(ex: 5)
					</td>
				</tr>
				<tr>
					<td>
						Amount
					</td>
					<td>
						<form:input path="ins_price" onblur="return numeric(this.value);" required="true"/>
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
	<%session.removeAttribute("successmsg"); %>
	<% }
else
{
response.sendRedirect("login.res");
}%>
</body>
</html>
