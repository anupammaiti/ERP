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
        <li><a href="fn_admin_main.fin" class="parent"><span>Home</span></a></li>
                    
                
        <!--///////////////////////////////////-->      
        <li><a href="#" class="parent"><span>Human Resource</span></a>
        <div>
        	<ul>
        	<li>
        			<a href="#"><span>Human Resource</span></a>
        	 			<div>
        					<ul>
        						<li>
        							<a href="fn_create_employee.fin"><span>Create Employee</span></a>
        						</li>
        						<li>
        							<a href="rep_fn_employee_list.fin" target="_blank"><span>Display Employee</span></a>
        						</li>
        						
        						 
        					</ul>
        				</div>
        		</li> 
        		
        		
        			<li><a href="#" class="parent"><span>PaySlip</span></a>
        							<div>
        								<ul>
        								<li>
        							<a href="fn_create_company_payslip.fin"><span>Company PaySlip</span></a>
        						</li>
        						<li>
        							<a href="#"><span>PaySlip List</span></a>
        							<div>
        								<ul>
        									<li><a href="fn_view_employee.fin"><span>Generate PaySlip</span></a></li>
        									<li><a href="fn_employee_payslip.fin"><span>PaySlip</span></a></li>
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
        	<a href="#"><span>Form</span></a>
        	<div><ul>
        	<li>
				
				<a href="#"><span>University</span></a>
				<div>
					<ul>
						<li>
							<a href="fn_create_university.fin"><span>Generate</span></a>
						</li>
						<li>
							<a href="fn_view_university.fin"><span>Edit</span></a>
						</li>
					
					</ul>
				</div>
				
			</li>
			<li>
        		<a href="#" class="parent"><span>Vat & Tax</span></a>
        			<div>
        				<ul>
        					<li>
        						<a href="fn_create_invoice_vat_form.fin"><span>Create</span></a>			
        					</li>
        					<li>
        						<a href="fn_edit_vat_form.fin"><span>Edit</span></a>			
        					</li>
        				</ul>
        			</div>
        			
        				
        		</li>
			<li>
				<a href="fn_admin_search_invoice.fin"><span>Invoice</span></a>
			</li>   
		 </ul></div>   	
        </li>
		<li><a href="#" class="parent"><span>Expenses Forms</span></a>
		<div><ul>
               			<li><a href="fn_admin_search_TravelExp.fin"><span>Auto Exp Travel Form</span></a></li>
							<li><a href="fn_admin_phonebill_exp.fin"><span>Phone Bill Form</span></a></li>
								<li><a href="fn_admin_foodexp.fin"><span>Food Exp Form</span></a></li>
									<li><a href="fn_admin_hotel_exp.fin"><span>Hotel Exp Form</span></a></li>
										<li><a href="fn_admin_entertainment_exp.fin" ><span>Entertainment Exp Form</span></a></li>
											<li><a href="fn_admin_miscleneous_exp.fin" ><span>Misc Exp Form</span></a></li>
												<li><a href="fn_admin_non_trading_exp.fin" ><span>Non-Trading Exp Form</span></a></li>
												 <li><a href="fn_admin_internet_exp.fin"><span>Internet Exp</span></a></li>
               <li><a href="fn_admin_advertisement_exp.fin"><span>Advertisement Exp</span></a></li>
               <li><a href="fn_admin_office_exp.fin"><span>Office Exp</span></a></li>
               <li><a href="fn_admin_repair_maintenance.fin"><span>Repair Maintenance Exp</span></a></li>
               <li><a href="fn_admin_postage.fin"><span>Postage Exp</span></a></li>						
										
		</ul></div>
	    </li>				<!--Expenses close-->	
							     
		
		<!--///////////////////////////////////-->
		
		<li><a href="#" class="parent"><span>Aging Of Accounts</span></a>
		<div><ul>
                <li><a href="fn_admin_aging_account_payable.fin" ><span>Aging Of Account Payable</span></a></li>
                <li><a href="fn_admin_aging_account_recivable.fin" ><span>Aging Of Account Receivable</span></a></li>
               
               
            </ul></div>
		</li>
		<!--///////////////////////////////////-->
		 <li><a href="#" class="parent"><span>Transactions</span></a>
		<div><ul>
               <li><a href="fn_admin_cash_distribution_journal.fin" ><span>Cash Disbursement Journal</span></a></li>
                <li><a href="fn_admin_cash_reciept_journal.fin" ><span>Cash Receipt Journal</span></a></li>
				<li><a href="fn_admin_daily_cash_form.fin" ><span>Daily Cash Form</span></a></li>
                <li><a href="fn_admin_petty_cash_journal.fin" ><span>Petty Cash Journal</span></a></li>
				<li><a href="fn_admin_petty_cash_voucher.fin" ><span>Petty Cash Voucher</span></a></li>
              
               
               
            </ul></div>
		</li>
       <li><a href="#"><span>Accounts</span></a>	
       	<div>
       		<ul>
       			<li>
       				<a href="#"><span>Account Information</span></a>
       				<div>
       					<ul>
       						<li><a href="fn_admin_ledger_details.fin"><span>Ledger</span></a></li>
       						<li><a href="fn_admin_groupdetails.fin"><span>Group</span></a></li>
       						<li><a href="fn_admin_vouchertype.fin"><span>Voucher</span></a>
       					</ul>
       				</div>
       			</li>
       			<li>
       				<a href="#"><span>Stock Information</span></a>
       				<div>
       					<ul>
       						<li>
       							<a href="fn_admin_stockgroup.fin"><span>Stock Group</span></a>
       						</li>
       						<li>
       							<a href="fn_admin_stock_item.fin"><span>Stock Item</span></a>
       						</li>
       						<li>
       							<a href="fn_admin_stock_voucher_type.fin"><span>Voucher Type</span></a>
       						</li>
       					</ul>
       				</div>
       			</li>
       			<li>
       				<a href="#"><span>Voucher Types</span></a>
       				<div>
       					<ul>
       						<li>
								<a href="fn_admin_voucher_recipt.fin"><span>Reciept</span></a>
							</li>
							<li>
								<a href="fn_admin_voucher_contra.fin"><span>Contra</span></a>
								
							</li>
							<li>
								<a href="fn_admin_voucher_payment.fin"><span>Payment</span></a>
							</li>
							<li>
								<a href="fn_admin_voucher_journal.fin"><span>Journal</span></a>
							</li>
							<li>
								<a href="fn_admin_voucher_purchase.fin"><span>Purchase</span></a>
							</li>
							<li>
								<a href="fn_admin_voucher_sales.fin"><span>Sales</span></a>
							</li>
							<li>
								<a href="fn_admin_voucher_purchase_return.fin"><span>Purchase Returns</span></a>
							</li>
							<li>
								<a href="fn_admin_voucher_sales_return.fin"><span>Sales Return</span></a>
							</li>
       					</ul>
       				</div>
       			</li>			
				<li>
       				<a href="fn_balance_sheet.fin"><span>Balance Sheet</span></a>
       			</li>
       			<li>
       				<a href="fn_profit_and_loss.fin"><span>Profit & Loss</span></a>
       			</li>
       		</ul>
       	</div>
       </li> 
       <li>
       	<a href="#"><span>Search</span></a>
       		<div>
       			<ul>
       				<li><a href="fn_view_universityList.fin"><span>University</span></a></li>
       				<li>
       					<a href="#"><span>Student</span></a>
       					<div>
       						<ul>
       							<li><a href="fn_search_student.fin"><span>Search</span></a></li>
       							<li><a href="fn_student_paid_amount.fin"><span>Remaing Amount</span></a></li>
       						</ul>
       					</div>
       				</li>
       				<li><a href="fn_search_courier_reciept.fin"><span>Courier Reciept</span></a></li>
       				<li><a href="fn_search_courier_dispather.fin"><span>Courier Dispatch</span></a></li>
       			</ul>
       		</div>
       </li>
       <li>
       	<a href="#" class="parent"><span>Personal</span></a>
       	<div>
       		<ul>
       			<li>
       				<a href="admin_change_password.fin"><span>Change Password</span></a>
       			</li>
       			<li>
       				<a href="fn_comp_logo_update.fin"><span>Change Company Profile</span></a>
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