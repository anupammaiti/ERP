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
<body><%String username=(String)session.getAttribute("username");
%>
<span id="loginby"><b>Welcome </b>: <i><%=username%></i></span>
<span id="dateandtime"></span>
<div id="menu" align="left">
    <ul class="menu">
        <li><a href="#" class="parent"><span>LayOut</span></a></li>
       
       <li><a href="#" class="parent"><span>Details</span></a>
       <div>
       	<ul>
       		 <li>
        	<a href="#"><span>Customer Details</span></a>
        	<div>
        		<ul>
        			<li>
        				<a href="view_customer_by_finance_executive.res"><span> Allotting Customer</span></a>
        				
        			</li>
        			<li>
        				<a href="fn_customer_diplay.res"><span>Installments</span></a>
        			</li>
        			<li>
        				<a href="#"><span>Display</span></a>
        				<div>
        					<ul>
        						<li>
        							<a href="fn_view_customer_installments.res"><span>Paying List</span></a>
        						</li>
        						<li>
        							<a href="#"><span>Paid List</span></a>
        						</li>
        					</ul>
        				</div>
        			</li>
        		</ul>
        	</div>
        </li>			
        <li>
        	<a href="sl_invoiceGrid.res"><span>Invoice</span></a>
        	<div>
        		<ul>
        			<li><a href="fn_create_invoice_form.res"><span>Create</span></a></li>
        			<li><a href="rep_fn_invoice_details_by_executive.res" target="_blank"><span>Display</span></a></li>
        		</ul>
        	</div>
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
       										<a href="#"><span>Auto Expenses</span></a>
       										<div>
       											<ul>
       												<li>
       													<a href="fn_create_daily_expenses_form.res"><span>Create</span></a>
       												</li>
       												<li>
       													<a href="fn_view_auto_expenses_by_executive.res"><span>Display</span></a>
       												</li>
       											</ul>
       										</div>
       									</li>
       									<li>
       										<a href="#"><span>Phone Bill</span></a>
       										<div>
       											<ul>		
       												<li>	
       													<a href="fn_daily_phone_expenses.res"><span>Create</span></a>
       												</li>
       												<li>
       													<a href="fn_view_phone_bill_by_executive.res"><span>Display</span></a>
       												</li>
       											</ul>
       										</div>
       									</li>
       									<li>
       										<a href="#"><span>Food Expenses</span></a>
       										<div><ul>
       											<li><a href="fn_food_expenses.res"><span>Create</span></a></li>
       											<li><a href="fn_view_food_exp_by_executive.res"><span>Display</span></a></li>
       										</ul></div>
       									</li>
       									<li>
       										<a href="#"><span>Hotel Expenses</span></a>
       										<div>
       											<ul>	
       												<li><a href="fn_hotel_exp.res"><span>Create</span></a></li>
       												<li><a href="fn_view_hotel_exp_by_executive.res"><span>Display</span></a></li>
       											</ul>
       										</div>
       									</li>
       									<li>
       										<a href="#"><span>Entertainment Expenses</span></a>
       										<div>
       											<ul>
       												<li>
       													<a href="fn_entertainment_exp.res"><span>Create</span></a>
       												</li>
       												<li>
       													<a href="fn_view_entertainment_exp_by_executive.res"><span>Display</span></a>
       												</li>
       											</ul>
       										</div>
       									</li>
       									<li>
       										<a href="#"><span>Mis Expenses</span></a>
       										<div>
       											<ul>
       												<li>
       													<a href="fn_mislenious_exp.res"><span>Create</span></a>
       												</li>
       												<li><a href="fn_view_misleneous_exp_by_executive.res"><span>Display</span></a></li>
       											</ul>
       										</div>
       									</li>
       									<li>
       										<a href="#"><span>Non training Expenses</span></a>
       										<div><ul>
       											<li><a href="fn_daily_non_training_exp.res"><span>Create</span></a></li>
       											<li><a href="fn_view_nontrading_exp_by_executive.res"><span>Display</span></a></li>
       										</ul></div>
       									</li>
       								
       								</ul>
       							</div>
       						</li>
       						<li>
				       			<a href="#"><span>Weekly Expencesss</span></a>
       						</li>
       						<li>	
       							<a href="#" class="parent"><span>Annual Expencess</span></a>
       							<div>
       								<ul>
       									<li>
       										<a href="#"><span>Auto Expenses</span></a>
       									</li>
       									<li>
       										<a href="#"><span>Phone Bill</span></a>
       									</li>
       									<li>
       										<a href="#"><span>Food Expenses</span></a>
       									</li>
       									<li>
       										<a href="#"><span>Hotel Expenses</span></a>
       									</li>
       									<li>
       										<a href="#"><span>Entertainment Expenses</span></a>
       									</li>
       									<li>
       										<a href="#"><span>Mis Expenses</span></a>
       									</li>
       									<li>
       										<a href="#"><span>Non training Expenses</span></a>
       									</li>
       								</ul>
       							</div>
       						</li>
       					</ul>
       				</div>
       		</li>
       		<li>
       			<a href="#"><span>Aging of Account Payable</span></a>
       			<div><ul>	
       				<li><a href="fn_aggingofaccountpayable.res"><span>Create</span></a></li>
       				<li><a href="rep_aging_of_account_payable_by_executive.res"><span>Display</span></a></li>
       			</ul></div>
       		</li>
       		<li>
       			<a href="#"><span>Aging of Account Recivable</span></a>
       		</li>
       		<li>
       			<a href="#"><span>Cash Disbursement Journal</span></a>
       		</li>
       		<li>
       			<a href="#"><span>Cash Receipt Journal</span></a>
       		</li>
       		<li>
       			<a href="#"><span>Daily Cash Report</span></a>
       		</li>
       		<li>
       			<a href="#"><span>Petty Cash Journal</span></a>
       		</li>
       		<li>
       			<a href="#"><span>Petty Cash Voucher</span></a>
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
        									<a href="fn_voucher_reciept.res"><span>Reciept</span></a>
        								</li>
        								<li>
        									<a href="fn_voucher_contra.res"><span>Contra</span></a>
        								</li>
        								<li>
        									<a href="fn_vocher_payment.res"><span>Payment</span></a>
        								</li>
        								<li>
        									<a href="fn_voucher_journal.res"><span>Journal</span></a>
        								</li>
        								<li>
        									<a href="fn_voucher_purchase.res"><span>Purchase</span></a>
        								</li>
        								<li>
        									<a href="fn_voucher_sales.res"><span>Sales</span></a>
        								</li>
        								<li>
        									<a href="fn_vocher_purchase_return.res"><span>Purchase Return</span></a>
        								</li>
        								<li>
        									<a href="fn_vocher_sales_return.res"><span>Sales Return</span></a>
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
        													<div>
        														<ul>
        															<li>
        																<a href="fn_create_ledger_form.res"><span>Create</span></a>
        															</li>
        															<li>
        																<a href="rep_fn_ledger_details_by_executive.res" target="_blank"><span>Display</span></a>
        															</li>
        														</ul>
        													</div>
        												</li>
        												<li>
        													<a href="#"><span>Voucher</span></a>
        													<div>
        														<ul>
        															<li>
        																<a href="fn_create_voucher_form.res"><span>Create</span></a>
        															</li>
        															<li>
        																<a href="#"><span>Display</span></a>
        															</li>
        														</ul>
        													</div>
        												</li>
        												<li>
        													<a href="#"><span>Groups</span></a>
        													<div>
        														<ul>
        															<li>
        																<a href="fn_create_groups_form.res"><span>Create</span></a>
        															</li>
        															<li>
        																<a href="#"><span>Display</span></a>
        															</li>
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
        																<a href="fn_create_stock_group.res"><span>Create</span></a>
        															</li>
        															<li>
        																<a href="#"><span>Display</span></a>
        															</li>
        														</ul>
        													</div>
        												</li>
        												<li>
        													<a href="#"><span>Stock Items</span></a>
        													<div>
        														<ul>
        															<li>
        																<a href="fn_create_stock_items.res"><span>Create</span></a>
        															</li>
        															<li>
        																<a href="#"><span>Display</span></a>
        															</li>
        														</ul>
        													</div>
        												</li>
        												<li>
        													<a href="#"><span>Units Of Measure</span></a>
        													<div>
        														<ul>
        															<li>
        																<a href="fn_inventory_measure.res"><span>Create</span></a>
        															</li>
        															<li>
        																<a href="#"><span>Display</span></a>
        															</li>
        														</ul>
        													</div>
        												</li>
        												<li>
        													<a href="#"><span>Voucher Types</span></a>
        													<div>
        														<ul>
        															<li>
        																<a href="fn_voucher_stock.res"><span>Create</span></a>
        															</li>
        															<li>
        																<a href="#"><span>Display</span></a>
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
       	<a href="rep_villadetails.res" target="_blank"><span>Villa Details</span></a>
       	
       </li>
       <li>
       	<a href="#"><span>Personal</span></a>
       	<div>
       		<ul>
       			<li>
       				<a href="fn_executive_edit_password.res"><span>Edit Password</span></a>
       				
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