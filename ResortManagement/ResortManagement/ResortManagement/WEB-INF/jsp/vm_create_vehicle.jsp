<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resort</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<link rel="stylesheet" href="css/resort_styles.css"/>
<script type="text/javascript" src="js/form_validation.js"></script>
<script type="text/javascript">
	function isEmpty(){
		with(document.vehicle_form){
			if((company_name.value=="")||(vehicle_no.value=="")||(vehicle_model.value=="")||(tank_capacity.value=="")||(fuel_type.value=="")||(vehicle_milage.value=="")||(vehicle_type.value=="")||(service.value=="")){
				alert('All Fields are Mandatory');
				return false;
			}
			
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
			<legend>Vehicle Form</legend>
			<span id="successmsg">${successmsg}</span>
			<form:form action="save_vehicle.res" method="post" commandName="vehicleDetailsBean" name="vehicle_form" onsubmit="return isEmpty();">
			<table>
				<tr>
					<td>
						Comapny Name:
					</td>
					<td>
						<form:input path="company_name" onblur="return alphabetic(this.value);" required="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Vehicle No:
					</td>
					<td>
						<form:input path="vehicle_no" onblur="return alphanumeric(this.value);" required="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Vehicle Model:
						
					</td>
					<td>
						<form:input path="vehicle_model" onblur="return alphanumeric(this.value);" required="true"/>
					</td>
					
				</tr>
				<tr>
					<td>
						Tank Capacity:
					</td>
					<td>
						<form:input path="tank_capacity" onblur="return numeric(this.value);" required="true"/>
					</td>
				</tr>
				<tr>	
					<td>
						Fuel Type:
					</td>
					<td>
						<form:select path="fuel_type" required="true">
							<form:option value=""></form:option>
							<form:option value="Pertrol">Petrol</form:option>
							<form:option value="Desil">Desil</form:option>
							<form:option value="Kerosin">Kerosin</form:option>
						</form:select>
					</td>
				</tr>
				<tr>
					<td>
						Milage Of Vehicle:
					</td>
					<td>
						<form:input path="vehicle_milage" onblur="return numeric(this.value);" required="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Vehicle Type:
					</td>
					<td>
						<form:input path="vehicle_type" onblur="return alphabetic(this.value);" required="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Available:
					</td>
					<td>
						<form:select path="service" required="true">
							<form:option value=""></form:option>
							<form:option value="No">No</form:option>
							<form:option value="Yes">Yes</form:option>
						</form:select>
					</td>
				</tr>
				<tr>
					<td>
						DriverName:
					</td>
					<td>
						<form:select path="driver_name" id="driver_name" required="true"></form:select>
					</td>	
					<td>
						<span id="dname"></span>
					</td>
				</tr>
				<tr>
					<td>
					
					</td>
					<td>
						<!--  <input type="submit" value="Submit"/>-->
						 <input type="image" src="images/submit_button.jpg" id="button1"/>
					</td>
				</tr>
			</table>
			</form:form><br/>
			Note: Enter the details of the vehicle and Add Driver to the Vehicle.
		</fieldset>		
		</div>
		<%session.removeAttribute("successmsg"); %>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>
	<% }
else
{
response.sendRedirect("login.res");
}%>
</body>
</html>