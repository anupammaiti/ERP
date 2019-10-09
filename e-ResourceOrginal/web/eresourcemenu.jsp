<!--
=================================================================
*eResourceDemo Application  Modify 2012/June/04		05:20PM			*				
*Copy Right By SVSINFOMATICS									*
*																*
=================================================================
-->


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <title>eResource</title>
    <link type="text/css" href="menu.css" rel="stylesheet" />
    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="menu.js"></script>
    <script type="text/javascript" src="js/eResourceJs.js"></script>
		<script type="text/javascript">
   		$(document).ready(function(){
		$("body div:last").remove();
		});
</script>
</head>
	<body>
		<%String userlog=null;
		String passlog=null;
		String ename=null;
		////////System.out.println("name"+name);
		userlog=(String)session.getAttribute("userlog");
		passlog=(String)session.getAttribute("passlog");
		ename=(String)session.getAttribute("ename");
		%>
		<div id="menu">
    		<ul class="menu">
        		<li><a href="HomeofEmp" class="parent"><span>Home</span></a></li>
		<!--2nd Leavel-->
        <li><a href="#" class="parent"><span>Leave Info</span></a>
            <ul>
                <li><a href="EmployeeProRata?empid=<%=userlog%>" class="parent"><span>Apply For Leave</span></a></li>
                <li><a href="Approve Leave" class="parent"><span>Approve Leave</span></a></li>
            </ul>
        </li>
		<!--3rd Level-->
		 <li><a href="#" class="parent"><span>Reports</span></a>
            <ul>
                <li><a href="TimecardforEMP" class="parent"><span>Time Card</span></a></li>
                <li><a href="TotalattandancereportforEMP" class="parent"><span>Total AttendanceReport</span></a></li>
                <li><a href="LeavecardforEMP" class="parent"><span>Leave Card</span></a></li>
                <li><a href="payroll_emp.jsp"><span>Payroll</span></a>
            </ul>
        </li>
		<!--4th Level-->
		<li><a href="#" class="parent"><span>Update Info</span></a>
            <ul>
                <li><a href="employeedetailsupdateform" class="parent"><span>Employee Info</span></a></li>
                <li><a href="logindetailsupdateform" class="parent"><span>Login Info</span></a> </li>
            </ul>
        </li>
		<!--5th Leavel -->
		<li><a href="#" class="parent"><span>Appraisal</span></a>
            <ul>
               <!--  <li><a href="AppraiseeForm.jsp" class="parent"><span>Appraisee</span></a></li>
                <li><a href="AppraiseeFormList.jsp" class="parent"><span>Appraiser</span></a></li>
                <li><a href="Reviewer.jsp" class="parent"><span>Reviewer</span></a></li> -->
                <li><a href="loan_form_employee.jsp"><span>Loan</span></a>
                <li><a href="IndividualLoanDetailsList"><span>Loan Due</span></a></li>
            </ul>
        </li>
		<!--6th Level-->
         <li class="last"><a href="logoff"><span>Logout</span></a></li>
    </ul>
</div>
</body>
</html>