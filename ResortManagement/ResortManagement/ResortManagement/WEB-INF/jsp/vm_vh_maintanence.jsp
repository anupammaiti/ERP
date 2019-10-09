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
<link href="css/CalendarControl.css" rel="stylesheet" type="text/css">
<script src="js/CalendarControl.js" language="javascript"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<script type="text/javascript" src="js/form_validation.js"></script>
<link rel="stylesheet" href="css/resort_styles.css"/>
<script type="text/javascript">
	function isEmpty(){
		//alert('Hello');
		with(document.maintain_form)
		if((companyname.value=="")||(modelno.value=="")||(vehicletype.value=="")||(service_givendate.value=="")||(service_deliverydate.value=="")||(spare_parts.value=="")||(amount.value=="")||(serviceamount.value=="")||(service_compname.value=="")||(service_phoneno.value=="")||(service_mobileno.value=="")){
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
			<legend>
				Vehicle Maintenance
			</legend><span id="successmsg">${successmsg}</span>
			<form:form action="created_vehicle_maintanence.res" method="post" commandName="vehicleMaintanenceBean" name="maintain_form" onsubmit="return isEmpty();">
			<table>
				<tr>
					<td>
						Vehicle No
					</td>
					<td>
						<form:select path="vehno" id="vehicle_no" required="true"></form:select>
					</td>
				</tr>
				<tr>
					<td>
						Company Name
					</td>
					<td>
						<form:input path="companyname" id="compname" readonly="true" required="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Model No
					</td>
					<td>
						<form:input path="modelno" id="modno" readonly="true" required="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Vehicle Type
					</td>
					<td>
						<form:input path="vehicletype" id="vehtype" readonly="true" required="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Service Given Date
					</td>
					<td>
						<form:input path="service_givendate" onfocus="showCalendarControl(this);"  readonly="true" required="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Service Delivery Date
					</td>
					<td>
						<form:input path="service_deliverydate" onfocus="showCalendarControl(this);"  readonly="true" required="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Spare Parts:
					</td>
					<td>
						<form:input path="spare_parts" onblur="return alphanumeric(this.value);" required="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Amount
					</td>
					<td>	
						<form:input path="amount" onblur="return numeric(this.value);" id="amount" required="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Service Amount
					</td>
					<td>
						<form:input path="serviceamount" onblur="return numeric(this.value);" id="samount" required="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Total Amount
					</td>
					<td>
						<form:input path="totalamount" id="total" readonly="true" required="true"/>
					</td>
				</tr>
				<tr>
					<td>	
						Service Shop Name
					</td>
					<td>
						<form:input path="service_compname" onblur="return alphabetic(this.value);" required="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Service Phone No
					</td>
					<td>
						<form:input path="service_phoneno" onblur="return numeric(this.value);" required="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Service Mobile No
					</td>
					<td>
						<form:input path="service_mobileno" onblur="return numeric(this.value);" required="true"/>
					</td>
				</tr>
				<tr>
					<td>
					</td>
					<td>
						<input type="image" src="images/submit_button.jpg" id="button1">
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
		
