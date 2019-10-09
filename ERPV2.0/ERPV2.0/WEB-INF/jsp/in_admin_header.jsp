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
        <li><a href="in_admin.erp" class="parent"><span>Home</span></a></li>
       <li><a href="#" class="parent"><span>Creation</span></a>
       <div>
       	<ul>
       		<li>
       			<a href="purchase_requisition_report.erp"><span>Purchase Requisition</span></a>		
       		</li>
       		<li>
       			<a href="inventory_report2.erp"><span>Inventory Report</span></a>
       		</li>
       		<li>
       			<a href="outofstockreport.erp"><span>Out Of Stock Notice</span></a>
       		</li>
       		<li>
       			<a href="physical_inventroy_count_report.erp"><span>Physical Inventroy Count Sheet</span></a>
       		</li>
       		<li>
       			<a href="petty_cash_journal_report.erp"><span>Petty Cash Journal</span></a>
       		</li>
       		<li>
       			<a href="stock_details_report.erp"><span>Stock Details</span></a>
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