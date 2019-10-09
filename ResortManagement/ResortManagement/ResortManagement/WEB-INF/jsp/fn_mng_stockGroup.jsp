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
<link rel="stylesheet" href="css/resort_styles.css"/>
<link href="css/CalendarControl.css" rel="stylesheet" type="text/css">
<script src="js/CalendarControl.js" language="javascript"></script>
</head>
<%
 String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 //System.out.println("hi"+username);
 //System.out.println("hi"+pwd);
 if((username!=null)&&(pwd!=null))
 { %>
<body onLoad="getStockGroup();">
	<div class="project_title">
		<img src="images/svs_logo.gif" alt="logo" id="logo"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span id="proj_title">RESORT MANAGEMENT</span>
	</div>

	<div class="main_screen" align="center">
		<div class="menu" align="left">	
			<jsp:include page="fn_manager_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
		
		<form:form action="rep_mng_stk_group.res" method="post" commandName="stockGroupDetailsBean" target="_blank">
			<table>
				<tr>
					<td>
						Group Name
					</td>
					<td>
						Group Gen Date
					</td>
					<td>Delt By</td>
					
				</tr>
				<tr>
					<td><form:select path="name" id="lststockgroup"><form:option value=""></form:option></form:select></td>
					<td><form:input path="getdate" onfocus="showCalendarControl(this);" readonly="true"/></td>
					<td><form:select path="deltby" id="executiveByManager"><form:option value="" ></form:option></form:select></td>
					<td><input type="hidden" name="reportingto" id="userid" value="<%=username%>"/><input type="image" src="images/submit_button.jpg" id="button1"/></td>
				</tr>
			</table>
		</form:form>
	


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
