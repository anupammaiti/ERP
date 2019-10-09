<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Resort</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>

<script type="text/javascript" src="js/resort_js.js"></script>
<link rel="stylesheet" href="css/resort_styles.css"/>
<link href="css/CalendarControl.css" rel="stylesheet" type="text/css">
<script src="js/CalendarControl.js" language="javascript"></script>
<script type="text/javascript" src="js/form_validation.js"></script>
<script type="text/javascript">
	function isEmpty(){
			//alert('Hai######');
		with(document.guest_user_form)
		if((guest_name.value=="")||(guest_last_name.value=="")||(mobileno.value=="")||(email.value=="")||(reqforvisit.value=="yyyy-mm-dd")||(villa_type.value=""))
			{
			alert('All Fields are mandatory');
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
			<jsp:include page="header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
		<fieldset>
			<legend>Guest User</legend>
			<form:form action="save_guest_user.res" method="post" commandName="guestUserBean" name="guest_user_form" onsubmit="return isEmpty(this);">
			<table>
				<tr>
					<td>
						First Name :
					</td>
					<td>
						<form:input path="guest_name" onchange="return alphabetic(this.value);" />			
					</td>
				</tr>
				<tr>
					<td>
						Last Name :
					</td>
					<td>
						<form:input path="guest_last_name" onchange="return alphabetic(this.value);"/>
					</td>
				</tr>
				<tr>
					<td>
						Mobile No:
					</td>
					<td>
						<form:input path="mobileno" onblur="return numeric(this.mobileno.value);"/>
					</td>
				</tr>
				<tr>
					<td>
					E-mail
					</td>
					<td>
						<form:input path="email"  onblur="return checkemail(this.email.value);"/>
					</td>
				</tr>
				<tr>
					<td>
						Req.for Call
					</td>
					<td>
						<form:input path="reqforcall" onfocus="showCalendarControl(this);" value="yyyy-mm-dd"/>
					</td>
				</tr>
				<tr>	
					<td>
						Req. for Quote
					</td>
					<td>
						<form:input path="reqforquote"/>
					</td>
				</tr>
				<tr>
					<td>
						Req.for Visit
					</td>
					<td>	
						<form:input path="reqforvisit" id="dob" value="yyyy-mm-dd" onfocus="showCalendarControl(this);" readonly="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Villa Type:
					</td>
					<td>
						<form:select path="villa_type" id="villa_type" ></form:select>	
					</td>
				</tr>
				<tr>
					<td>
						Villa Facing:
					</td>
					<td>
						<form:select path="facing_villa">
							<form:option value="East">East</form:option>
							<form:option value="South">South</form:option>
							<form:option value="West">West</form:option>
							<form:option value="North">North</form:option>
						</form:select>
					</td>
				</tr>
				<tr>
					<td>
						<%String user1=session.getAttribute("username").toString(); %>
						<input type="hidden" name="telecallerid" value="<%=user1%>"/>
					</td>
					<td>
						<form:hidden path="guest_id"  id="guest_id"/>
					</td>
				</tr>
				<tr><td></td>
					<td>
						<input type="image" src="images/submit_button.jpg" id="button1"/>
						<!--  <input type="submit" value="Submit"/>-->
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
