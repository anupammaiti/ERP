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
			<jsp:include page="fn_executive_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
		<fieldset>
		<legend>Stock Item</legend>
		
<form:form action="sfn_generate_stock_item.res" method="post" commandName="stockItemBean">
			<table>
				<tr>
					<td>
					Name
					</td>
					<td>
						<form:input path="name"/>
					</td>
				</tr>

				<tr>
					<td>(Alias)
					</td>
					<td><form:input path="alias" /></td>
				</tr>

				<tr>
					<td>
					Under
					</td>
					<td><form:select path="under">
							<form:option value=""></form:option>
							<form:option value="Primary">Primary</form:option>
						</form:select></td>
				</tr>

				<tr>
					<td>Units
					</td>
					<td><form:select path="units">
							<form:option value=""></form:option>
							<form:option value="NotApplicable">NotApplicable</form:option>
							<form:option value="tonn">tonn</form:option>
						</form:select></td>
				</tr>




				<tr>
					<td>Tax
							Information (Rate of Duty)</td>
					<td><form:input path="rateofduty" /></td>
				</tr>

				<tr>
					<td>Tax	Information (Traffic Classification)</td>
					<td><form:input path="trafficclassification" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="image" src="images/submit_button.jpg" id="button1"/></td>
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
