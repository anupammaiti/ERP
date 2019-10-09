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
       <li><a href="#" class="parent"><span>Reports</span></a>
       <div>
       	<ul>
       		<li>
       			<a href="employee_details_report.erp" target="_blank"><span>Employee Information</span></a>		
       		</li>
       		<li>
       			<a href="InterviewEvalutionReport.erp"><span>Interview Form</span></a>
       		</li>
       		<li>
       			<a href="leave_application_report.erp"><span>Leave Application Form</span></a>
       		</li>
       		<li>
       			<a href="employee_requisition_form_report.erp"><span>Employee Requisition Form</span></a>
       		</li>
       		<li>
       			<a href="report.erp"><span>Employee Report</span></a>
       		</li>
       	</ul>
       </div>
       </li>
		<li><a href="hr_search_employees.erp"><span>Search</span></a></li>       
        <li class="last"><a href="logout.erp" class="parent"><span>logout</span></a></li>
    </ul>
</div>


<script type="text/javascript">
$(document).ready(function(){
$("body div:last").remove();
});
</script>
</body>
</html>