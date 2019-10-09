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
<body onload="displayAmountOfIndirectExpenses();">
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
			<legend>Inidirect Expenses</legend>
			<table border="1">
				<thead id="form_title">
					<th>
						Ledger Name
					</th>
					<th>
						Amount
					</th>
					
				</thead>
				<tbody>
						<tr>
							<td>
								<a href="#">Auto Travel Expenses</a>
							</td>
							<td>
								<span id="auto_travel_expenses"></span>
							</td>
						</tr>
						<tr>
							<td>
								<a href="#">Phone Bill Expenses</a>
							</td>
							<td>
								<span id="phonebillexp"></span>
							</td>
						</tr>
						<tr>
							<td>
								<a href="#">Hotel Bill Expenses</a>
							</td>
							<td>
								<span id="hotelexp"></span>
							</td>
						</tr>
						<tr>
							<td>
								<a href="#">Food Expenses</a>
							</td>
							<td>
								<span id="foodexp"> </span>
							</td>
						</tr>
						<tr>
							<td>
								<a href="#">Entertainment Expenses</a>
							</td>
							<td>
								<span id="entertainmentexp"></span>
							</td>
						</tr>
						<tr>
							<td>
								<a href="#">Miscellaneous Expenses</a>
							</td>
							<td>
								<span id="mis_exp"></span>
							</td>
						</tr>
						<tr>
							<td>
								<a href="#">Internet</a>
							</td>
							<td>
								<span id="inernet_exp"></span>
							</td>
						</tr>
						<tr>
							<td>
								<a href="#">Advertisement</a>
							</td>
							<td>
								<span id="adv_exp"></span>
							</td>
						</tr>
						<tr>
							<td>
								<a href="#">OfficeExp</a>
							</td>
							<td>
								<span id="off_exp"></span>
							</td>
						</tr>
						<tr>
							<td>
								<a href="#">Repair/Maintenance</a>
							</td>
							<td>
								<span id="rep_main_exp"></span>
							</td>
						</tr>
						<tr>
							<td>
								<a href="#">Postage/Courier</a>
							</td>
							<td>
								<span id="post_cou_exp"></span>
							</td>
						</tr>
						<tr>
							<td>
								<a href="#">Salary</a>
							</td>
							<td>
								<span id="salary_exp"></span>
							</td>
						</tr>
						<tr>
							<td>
								<a href="#">Sundry Staff Welfare</a>
							</td>
							<td>
								<span id="sundry_staff_exp"></span>
							</td>
						</tr>
				</tbody>		
			</table>
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
