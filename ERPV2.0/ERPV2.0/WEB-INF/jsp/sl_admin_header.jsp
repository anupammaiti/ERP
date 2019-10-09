<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>header</title>
	<link type="text/css" href="css/menu.css" rel="stylesheet" />
	
    <script type="text/javascript" src="js/jquery-1.7.1.js"></script>
    <script type="text/javascript" src="js/menu.js"></script>
</head>
<body>

<!-- Menu Bar -->
<div id="menu" align="center">
    <ul class="menu">
        <li><a href="home.erp" class="parent"><span>Home</span></a></li>
       <li><a href="#" class="parent"><span>Creation</span></a>
       <div>
       	<ul>
       		<li>
       			<a href="sales_invoice_report.erp"><span>Invoice Report</span></a>		
       		</li>
       		<li>
       			<a href="appricial_form_report.erp"><span>Apprisial Form</span></a>
       		</li>
       		<li>
       			<a href="orderform_report.erp"><span>Order Form</span></a>
       		</li>
       		<li>
       			<a href="#"><span>Invoice Work Perform</span></a>
       		</li>
       		<li>
       			<a href="#"><span>Purchase Order</span></a>
       		</li>
       		<li>
       			<a href="#"><span>Sales Order</span></a>
       			
       		</li>
       		<li>
       			<a href="telephone_sales_order_report.erp"><span>Telephone Sales Order</span></a>
       		</li>
       		<li>
       			<a href="sales_call_log_report.erp"><span>Sales Call Log</span></a>
       		</li>
       		<li>
       			<a href="sales_petty_cash_journal_report.erp"><span>Petty Cash Journal</span></a>
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