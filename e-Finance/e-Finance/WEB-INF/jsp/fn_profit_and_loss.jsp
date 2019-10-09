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
 String comp=(String)session.getAttribute("compname");/*  System.out.println("hi"+username);
 System.out.println("hi"+pwd); */
 if((username!=null)&&(pwd!=null))
 { %>
<body onload="displayProfitAndLoss();">
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
					Profit & Loss
				</legend>
				<table border="1" align="center" width="980px" height="400px" class="form_background"> 
					
					<tbody align="left">
					
						<tr>
							<td>
								<table width=450px height="400px">
									
						<tr>
							<td>Particulars<hr/></td>
							<td align="right">Amount<hr/></td>
						</tr>
					
									<tr>
										<td>
											<a href="fn_view_vocher_payment.fin">Purchase Accounts</a>
										</td>
										<td align="right">
											<span id="purchases_accounts"></span>
										</td>
									</tr>
									<tr>
										<td>
											<a href="fn_view_carrage_out_ward.fin">Carrage Out Ward</a>
										</td>
										<td align="right">
											<span id="carrage_out_ward"></span>
										</td>
									</tr>							
									
									<tr>
										<td>
											Total
										</td>
										<td class="border_up_down" align="right">
											<span id="totalwages"></span>
										</td>
									</tr>
									
									<tr>
										<td>
											<a href="fn_view_indirect_expenses.fin" title="Click here for Indirect Income Details">Indirect Expenses</a>
										</td>
										<td align="right">
											
											<span id="indirect_expenses"></span>
										</td>
									</tr>
									<tr>
										<td>
											<a href="fn_view_duties_and_taxes_exp_list.fin">Duties & Taxes</a>
										</td>
										<td align="right">
											<span id="duties_taxes"></span>
										</td>
									</tr>
									
									<tr>
										<td>
											<a href="fn_view_direct_expenses.fin">Direct Expenses</a>
										</td>
										<td align="right">
											<span id="direct_expenses"></span>
										</td>
									</tr>
									
									
									<tr>
										<td>	
										<span>Loss</span>
										</td>
										<td align="right">
											<div id="loss"></div>
										</td>
									</tr>
									<tr>
										<td>Total</td>
										<td class="border_up_down" align="right">
											<span id="dr_total"></span>
										</td>
									</tr>
									
								</table>
							</td>
							
							<td>
							<table width="450px" height="400px" >
								<tr>
										
								<td height="50px">Particulars<hr/> </td>
								<td align="right">Amount<hr/></td>
								</tr>
									<tr>
										<td height="10px">
											<a href="fn_bl_sales_account.fin">Sales Account</a>
										</td>
										<td align="right">
											<span id="sales_account"></span>
										</td>
										
									</tr>
									<tr>
										<td>
											<a href="#">Direct Income</a>
										</td>
										<td align="right">
											<span id="direct_income"></span>
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
										<td align="right">
											<span id="indirect_income"></span>
										</td>
									</tr>
									<tr>
										<td>	
										<span>Gross Profit</span>
										</td>
										<td align="right">
											<div id="profit"></div>
										</td>
									</tr>
									<tr>  
									
										<td>Total</td><td class="border_up_down" align="right"><span id="cr_total"></span></td>
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