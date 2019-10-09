<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu</title>
<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<link rel="stylesheet" href="css/menu.css"/>
<script>
function disableBackButton()
 {
  //location.href("logout.html");

 }
if(window.history.forward(1) != null)
         window.history.forward(1);
</script>
</head>
<body>
<%String username=(String)session.getAttribute("username");
%>
<span id="loginby"><b>Welcome </b>: <i><%=username%></i></span>
<span id="dateandtime"></span>
<div id="menu" align="left">
    <ul class="menu">
        <li><a href="#" class="parent"><span>LayOut</span></a></li>
       <li><a href="#" class="parent"><span>Employee List</span></a>
       <div>
       	<ul>
       		<li>
       			<a href="fn_managers_by_directors.res"><span>Employee Details</span></a>		
       		</li>
       		<li>
       			<a href="fn_executive_by_directors.res"><span>Allotment</span></a>
       		</li>
       	</ul>
       </div>
       </li>
       <li>
       	<a href="#"><span>Customer</span></a>
       	<div>
       		<ul>
       			<li>
       				<a href="view_alloted_customer_by_finance_director.res"><span>Customer Allotted</span></a>
       			</li>
       			<li>
       				<a href="fn_view_customer_installments_by_director.res"><span>Customer Installments</span></a>
       			</li>
       		</ul>
       	</div>
       </li>
       <li>
       	<a href="#"><span>Details</span></a>
       	<div>
       		<ul>
       			<li>
       				<a href="rep_villadetails.res" target="_blank"><span>Villa Details</span></a>
       			</li>
       			<li>
       				<a href="#"><span>Finance</span></a>
       				<div>
       					<ul>
       						<li>
        						<a href="#"><span>Invoice</span></a>
        						
        					</li>	
        						<li>
       			<a href="#"><span>Expenses</span></a>	
       				<div>
       					<ul>
       						<li>
       							<a href="#" class="parent"><span>Daily Expencess</span></a>
       							<div>
       								<ul>
       									<li>
       										<a href="fn_auto_expenses_travel.erp"><span>Auto Expenses</span></a>
       									</li>
       									<li>
       										<a href="fn_phone_bill_expenceses.erp"><span>Phone Bill</span></a>
       									</li>
       									<li>
       										<a href="fn_food_expenceses.erp"><span>Food Expenses</span></a>
       									</li>
       									<li>
       										<a href="fn_hotel_expenceses.erp"><span>Hotel Expenses</span></a>
       									</li>
       									<li>
       										<a href="fn_entertainment_expenses.erp"><span>Entertainment Expenses</span></a>
       									</li>
       									<li>
       										<a href="fn_misleniuos_expenceses.erp"><span>Mis Expenses</span></a>
       									</li>
       									<li>
       										<a href="fn_non_trading_expenceses.erp"><span>Non training Expenses</span></a>
       									</li>
       								</ul>
       							</div>
       						</li>
       						<li>
				       			<a href="fn_weekly_expenceses_report.erp"><span>Weekly Expencesss</span></a>
       						</li>
       						<li>	
       							<a href="#" class="parent"><span>Annual Expencess</span></a>
       							<div>
       								<ul>
       									<li>
       										<a href="fn_yearly_auto_expenceses_travel.erp"><span>Auto Expenses</span></a>
       									</li>
       									<li>
       										<a href="fn_yearly_phone_bill_expenceses.erp"><span>Phone Bill</span></a>
       									</li>
       									<li>
       										<a href="fn_yearly_food_expenceses.erp"><span>Food Expenses</span></a>
       									</li>
       									<li>
       										<a href="fn_yearly_hotel_expenceses.erp"><span>Hotel Expenses</span></a>
       									</li>
       									<li>
       										<a href="fn_yearly_entertainment_expenceses.erp"><span>Entertainment Expenses</span></a>
       									</li>
       									<li>
       										<a href="fn_yearly_mislaneous_expenceses.erp"><span>Mis Expenses</span></a>
       									</li>
       									<li>
       										<a href="fn_yearly_non_trading_expenceses.erp"><span>Non training Expenses</span></a>
       									</li>
       								</ul>
       							</div>
       						</li>
       					</ul>
       				</div>
       		</li>
       		<li>
       			<a href="fn_aging_account.erp"><span>Aging of Account Payable</span></a>
       		</li>
       		<li>
       			<a href="fn_aging_account_payable.erp"><span>Aging of Account Recivable</span></a>
       		</li>
       		<li>
       			<a href="fn_cash_disbusment_journal.erp"><span>Cash Disbursement Journal</span></a>
       		</li>
       		<li>
       			<a href="fn_cash_recipt_journal.erp"><span>Cash Receipt Journal</span></a>
       		</li>
       		<li>
       			<a href="fn_daily_cash_report.erp"><span>Daily Cash Report</span></a>
       		</li>
       		<li>
       			<a href="fn_petty_cash_journal.erp"><span>Petty Cash Journal</span></a>
       		</li>
       		<li>
       			<a href="fn_petty_cash_vocher.erp"><span>Petty Cash Voucher</span></a>
       		</li>		
       					</ul>
       				</div>
       			</li>
       			<li>
        				<a href="#"><span>Transaction</span></a>
        				<div>
        					<ul>
        						<li><a href="#"><span>Account Voucher</span></a>
        						<div>
        							<ul>
        								<li>
        									<a href="fn_vocher_reciept.erp"><span>Reciept</span></a>
        								</li>
        								<li>
        									<a href="fn_vocher_contra.erp"><span>Contra</span></a>
        								</li>
        								<li>
        									<a href="fn_vocher_payment.erp"><span>Payment</span></a>
        								</li>
        								<li>
        									<a href="fn_vocher_journal.erp"><span>Journal</span></a>
        								</li>
        								<li>
        									<a href="fn_vocher_purchase.erp"><span>Purchase</span></a>
        								</li>
        								<li>
        									<a href="fn_vocher_sales.erp"><span>Sales</span></a>
        								</li>
        								<li>
        									<a href="fn_vocher_purchase_return.erp"><span>Purchase Return</span></a>
        								</li>
        								<li>
        									<a href="fn_vocher_sales_return.erp"><span>Sales Return</span></a>
        								</li>
        							</ul>
        						</div>
        						</li>
        						<li>
        							<a href="#"><span>Accounting Package</span></a>
        							<div>
        								<ul>
        									<li>
        										<a href="#"><span>Account Information</span></a>
        										<div>
        											<ul>
        												<li>
        													<a href="#"><span>Ledger</span></a>
        									
        												</li>
        												<li>
        													<a href="#"><span>Voucher</span></a>
        									
        												</li>
        												<li>
        													<a href="#"><span>Groups</span></a>
        									
        												</li>
        											</ul>
        										</div>
        									</li>
        									<li>
        										<a href="#"><span>Inventory Information</span></a>
        										<div>
        											<ul>
        												<li>
        													<a href="#"><span>Stock Groups</span></a>
        									
        												</li>
        												<li>
        													<a href="#"><span>Stock Items</span></a>
        									
        												</li>
        												<li>
        													<a href="#"><span>Units Of Measure</span></a>
        									
        												</li>
        												<li>
        													<a href="#"><span>Voucher Types</span></a>
        									
        												</li>
        											</ul>
        										</div>
        									</li>
        									
        								</ul>
        							</div>
        						</li>
        						<li>
        							<a href="#"><span>Department Details</span></a>
        							<div>
        								<ul>
        									<li>
        										<a href="#"><span>HR Department</span></a>
        									</li>
        									<li>
        										<a href="#"><span>Inventory</span></a>
        									</li>
        									<li>
        										<a href="#"><span>Sales Department</span></a>
        									</li>
        								</ul>
        							</div>
        						</li>
        					</ul>
        				</div>
        			</li>
        			<li>
        				<a href="fn_manager_balancesheet.res"><span>Balance Sheet</span></a>
        			</li>
        			<li>
        				<a href="fn_manager_profitandloss.res"><span>Profit & Loss</span></a>
        			</li>
       		</ul>
       	</div>
       </li><!-- Details End -->
       <li>
       	<a href=""><span>Personal</span></a>
       	<div>
       		<ul>
       			<li>
       				<a href="fn_director_edit_password.res"><span>Edit Password</span></a>
       			</li>
       			<li>
       				<a href="update_hr_employee.res"><span>Change Profile</span></a>
       			</li>
       		</ul>
       	</div>
       </li>
        <li class="last"><a href="logout.res"><span>logout</span></a></li>
    </ul>
    
</div>


<script type="text/javascript">
$(document).ready(function(){
$("body div:last").remove();
});
</script>

</body>
</html>