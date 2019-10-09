<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ERP</title>
	<link type="text/css" href="css/menu.css" rel="stylesheet" />
	
    <script type="text/javascript" src="js/jquery-1.7.1.js"></script>
    <script type="text/javascript" src="js/menu.js"></script>
</head>
<body>

<!-- Menu Bar -->
<div id="menu" align="center">
    <ul class="menu">
        <li><a href="fn_main.erp" class="parent"><span>Home</span></a></li>
        <li>
        	<a href="#" class="parent"><span>Account Package</span></a>
        	<div>
        		<ul>
        			<li><a href="#" class="parent"><span>Master Details</span></a>
        				<div>
	        				<ul>	
	        					<li>
	        						<a href="#" class="parent"><span>Account Information</span></a>
	        							<div>
	        								<ul>
	        									<li><a href="#" class="parent"><span>Ledger</span></a>
	        										<div>	
	        											<ul>
	        												<li>	
	        													<a href="fn_create_ledger.erp"><span>Create Ledger</span></a>
	        												</li>
	        												<li>
	        													<a href="viewledger.erp"><span>Edit Ledger</span></a>
	        												</li>
	        											</ul>
	        										</div>
	        									</li>
	        									<li><a href="#" class="parent"><span>Voucher</span></a>
	        										<div><ul>
	        												<li><a href="fn_create_vocher.erp"><span>Create of Voucher</span></a></li>
	        												<li><a href="fn_edit_vocher.erp"><span>Edit Voucher</span></a></li>
	        										</ul></div>
	        										
	        									</li>
	        									<li><a href="#" class="parent"><span>Group</span></a>
	        										<div>
	        											<ul>	
	        												<li><a href="fn_create_groups.erp"><span>Create</span></a></li>
	        												<li><a href="fn_edit_groups.erp"><span>Edit</span></a></li>
	        												
	        											</ul>
	        										</div>
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
	        										<div>
	        											<ul>
	        												<li>
	        													<a href="fn_create_stockgroup.erp"><span>Create</span></a>
	        												</li>
	        												<li>
	        													<a href="fn_stock_groups.erp"><span>Edit</span></a>
	        												</li>
	        												
	        											</ul>
	        										</div>
	        								</li>
	        								<li>
	        									<a href="#"><span>Stock Item</span></a>
<div>
	        											<ul>
	        												<li>
	        													<a href="fn_stock_items.erp"><span>Create</span></a>
	        												</li>
	        												<li>
	        													<a href="fn_edit_stock_items.erp"><span>Edit</span></a>
	        												</li>
	        												
	        											</ul>
	        										</div>
	        								</li>
	        								<li>
	        									<a href="#"><span>Units of Measures</span></a>
	        									<div>
	        											<ul>
	        												<li>
	        													<a href="fn_inventory_measure.erp"><span>Create</span></a>
	        												</li>
	        												<li>
	        													<a href="fn_edit_vocher_measures.erp"><span>Edit</span></a>
	        												</li>
	        												
	        											</ul>
	        										</div>
	        									
	        								</li>
	        								<li>
	        									<a href="#"><span>Voucher Types</span></a>
	        									<div>
	        											<ul>
	        												<li>
	        													<a href="fn_vocher_type.erp"><span>Create</span></a>
	        												</li>
	        												<li>
	        													<a href="#"><span>Edit</span></a>
	        												</li>
	        												<li>	
	        													<a href="#"><span>Alter</span></a>
	        												</li>
	        											</ul>
	        										</div>
	        									
	        								</li>
	        							</ul>
	        						</div>
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
        					</ul>
        				</div>
        			</li>
        			<li>
        				<a href="#"><span>Reports</span></a>
        				<div>
        					<ul>
        						<li>
        							<a href="fn_balance_sheet.erp"><span>Balance Sheet</span></a>
        						</li>
        						<li>
        							<a href="fn_profit_loss.erp"><span>Profit Loss</span></a>
        						</li>
        					</ul>
        				</div>
        			</li>
        			<li>
        				<a href="dbbackup.erp"><span>New Project</span></a>
        			</li>
        		</ul>
        	</div>
        </li>
       <li><a href="#" class="parent"><span>Finance</span></a>
       <div>
       	<ul>
       		<li>
       			<a href="fn_invoiceform.erp"><span>Invoice Form</span></a>
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
       	<li><a href="#"><span>PayRoll</span></a>
       		<div>
       			<ul>
       				<li>
       					<a href="CompanyPaySlip.erp"><span>CompanyPaySlip</span></a>
       				</li>
       				<li>
       					<a href="emp_list.erp"><span>Employee PaySlip</span></a>
       				</li>
       				<li>
       					<a href="fn_options_for_payslip.erp"><span>Options For PaySlip</span></a>
       				</li>
       			</ul>
       		</div>
       	</li>
        <li class="last"><a href="logout.erp"><span>logout</span></a></li>
    </ul>
</div>


<script type="text/javascript">
$(document).ready(function(){
$("body div:last").remove();
});
</script>
</body>
</html>