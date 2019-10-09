<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Finance</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<link rel="stylesheet" href="css/finance_style.css"/>
</head>
<% String username=(String)session.getAttribute("username");
 String pwd=(String)session.getAttribute("password");
 String comp=(String)session.getAttribute("compname");/* System.out.println("hi"+username);
 System.out.println("hi"+pwd); */
 if((username!=null)&&(pwd!=null))
 { %>
<body onload="displayAmountOfIndirectExpenses();">
<div class="mainscreen" align="center">
	<div class="head_screen">
	<div class="logo">
	<img alt="Logo" class="logo_image"/>
	</div>
	<div class="title_of_project"><%=comp%></div><div id="login_user"><span>Welcome to:&nbsp;&nbsp;&nbsp;&nbsp;<%=username%></span><div class="flip"><a href="logout.fin"><span id="linktext">LogOut</span></a></div>
	</div>
	</div>
	<div class="menuscreen">
	<jsp:include page="admin_header.jsp" flush="false"></jsp:include>
	</div>
	<div class="content" align="center">

		<fieldset>
			<legend>Inidirect Expenses</legend>
			<table border="1" class="form_background">
			<tr class="column_header">
						<td>
						Ledger Name
					</td><td>
						Amount
						</td>
					</tr>
					
				
				
						<tr>
							<td>
								<a href="fn_view_travel_exp_list.fin">Auto Travel Expenses</a>
							</td>
							<td>
								<span id="auto_travel_expenses"></span>
							</td>
						</tr>
						<tr>
							<td>
								<a href="fn_view_phone_bill_exp_list.fin">Phone Bill Expenses</a>
							</td>
							<td>
								<span id="phonebillexp"></span>
							</td>
						</tr>
					<tr>
							<td>
								<a href="fn_view_hotel_exp_list.fin">Hotel Bill Expenses</a>
							</td>
							<td>
								<span id="hotelexp"></span>
							</td>
						</tr>
						<tr>
							<td>
								<a href="fn_view_food_exp_list.fin">Food Expenses</a>
							</td>
							<td>
								<span id="foodexp"> </span>
							</td>
						</tr>
						<tr>
							<td>
								<a href="fn_view_entertainment_exp_list.fin">Entertainment Expenses</a>
							</td><!-- -->
							<td>
								<span id="entertainmentexp"></span>
							</td>
						</tr>
						<tr>
							<td>
								<a href="fn_view_mis_exp_list.fin">Miscellaneous Expenses</a>
							</td>
							<td>
								<span id="mis_exp"></span>
							</td>
						</tr>
						<tr>
							<td>
								<a href="fn_view_internet_exp_list.fin">Internet</a>
							</td>
							<td>
								<span id="inernet_exp"></span>
							</td>
						</tr>
						<tr>
							<td>
								<a href="fn_view_advertisement_exp_list.fin">Advertisement</a>
							</td>
							<td>
								<span id="adv_exp"></span>
							</td>
						</tr>
						<tr>
							<td>
								<a href="fn_view_office_exp_list.fin">OfficeExp</a>
							</td>
							<td>
								<span id="off_exp"></span>
							</td>
						</tr>
						<tr>
							<td>
								<a href="fn_view_repair_exp_list.fin">Repair/Maintenance</a>
							</td>
							<td>
								<span id="rep_main_exp"></span>
							</td>
						</tr>
						<tr>
							<td>
								<a href="fn_view_postage_exp_list.fin">Postage/Courier</a>
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
						<tr>
							<td>
								Total
							</td>
							<td>
								<span id="totalexp"></span>
							</td>
						</tr>
						
			</table>
		</fieldset>
	<input type="hidden" id="companyid" value="<%=comp%>"/>
	</div>
	<div class="footer"> <%session.removeAttribute("successmsg");%>
		<jsp:include page="footer.jsp" flush="false"></jsp:include>
	</div>
	</div>
	<% }
else
{
response.sendRedirect("login.fin");
}%>	
</body>
</html>