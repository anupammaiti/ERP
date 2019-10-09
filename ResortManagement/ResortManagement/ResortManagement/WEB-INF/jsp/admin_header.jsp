<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Menu</title>
        <script type="text/javascript" src="js/jquery-1.7.1.js"></script>
        <script  src="js/kendo.all.min.js"></script>
        <script type="text/javascript" src="js/menu.js"></script>
        <script type="text/javascript" src="js/common_js/JQueryAjaxCall.js"></script>
        <script type="text/javascript" src="js/Admin/adminJS.js"></script>

        <link rel="stylesheet" href="css/menu.css"/>
        <link rel="stylesheet" href="css/kendo.common.min.css" />
        <link rel="stylesheet" href="css/kendo.default.min.css" />
        <link rel="stylesheet" href="css/kendo.default.mobile.min.css" />
        <link rel="stylesheet" href="css/resort_styles.css"/>
        <script>
            window.history.forward(1);
            browser.cache.offline.enable = false;

            if (window.history.forward(1) != null)
                window.history.forward(1);
        </script>
    </head>
    <body><span id="dateandtime"></span>
        <div id="menu" align="left">
            <ul class="menu">
                <li><a href="admin_main.res" class="parent"><span>Home</span></a></li>
                <li><a href="#" class="parent"><span>Customers</span></a>
                    <div>
                        <ul>
                            <li>
                                <a href="#"><span>Guest Authentication</span></a>
                                <div>
                                    <ul>
                                        <li>
                                            <a href="admin_guest_authentication.res"><span>New Guest</span></a>
                                        </li>
                                        <li>
                                            <a href="guest_alloted_users.res"><span>Alloted Guest</span></a>
                                        </li>
                                        <li>
                                            <a href="view_guest_users.res"><span>View All Guest Users</span></a>
                                        </li>

                                    </ul>
                                </div>	
                            </li>
                            <li>
                                <a href="#"><span>Customers</span></a>
                                <div>
                                    <ul>	
                                        <li>
                                            <a href="customer_details_view.res"><span>Display</span></a>
                                        </li>
                                        <li>
                                            <a href="#"><span>Allotting to Sales </span></a>
                                            <div>
                                                <ul>
                                                    <li>
                                                        <a href="allot_customer_by_admin.res"><span>Allotting to Manager</span></a>
                                                    </li>
                                                    <li>
                                                        <a href="view_allot_customer_by_admin.res"><span>Display</span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#"><span>Allotting to Finance</span></a>
                                            <div>
                                                <ul>
                                                    <li>
                                                        <a href="sl_view_customer_by_fn_director.res"><span>Allotting Manager</span></a>
                                                    </li>

                                                </ul>
                                            </div>
                                        </li>	
                                        <li>
                                            <a href="fn_view_customer_installments_by_admin.res"><span>Customer Installments</span></a>
                                        </li>				
                                    </ul>
                                </div>
                            </li>


                        </ul>
                    </div>
                </li>


                <li><a href="#" class="parent"><span>Resource</span></a>
                    <div>	
                        <ul>
                            <li>
                                <a href="#" ><span>Designation</span></a>
                                <div>
                                    <ul>
                                        <li>
                                            <a href="create_designation.res"><span>Create</span></a>
                                        </li>
                                        <li>	
                                            <a href="viewdesignation.res"><span>Display</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a href="#" ><span>Company List</span></a>
                                <div>
                                    <ul>
                                        <li>
                                            <a href="#"><span>Create</span></a>
                                        </li>
                                        <li>	
                                            <a href="#"><span>Display</span></a>
                                        </li>
                                        <li>
                                            <a href="hr_loan_form.res F"><span>PaySlip</span></a>
                                        </li>
                                    </ul>

                                </div>
                            </li>
                            <li>
                                <a href="#"><span>Villa</span></a>
                                <div>
                                    <ul>
                                        <li>
                                            <a href="create_villa_type.res"><span>Create</span></a>
                                        </li>
                                        <li>
                                            <a href="view_vill_details.res"><span>Display</span></a>
                                        </li>
                                        <li>
                                            <a href="layout_settings.res"><span>Layout Settings</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a href="#"><span>Inventory</span></a>
                                <div>
                                    <ul>
                                        <li>
                                            <a href="tel_agent_percentage_details.res"><span>Browcher</span></a>
                                        </li>
                                        <li>
                                            <a href="fn_agent_comission.res"><span>Commission</span></a>
                                        </li>
                                        <li>
                                            <a href="#"><span>Recruitment</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a href="#"><span>Department</span></a>
                                <div>
                                    <ul>
                                        <li>
                                            <a href="create_department.res"><span>Create</span></a>
                                        </li>
                                        <li>
                                            <a href="view_departmentlist.res"><span>Display</span></a>
                                        </li>
                                    </ul>
                                </div>

                            </li>
                            <li>
                                <a href="#"><span>Reporting To</span></a>
                                <div>
                                    <ul>
                                        <li>
                                            <a href="create_reportingto.res"><span>Create</span></a>
                                        </li>
                                        <li>
                                            <a href="view_reportingto.res"><span>Display</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>

                        </ul>
                    </div>
                </li>
                <li>
                    <a href="#" class="parent"><span>Department</span></a>
                    <div>
                        <ul>
                            <li>
                                <a href="#"><span>Human Resource</span></a>
                                <div>
                                    <ul>
                                        <li>
                                            <a href="#"><span>Employee</span></a>
                                            <div>
                                                <ul>	
                                                    <li>	
                                                        <a href="employee_details.res"><span>Create</span></a>
                                                    </li>
                                                    <li>
                                                        <a href="#"><span>View</span></a>
                                                        <div>
                                                            <ul>
                                                                <li>
                                                                    <a href="view_employee_details.res"><span>View Total Employees</span></a>
                                                                </li>
                                                                <li>
                                                                    <a href="admin_view_departments.res"><span>Department</span></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </li>

                                                </ul>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#"><span>Agent Detials</span></a>

                                        </li>
                                    </ul>

                                </div>
                            </li>

                            <li>
                                <a href="#"><span>Vehicle Management</span></a>
                                <div>
                                    <ul>
                                        <li>
                                            <a href="#"><span>Vehicle Details</span></a><div>
                                                <ul>
                                                    <li>
                                                        <a href="create_vehicle.res"><span>Create</span></a>		
                                                    </li>
                                                    <li>
                                                        <a href="vm_vehicle_display_by_admin.res"><span>Display</span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#"><span>Insurance</span></a>
                                            <div>
                                                <ul>
                                                    <li>
                                                        <a href="create_vehicle_Insurence.res"><span>Create</span></a>
                                                    </li>
                                                    <li>
                                                        <a href="view_vehicle_Insurance.res"><span>Display</span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#"><span>Maintenance</span></a>
                                            <div>
                                                <ul>
                                                    <li>
                                                        <a href="create_vehicle_maintanence.res"><span>Create</span></a>		
                                                    </li>
                                                    <li>
                                                        <a href="view_vehicle_maintanence.res"><span>Display</span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#"><span>Vehicle Booking</span></a>
                                            <div>
                                                <ul>
                                                    <li>
                                                        <a href="vehicle_allotment.res"><span>Create</span></a>
                                                    </li>
                                                    <li>
                                                        <a href="view_vehicle_allotment.res"><span>Display</span></a>
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
                    <a href="#"><span>Reports</span></a>
                    <div>
                        <ul>
                            <li>
                                <a href="#"><span>Department</span></a>
                                <div>
                                    <ul>
                                        <li>
                                            <a href="#"><span>Human Resource</span></a>

                                        </li>
                                        <li>
                                            <a href="#"><span>Sales & Marketing</span></a>
                                            <div>
                                                <ul>
                                                    <li>
                                                        <a href="sl_view_customer_by_admin.res"><span>Customer Details</span></a>
                                                    </li>
                                                    <li>
                                                        <a href="sl_view_invoice_by_admin.res"><span>Invoice</span></a>
                                                    </li>
                                                    <li>
                                                        <a href="sl_view_apprisalform_by_admin.res"><span>Apprisial Form</span></a>
                                                    </li>
                                                    <li>	
                                                        <a href="sl_view_orderform_by_admin.res"><span>Order Form</span></a>
                                                    </li>
                                                    <li>
                                                        <a href="#"><span>Invoice Work Performed</span></a>
                                                    </li>
                                                    <li>
                                                        <a href="sl_view_purchase_order_by_admin.res"><span>Purchase Order</span></a>
                                                    </li>
                                                    <li>
                                                        <a href="sl_view_sales_order_by_admin.res"><span>Sales Order</span></a>
                                                    </li>
                                                    <li>
                                                        <a href="sl_view_telephone_sales_order_by_admin.res"><span>Telephone Sales Order</span></a>
                                                    </li>
                                                    <li>
                                                        <a href="sl_view_sales_call_log_by_admin.res"><span>Sales Call Log</span></a>
                                                    </li>
                                                    <li>
                                                        <a href="sl_view_petty_cash_journal_by_admin.res"><span>Pretty Cash Journal</span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#"><span>Finance</span></a>
                                            <div>
                                                <ul>
                                                    <!-- Details Start -->
                                                    <li>
                                                        <a href="#"><span>Villa Details</span></a>
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
                                                                                            <a href="rep_fn_auto_expenses_travel_by_admin.res" target="_blank"><span>Auto Expenses</span></a>
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
                                                                                <a href="#"><span>Reciept</span></a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#"><span>Contra</span></a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#"><span>Payment</span></a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#"><span>Journal</span></a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#"><span>Purchase</span></a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#"><span>Sales</span></a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#"><span>Purchase Return</span></a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#"><span>Sales Return</span></a>
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
                                                        <a href="admin_balance_sheet.res"><span>Balance Sheet</span></a>
                                                    </li>
                                                    <li>
                                                        <a href="admin_profit_loss.res"><span>Profit & Loss</span></a>
                                                    </li>
                                                    <!-- Details End -->
                                                </ul>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#"><span>Vehicle Management</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a href="#"><span>Search</span></a>
                                <div>
                                    <ul>	
                                        <li>
                                            <a href="#"><span>Department</span></a>


                                        </li>
                                        <li>

                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a href="#"><span>Resource</span></a>
                                <div>
                                    <ul>
                                        <li>
                                            <a href="rep_department.res" target="_blank"><span>Departments</span></a>
                                        </li>
                                        <li>
                                            <a href="rep_designation.res" target="_blank"><span>Designation</span></a>
                                        </li>
                                        <li>
                                            <a href="rep_reportingto.res" target="_blank"><span>Reporting To</span></a>
                                        </li>
                                        <li>
                                            <a href="rep_villadetails.res" target="_blank"><span>Villa Details</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="#"><span>Permission</span></a>
                    <div>
                        <ul>
                            <li>
                                <a href="admin_access_controller_on_manager_task.res"><span>Manager Task Permissions</span></a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="last"><a href="logout.res"><span>log out</span></a></li>
            </ul>

        </div>


        <script type="text/javascript">
            $(document).ready(function () {
                $("body div:last").remove();
            });
        </script>

    </body>
</html>