<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
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
        <li><a href="#" class="parent"><span>Home</span></a></li>
       <li><a href="#" class="parent"><span>Details</span></a>
       <div>
       	<ul>
       		<li>
       			<a href="#"><span>Customer Details</span></a>
       			<div>
       				<ul>
       					<li>
       						<a href="view_customer_by_sales_executive.res"><span>Allot</span></a>
       					</li>
       					<li>
       						<a href="sl_view_customer_by_executive.res"><span>Display Customer</span></a>
       					</li>
       				</ul>
       			</div>		
       		</li>
       		<li>
      						<a href="#"><span>Invoice</span></a>
      						<div>
      							<ul>	
      								<li>
      									<a href="sl_invoice.res"><span>Create</span></a>
      								</li>
      								<li>
      									<a href="sl_view_invoice_by_executive.res"><span>Display</span></a>
      								</li>
      							</ul>
      						</div>	
      					</li>
      					<li>
      						<a href="#"><span>Apprisial Form</span></a>
      						<div>
      							<ul>
      								<li>
      									<a href="sl_appraisal_form.res"><span>Create</span></a>
      								</li>
      								<li>
      									<a href="sl_view_apprisial_form_by_executive.res"><span>Display</span></a>
      								</li>
      							</ul>
      						</div>
      					</li>
      					<li>	
      						<a href="#"><span>Order Form</span></a>
      						<div>
      							<ul>
      								<li>
      									<a href="sl_order.res"><span>Create</span></a>
      								</li>
      								<li>
      									<a href="sl_view_orderform_by_executive.res"><span>Display</span></a>
      								</li>
      							</ul>
      						</div>
      					</li>
      					<li>
      						<a href="#"><span>Invoice Work Performed</span></a>
      						<div>
      							<ul>
      								<li>
      									<a href="#"><span>Create</span></a>
      								</li>
      								<li>
      									<a href="#"><span>Display</span></a>
      								</li>
      							</ul>
      						</div>
      					</li>
      					<li>
      						<a href="#"><span>Purchase Order</span></a>
      						<div>
      							<ul>
      								<li>
      									<a href="sl_purchase_order.res"><span>Create</span></a>
      								</li>
      								<li>
      									<a href="sl_purchase_order_by_executive.res"><span>Display</span></a>
      								</li>
      							</ul>
      						</div>
      					</li>
      					<li>
      						<a href="#"><span>Sales Order</span></a>
      						<div>
      							<ul>
      								<li>
      									<a href="sl_sales_order_form.res"><span>Create</span></a>
      								</li>
      								<li>
      									<a href="sl_view_sales_order_by_executive.res"><span>Display</span></a>
      								</li>
      							</ul>
      						</div>
      					</li>
      					<li>
      						<a href="#"><span>Telephone Sales Order</span></a>
      						<div>	
      						<ul>
      							<li>
      								<a href="sl_telephone_sales_order.res"><span>Create</span></a>
      							</li>
      							<li>
      							<a href="sl_view_telephone_sales_order_by_executive.res"><span>Display</span></a>
      							</li>
      						</ul>
      						</div>
      					</li>
      					<li>
      						<a href="#"><span>Sales Call Log</span></a>
      						<div>
      							<ul>
      								<li>
      									<a href="sl_sales_call_log.res"><span>Create</span></a>
      								</li>
      								<li>
      									<a href="sl_view_sales_call_log_by_executive.res"><span>Display</span></a>
      								</li>
      							</ul>
      						</div>
      					</li>
      					<li>
      						<a href="#"><span>Pretty Cash Journal</span></a>
      						<div>
      							<ul>
      								<li>
      								<a href="sl_petty_cash_journal.res"><span>Create</span></a>
      								</li>
      								<li>
      									<a href="sl_view_petty_cash_journal_by_executive.res"><span>Display</span></a>
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
       				<a href="sl_executive_edit_password.res"><span>edit password</span></a>
       			</li>
       			<li>
       				<a href="update_hr_employee.res"><span>Change Profile</span></a>
       			</li>
       		</ul>
       		
       	</div>
       </li>
        <li class="last"><a href="logout.res"><span>log out</span></a></li>
    </ul>
    
</div>


<script type="text/javascript">
$(document).ready(function(){
$("body div:last").remove();
});
</script>

</body>
</html>