<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
 <link type="text/css" href="css/menu.css" rel="stylesheet" />
 <script>
window.history.forward(1); 
browser.cache.offline.enable = false; 

if(window.history.forward(1) != null)
         window.history.forward(1);
</script>
</head>
<body>
<div id="menu">
					<ul class="menu">
        <li><a href="fn_executive_main.fin" class="parent"><span>Home</span></a></li>
                    
                
        <!--///////////////////////////////////-->      
        <li><a href="#" class="parent"><span>Forms</span></a>
        <div>
        	<ul>
        	<li>
        			<a href="#"><span>Courier</span></a>
        				<div>
        					<ul>
        						<li>
        							<a href="fn_Courier_Reciept.fin"><span>Courier Reciept</span></a>
        						</li>
        						<li>
        							<a href="fn_Courier_dispatch.fin"><span>Courier Dispatch </span></a>
        						</li>
        					</ul>
        				</div>
        		</li>	
        		<li>
        			<a href="fn_create_invoice_form.fin"><span>Invoice Form</span></a>
        		</li>
        		 <li>
        			<a href="fn_create_Student.fin"><span>Student</span></a>
        		</li>
        		
        	</ul>
        </div>
        </li>
        
		<li><a href="#" class="parent"><span>Expenses Forms</span></a>
		<div><ul>
               			<li><a href="fn_create_daily_expenses_form.fin" ><span>Auto Exp Travel Form</span></a></li>
							<li><a href="fn_daily_phone_expenses.fin" ><span>Phone Bill Form</span></a></li>
								<li><a href="fn_food_expenses.fin" ><span>Food Exp Form</span></a></li>
									<li><a href="fn_hotel_exp.fin" ><span>Hotel Exp Form</span></a></li>
										<li><a href="fn_entertainment_exp.fin" ><span>Entertainment Exp Form</span></a></li>
											<li><a href="fn_mislenious_exp.fin" ><span>Misc Exp Form</span></a></li>
												<li><a href="fn_daily_non_training_exp.fin" ><span>Non-Trading Exp Form</span></a></li>
												<li><a href="fn_internet_exp.fin"><span>Internet Expenses</span></a></li>
												<li><a href="fn_advertisement_exp.fin"><span>Advertisement Expenses</span></a></li>
												<li><a href="fn_office_exp.fin"><span>Office Exp</span></a></li>
												<li><a href="fn_repairs_maintenance_exp.fin"><span>Repair & Maintenance</span></a></li>
												<li><a href="fn_postage.fin"><span>Postage & Corriers</span></a></li>
		</ul></div>
	    </li>				<!--Expenses close-->	
							     
		
		<!--///////////////////////////////////-->
		
		<li><a href="#" class="parent"><span>Aging Of Accounts</span></a>
		<div><ul>
                <li><a href="fn_aggingaccounpayble.fin" ><span>Aging Of Account Payable</span></a></li>
                <li><a href="fn_aggingaccounreceivable.fin" ><span>Aging Of Account Receivable</span></a></li>
               
               
            </ul></div>
		</li>
		<!--///////////////////////////////////-->
		 <li><a href="#" class="parent"><span>Transactions</span></a>
			<div><ul>
				
               	<li><a href="fn_cashdisbursementsjournal.fin"><span>Cash Disbursement Journal</span></a></li>
                <li><a href="fn_cashreceiptsjournal.fin" ><span>Cash Receipt Journal</span></a></li>
				<li><a href="fn_dailycashreport.fin" ><span>Daily Cash Form</span></a></li>
                <li><a href="fn_pettycashjournal.fin" ><span>Petty Cash Journal</span></a></li>
				<li><a href="fn_pettycashvoucher.fin" ><span>Petty Cash Voucher</span></a></li>
               
               
            </ul></div>
		</li>
        	<li><a href="#" class="parent"><span>Account</span></a>
        	<div>
        		<ul>
        			<li>
        				<a href="#"><span>Account Information</span></a>
        					<div>
        						<ul>
        							<li>
        								<a href="fn_create_groups_form.fin"><span>Group</span></a>	
        							</li>
        							<li>
        								<a href="fn_create_ledger_form.fin"><span>Ledger</span></a>
        							</li>
        							<li>
        								<a href="fn_create_voucher_form.fin"><span>Voucher</span></a>
        							</li>
        						</ul>
        					</div>
        			</li>
        			<li>
        				<a href="#"><span>Inventroy Information</span></a>
        				<div>
        					<ul>
        						<li>
        							<a href="fn_create_stock_group.fin"><span>Stock Group</span></a>
        						</li>
        						<li>
        							<a href="fn_create_stock_items.fin"><span>StockItem</span></a>
        						</li>
        						<li>
        							<a href="fn_inventory_measure.fin"><span>Units Measurements</span></a>
        						</li>
        						<li>
        							<a href="fn_voucher_stock.fin"><span>Voucher Type</span></a>
        						</li>
        					</ul>
        				</div>
        			</li>
        			<li>
        				<a href="#"><span>Account Voucher</span></a>
        				<div>
						<ul>
							<li>
								<a href="fn_voucher_reciept.fin"><span>Reciept</span></a>
							</li>
							<li>
								<a href="fn_voucher_contra.fin"><span>Contra</span></a>
								
							</li>
							<li>
								<a href="fn_vocher_payment.fin"><span>Payment</span></a>
							</li>
							<li>
								<a href="fn_voucher_journal.fin"><span>Journal</span></a>
							</li>
							<li>
								<a href="fn_voucher_purchase.fin"><span>Purchase</span></a>
							</li>
							<li>
								<a href="fn_voucher_sales.fin"><span>Sales</span></a>
							</li>
							<li>
								<a href="fn_vocher_purchase_return.fin"><span>Purchase Returns</span></a>
							</li>
							<li>
								<a href="fn_vocher_sales_return.fin"><span>Sales Return</span></a>
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
								<a href="#"><span>Accounts</span></a>
								<div>
									<ul>
										<!-- <li>
											<a href="fn_search_ledger.fin"><span>Ledger</span></a>
										</li> -->
										<li>
											<a href="fn_search_group.fin"><span>Group</span></a>
										</li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
				</li>
				<li>
					<a href=""><span>Personal</span></a>
					<div>	
						<ul>
							<li>
								<a href="user_change_password.fin"><span>Change Password</span></a>
							</li>
						</ul>
					</div>
				</li>
		<!--///////////////////////////////////-->
   		
		<!--///////////////////////////////////-->
		

    </ul>
</div>
<script type="text/javascript">
$(document).ready(function(){
$("body div:last").remove();
});
</script>
</body>
</html>