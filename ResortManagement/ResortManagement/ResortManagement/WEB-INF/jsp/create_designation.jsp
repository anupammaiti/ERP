<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resort</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<script type="text/javascript" src="js/form_validation.js"></script>

<script type="text/javascript">
function isEmpty(){
		//alert('hey!');
		with(document.designation_form)
	if((designation.value=="")||(designation_id.value=="")){
		alert('All Fields are mandatory');
		return false;
	}
	//return false;	
}
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
				Designation:
			</legend>
			<span id="successmsg">${successmsg}</span>
			<form:form action="save_designation.res" method="post" commandName="designationBean" name="designation_form" onSubmit="return isEmpty(this);" id="designation3">
			
			<table>
				<tr>
					<td>
						Designation Id:					
					</td>
					<td>
						<form:input path="designation_id" required="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Designation:
					</td>
					<td>
						<form:input path="designation" onblur="return alphabetic(this.value);" required="true"/>
					</td>
				</tr>
				<tr>
					<td>
						Department_Id:
					</td>
					<td>
						<form:select path="department_id" id="dept"></form:select>
						
					</td>
				</tr>
				<tr>
					<td></td>
					<td>
						<input type="image" src="images/submit_button.jpg" id="button1"/>
						<!--  <input type="submit" value="Submit"/>-->
 					</td>
				</tr>
			</table>
			</form:form><br/>
			Note: Enter Designation id,Designation (e.g. tc, tele_caller)and select the Department from the list and Click on Submit. Then the designation added to the department.
			</fieldset>
			<%session.removeAttribute("successmsg"); %>
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