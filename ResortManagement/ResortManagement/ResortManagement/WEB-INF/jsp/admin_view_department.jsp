<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resort</title>
<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<script type="text/javascript" src="js/form_validation.js"></script>
<script type="text/javascript">
	function isEmpty(){
		with(document.department_form)
		if((department_id.value=="")||(department.value=="")){
			alert('All Fields are Mandatory');
			return false;
		}
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
		<div class="content1" align="center">
			<fieldset>
				<legend>Departments</legend>
				<form:form action="admin_view_directors.res" method="post" commandName="employeeBean">
				<table>
					<tr>
						<td>
							Department
						</td>
						<td>
							<form:select path="department" id="dept"></form:select>
						</td>
						<td>
							<input type="image" src="images/search_button.jpg" id="button1"/> 
						</td>
					</tr>
				</table>
				</form:form><br/>
				Note: Select the Department from the list and Click on Search button .
			</fieldset>
			
		</div>
	<%session.removeAttribute("succesmsg");%>
	<jsp:include page="footer.jsp" flush="true"></jsp:include>
</div>
<% }
else
{
response.sendRedirect("login.res");
}%>	
</body>
</html>
