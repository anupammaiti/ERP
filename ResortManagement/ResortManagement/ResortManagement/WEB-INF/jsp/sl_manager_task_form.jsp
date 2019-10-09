<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resort</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/resort_validation_js.js"></script>
<link rel="stylesheet" href="css/resort_styles.css"/>
<link href="css/CalendarControl.css" rel="stylesheet" type="text/css">
<script src="js/CalendarControl.js" language="javascript"></script>
</head>
<%-- <%
 String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 //System.out.println("hi"+username);
 //System.out.println("hi"+pwd);
 if((username!=null)&&(pwd!=null))
 { %>
 --%><body>
	<div class="project_title">
		<img src="images/svs_logo.gif" alt="logo" id="logo"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span id="proj_title">RESORT MANAGEMENT</span>
	</div>

	<div class="main_screen" align="center">
		<div class="menu" align="left">	
			<jsp:include page="sl_manager_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
			<fieldset>
				<legend>
						Manager Meeting Form
				</legend>
				<form:form action="save_sl_manager_task_form.res" method="post" commandName="salesManagerTastBean">
				
				
				<table>
					<tr>
						<td>
							Client Name
						</td>
						<td>
							<form:input path="clientname" required="required"/>
						</td>
					</tr>
					<tr>
						<td>
							Mobile No
						</td>
						<td>
							<form:input path="mobileno" required="required" id="mob"/>
						</td>
					</tr>
					<tr>
						<td>
							Date Of Meeting
						</td>
						<td>
							<form:input path="dateofmeeting" onfocus="showCalendarControl(this);" value="yyyy-mm-dd" required="true" />
						</td>
					</tr>
					<tr>
						<td>
							Meeting Topic
						</td>
						<td>
							<form:input path="meetingtopic" required="required"/>
						</td>
					</tr>
					
					<tr>
						<td>
							Remarks
						</td>
						<td>
							<form:radiobutton path="remarks" value="excellent"/>Excellent&nbsp;&nbsp;&nbsp;<form:radiobutton path="remarks" value="Good"/>Good&nbsp;&nbsp;<form:radiobutton path="remarks" value="Bad"/>Bad
						</td>
					</tr>
					<tr>
						<td>
							Time
						</td>
						<td>
							<form:input path="time1" required="required"/>hh:mm
						</td>
					</tr>
					<tr>
						<td>
							Company Name
						</td>
						<td>
						<form:input path="companyname" required="required"/>
						</td>
					</tr>
					<tr>
						<td>
							Position
						</td>
						<td>
							<form:input path="position" required="required"/>
						</td>
					</tr>
					<tr>
						<td>
							Issues
						</td>
						<td>
							<form:textarea path="issues" required="required"/>
						</td>
					</tr>
					
					<tr><td>
						<%String username=(String)session.getAttribute("username"); %>
						<input type="hidden" name="deltby" value="<%=username%>"/> 
					</td>
						<td>
							<input type="image" src="images/submit_button.jpg" id="button1"/>
						</td>
					</tr>
				</table>
			</fieldset>
			<table>
		</form:form>		
			
		</div>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>
	<%-- <% }
else
{
response.sendRedirect("login.res");
}%>	 --%>
</body>
</html>