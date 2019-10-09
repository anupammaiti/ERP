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
<body onLoad="displayProfitAndLoss();">
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
					Profit & Loss
				</legend>
				<table border="1" align="center" width="980px" height="400px"> 
					
					<tbody align="left">
					
						<tr>
							<td>
								<table width=450px height="400px">
									<thead>
						<tr>
							
							<th>DR</th>
							<th>Particulars</th>
							
							
							
						</tr>
					</thead>
									<tr>
										<td>
											<a href="#">Carrage Out Ward</a>
										</td>
										<td>
											<span id="carrage_out_ward"></span>
										</td>
									</tr>							
									<tr>
										<td>
											<a href="#">Carrage In Ward</a>
										</td>
										<td>
											<span id="carrage_in_ward"></span>
										</td>
									</tr>
									<tr>
										<td>
											<a href="#">Wages</a>
										</td>
										<td>
											<span id="totalwages"></span>
										</td>
									</tr>
									<tr>
										<td>
											<a href="#">Open Stock</a>
										</td>
										<td>
											<span id="open_stock"></span>
										</td>
									</tr>
									<tr>
										<td>
											<a href="#">Duties & Taxes</a>
										</td>
										<td>
											<span id="duties_taxes"></span>
										</td>
									</tr>
									<tr>
										<td>
											<a href="fn_view_vocher_payment.res">Purchase Accounts</a>
										</td>
										<td>
											<span id="purchases_accounts"></span>
										</td>
									</tr>
									<tr>
										<td>
											<a href="fn_view_direct_expenses.res">Direct Expenses</a>
										</td>
										<td>
											<span id="direct_expenses"></span>
										</td>
									</tr>
									<tr id="border_up_down">
										<td>
											Total:
										</td>
										<td class="border_up_down" align="right">
											
										</td>
									</tr>
									<tr>
										<td>
											<a href="fn_view_indirect_expenses.res" title="Click here for Indirect Income Details">Indirect Expenses</a>
										</td>
										<td align="right">
											
											<span id="indirect_expenses"></span>
										</td>
									</tr>
									<tr>
										<td>	
										<span>Loss</span>
										</td>
										<td>
											
										</td>
									</tr>
									<tr>
										<td>Total</td>
										<td class="border_up_down" align="right">
										<span id="total_profit"></span>	
										</td>
										
									</tr>
									
								</table>
							</td>
							
							<td>
							<table width="450px" height="400px">
								<tr>
										<th>CR</th>
								<th>Particulars</th>
								</tr>
									<tr>
										<td>
											<a href="#">Sales Account</a>
										</td>
										<td>
											<span id="sales_account"></span>
										</td>
										
									</tr>
									<tr>
										<td>
											<a href="#">Direct Income</a>
										</td>
										<td>
											<span id="direct_income"></span>
										</td>
									</tr>
									<tr>
										<td>
											<a href="#">Closing Stock</a>
										</td>
										<td>
											<span id="closing_stock"></span>
										</td>
									</tr>
									
									
									
									<tr>
										<td>
											Total
										</td>
										<td class="border_up_down" align="right">
											
										</td>
									</tr>
									<tr>
										<td>
											<a href="#">Indirect Income</a>
										</td>
										<td>
											<span id="indirect_income"></span>
										</td>
									</tr>
									<tr>
										<td>	
										<span>Loss</span>
										</td>
										<td></td>
									</tr>
									<tr> 
									
										<td class="border_up_down" align="left">Total</td><td class="border_up_down" align="right"><span id="totalprofitright"></span></td>
									</tr>
								</table>
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