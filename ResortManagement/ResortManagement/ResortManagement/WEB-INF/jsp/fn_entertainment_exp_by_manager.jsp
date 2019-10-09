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
<body>
	<div class="project_title">
		<img src="images/svs_logo.gif" alt="logo" id="logo"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span id="proj_title">RESORT MANAGEMENT</span>
	</div>

	<div class="main_screen" align="center">
		<div class="menu" align="left">	
			<jsp:include page="fn_manager_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
	<fieldset>	
		<legend>	
			Entertainment Exp
		</legend>
	<form:form action="rep_fn_entertainment_exp_by_manager.res" method="post" target="_blank">
		<table>
			<tr>
				<td>	
					Employee Name
				</td>
				<td>
					<input type="text" name="empname"/>
				</td>
				<td>
					Phone No
				</td>
				<td>
					<input type="text" name="phoneno"/>
				</td>
				<td>	
					From Date
				</td>
				<td>
					<input type="text" name="fromdate"/>
				</td>
				<td>
					To Date
				</td>
				<td>
					<input type="text" name="todate"/>
				</td>
				<td>
					Deltby
				</td>
				<td>
					<select name="deltby" id="executivelist"></select>
				</td>
				<td>		<%
			String user1=(String)session.getAttribute("username");
			
		%>
	  		
	  		<input type="hidden" name="manager" value="<%=username%>" id="mngr2"/>
	  		<input type="hidden"  name="department1" id="dept2"/>
					<input type="image" src="images/search_button.jpg" id="button1"/>
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
