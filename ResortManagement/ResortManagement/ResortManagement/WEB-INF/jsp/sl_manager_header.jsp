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
<%String username=(String)session.getAttribute("username");%>
<span id="loginby">Welcome <%=username%></span>
<span id="dateandtime"></span>
<div id="menu" align="left">
    <ul class="menu">
        <li><a href="sl_manager_main.res" class="parent"><span>Home</span></a></li>
       <li><a href="#" class="parent"><span>Forms</span></a>
       <div>
       	<ul>
       		<li>
       			<a href="#"><span>Customer Details</span></a>
       			<div>
       				<ul>
       					<li>
       						<a href="#"><span>Customer Allotment</span></a>
       						<div>
       							<ul>
       								<li>
       									<a href="view_customer_by_sales_manager.res"><span>Create</span></a>
       								</li>
       								<li>
       									<a href="allot_customer_by_sl_manager.res"><span>Display</span></a>
       								</li>
       							</ul>
       						</div>
       					</li>
       					<li>
       						<a href="sl_view_customer_by_manager.res"><span>Display</span></a>
       					</li>
       				</ul>
       			</div>		
       		</li>
      		<li>
      			<a href="#"><span>Reports</span></a>
      			<div>
      				<ul>
      					<li>
      						<a href="sl_view_invoice_by_manager.res"><span>Invoice</span></a>
      					</li>
      					<li>
      						<a href="sl_view_apprisial_form_by_manager.res"><span>Apprisial Form</span></a>
      					</li>
      					<li>	
      						<a href="sl_view_orderform_by_manager.res"><span>Order Form</span></a>
      					</li>
      					<li>
      						<a href="#"><span>Invoice Work Performed</span></a>
      					</li>
      					<li>
      						<a href="sl_purchase_order_by_manager.res"><span>Purchase Order</span></a>
      					</li>
      					<li>
      						<a href="sl_view_sales_order_by_manager.res"><span>Sales Order</span></a>
      					</li>
      					<li>
      						<a href="sl_view_telephone_sales_order_by_manager.res"><span>Telephone Sales Order</span></a>
      					</li>
      					<li>
      						<a href="sl_view_sales_call_log_by_manager.res"><span>Sales Call Log</span></a>
      					</li>
      					<li>
      						<a href="sl_view_petty_cash_journal_by_manager.res"><span>Pretty Cash Journal</span></a>
      					</li>
      				</ul>
      			</div>
      		</li> 
      		<li>
      			<a href="#"><span>Employee Details</span></a>
      			<div>
      				<ul>
      					<li>
      						<a href="sl_executives_by_managers.res"><span>Executives Details</span></a>
      					</li>
      				</ul>
      			</div>
      		</li>		
      		<li>
      			<a href="#"><span>Manager Meeting Form</span></a>
      			<div>
      				<ul>
      					<li>
      						<a href="sl_manager_task_form.res"><span>Create</span></a>
      					</li>
      					<li>
      						<a href="sl_manager_daily_task.res"><span>Display</span></a>
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
       				<a href="sl_manager_edit_password.res"><span>edit password</span></a>
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