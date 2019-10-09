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
		<div class="content" align="center">
		<fieldset>
			<legend>Department</legend>
			<span id="successmsg">${succesmsg}</span>
		<form:form action="save_department.res" method="post" commandName="departmentBean" name="department_form" onSubmit="return isEmpty();">
		<table>
			<tr>
				<td>
					Id:
				</td>
				<td> 
					<form:input path="department_id" id="deptid"/>			
				</td>
			</tr>
			<tr>
				<td>
					Name:
				</td>
				<td>
					<form:input path="department" onblur="alphabetic(this.value);" required="true"/>
				</td>
			</tr>
			<tr>
			<td>
			</td>
				<td>
				
					<input type="image" src="images/submit_button.jpg" id="button1"/>
						<!--  <input type="submit" value="Submit"/>-->
				</td>
			</tr>
		</table>
		</form:form>
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
