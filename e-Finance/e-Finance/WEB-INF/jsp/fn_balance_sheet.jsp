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
 String comp=(String)session.getAttribute("compname");
 /* System.out.println("hi"+username);
 System.out.println("hi"+pwd); */
 if((username!=null)&&(pwd!=null))
 { %>
<body onload="displayBalanceSheet();">
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
				<legend>
					Balance Sheet
				</legend>
				<table border="1" align="center" width="980px" height="400px" class="form_background"> 
					
					<tbody align="left">
					
						<tr>
							<td>
								<table width=450px height="400px">
									
						<tr>
							
							<td align="left">Liabilities<hr/></td>
							<td align="right">Amount<hr/></td>
							
							
							
						</tr>
					
									<tr>
										<td>
											<a href="fn_bl_capital_account_details.fin">Capital Account</a>
										</td>
										<td align="right">
											<span id="totalcapitalaccount"></span>
										</td>
									</tr>
									<tr>
										<td>
											<a href="fn_bl_reverse_surplus.fin">Reverse Surplus</a>
										</td>
										<td align="right">
											<span id="total_rev_amount"></span>
										</td>
									</tr>
									<tr>
										<td>
											<a href="fn_bl_loan_liabilites.fin">Loans (Liability)</a>
										</td>
										<td align="right">
											<span id="loansandliabilitestotal"></span>
										</td>										
									</tr>
									
									<tr>
										<td>
											<a href="fn_bl_current_liabilites.fin">Current Liabilities</a>
										</td>
										<td align="right">
											<span id="total_current_liabilites"></span>
										</td>
									</tr>
									<tr>
										<td>
										<a href="fn_bl_other_current_liabilites.fin">Other Current Liabilities</a>
										</td>
										<td align="right">
											<span id="oclamount"></span>
										</td>
									</tr>
									<tr>
										<td>
											<a href="fn_bl_suspense_account.fin">Suspense-A/C</a>
										</td>
										<td align="right">
											<span id="suspenseaccount"></span>
										</td>
									</tr>
									<tr>
										<td>
											
										</td>
									</tr>
									<tr>
										<td class="border_up_down" align="left">
											Total:
										</td>
										<td class="border_up_down" align="right">
											<span id="liabilitestotal"></span>
										</td>
									</tr>
																	
									
								</table>
							</td>
							
							<td>
							<table width="450px" height="400px">
								<tr>
										
								<td align="left">Assets<hr/></td>
								<td align="right">Amount<hr/></td>
								</tr>
								<tr>	
										<td>
											<a href="fn_bl_fixed_assets.fin">Fixed Assets</a>
										</td>
										<td align="right">
											<span id="fixed_assets_value"></span>
										</td>
									</tr>
									
									<tr>
										<td>
											<a href="fn_bl_current_assets.fin">Current Assets</a>
										</td>
										<td align="right">
											<span id="current_assets_total"></span>
										</td>
										
									</tr>
									<tr>
										<td>
											<a href="fn_bl_investment.fin">Investments</a>
										</td>
										<td align="right">
											<span id="investments"></span>
										</td>
									</tr>
									
									
									<tr>
										<td>
											<a href="fn_bl_inventory.fin">Inventory</a>
										</td>
										<td align="right">
											<span id="inventoryamount"></span>
										</td>
									</tr>
									<tr>
										<td>
											<a href="fn_bl_provisions.fin">Provisions</a>
										</td>
										<td align="right">
											<span id="provisionamount"></span>
										</td>
									</tr>
									
									<tr> 
									
										<td class="border_up_down" align="left">Total</td>
										<td class="border_up_down" align="right">
										<span id="totalassets"></span>
										</td>
									</tr>
								</table>
							</td>
							
							
						</tr>
					</tbody>
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