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
				<legend>Balance Sheet Main</legend>
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
