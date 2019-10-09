<!--
=================================================================
*eResourceDemo Application  Modify 2012/June/04		05:20PM			*				
*Copy Right By SVSINFOMATICS									*
*																*
=================================================================
-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="content-type" content="text/html;charset=utf-8" />
        <title>Resort Management</title>
        <!--<script type="text/javascript" src="js/jquery-1.7.1.js"></script>-->
        <link rel="stylesheet" href="css/kendo.common.min.css" />
        <link rel="stylesheet" href="css/kendo.default.min.css" />
        <link rel="stylesheet" href="css/kendo.default.mobile.min.css" />
        <link rel="stylesheet" href="css/resort_styles.css"/>
        <script  src="js/jquery-1.7.1.js"></script>
        <script  src="js/kendo.all.min.js"></script>
        <script src="js/ProcessingRequest.js"></script> 
        <script type="text/javascript" src="js/menu.js"></script>
        <link rel="stylesheet" href="css/menu.css"/>
        <script>
            window.history.forward(1);
            browser.cache.offline.enable = false;

            if (window.history.forward(1) != null)
                window.history.forward(1);
        </script></head>


    <body>




        <span id="dateandtime"></span>
        <div id="menu" align="left">
            <ul class="menu">
                <li><a href="hr_ex_main.res" class="parent"><span>HR Home</span></a></li>
                <li><a href="#" class="parent"><span>Form</span></a>
                    <div>
                        <ul>
                            <li><a href="hr_totalLeaveGrid.res" ><span>Leave Info</span></a>
<!--                                <div>
                                    <ul>
                                        <li><a href="hr_exe_leave_form.res"><span>Apply For Leave</span></a></li>
                                        <li><a href="hr_ex_leave_approval.res"><span>Approve Leave</span></a></li>
                                    </ul>
                                </div>-->
                            </li>

                        </ul>
                    </div>
                </li>
                <li>
                    <a href="hr_employeesGrid.res"><span>Employee</span></a>
                    <div>
                        <ul>	
<!--                            <li>	
                                <a href="employee_details.res"><span>Create</span></a>
                            </li>-->
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
                <li><a href="#" class="parent"><span>Reports</span></a>
                    <div>
                        <ul>
                            <li><a href="#" ><span>Time Card</span></a></li>
                            <li><a href="#" ><span>Total AttendanceReport</span></a></li>
                            <li><a href="#" ><span>Leave Card</span></a></li>
                            <li><a href="hr_exe_payrollGrid.res"><span>Payroll</span></a>
                        </ul>
                    </div>
                </li>
                <li><a href="#" class="parent"><span>Update Info</span></a>
                    <div>
                        <ul>
                            <li><a href="#" ><span>Employee Info</span></a></li>
                            <li><a href="#" ><span>Login Info</span></a> </li>
                        </ul>
                    </div>
                </li>
                <li><a href="#" ><span>Appraisal</span></a>
                    <div>
                        <ul>
                            <li><a href="#" class="parent"><span>Appraisee</span></a></li>
                            <li><a href="#" class="parent"><span>Appraiser</span></a></li>
                            <li><a href="#" class="parent"><span>Reviewer</span></a></li>
                            <li><a href="hr_loan_form.res"><span>Loan</span></a>
                            <li><a href="#"><span>Loan Due</span></a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="rep_villadetails.res" target="_blank"><span>Villa Details</span></a>
                </li>

                <li class="last"><a href="logout.res"><span>logout</span></a></li>
            </ul>
        </div>





        <script type="text/javascript">
            $(document).ready(function () {
                $("body div:last").remove();
            });
        </script>

    </body>
</html>
<!-- <div id="menu">
        <ul class="menu">
                <li><a href="HomeofEmp" ><span>Home</span></a></li>
        2nd Leavel
<li><a href="#" ><span>Leave Info</span></a>
    <ul>
        <li><a href="#" ><span>Apply For Leave</span></a></li>
        <li><a href="Approve Leave" ><span>Approve Leave</span></a></li>
    </ul>
</li>
        3rd Level
         <li><a href="#" class="parent"><span>Reports</span></a>
    <ul>
        <li><a href="TimecardforEMP" ><span>Time Card</span></a></li>
        <li><a href="TotalattandancereportforEMP" ><span>Total AttendanceReport</span></a></li>
        <li><a href="LeavecardforEMP" ><span>Leave Card</span></a></li>
        <li><a href="payroll_emp.jsp"><span>Payroll</span></a>
    </ul>
</li>
        4th Level
        <li><a href="#" class="parent"><span>Update Info</span></a>
    <ul>
        <li><a href="employeedetailsupdateform" ><span>Employee Info</span></a></li>
        <li><a href="logindetailsupdateform" ><span>Login Info</span></a> </li>
    </ul>
</li>
        5th Leavel
        <li><a href="#" ><span>Appraisal</span></a>
    <ul>
        <li><a href="AppraiseeForm.jsp" class="parent"><span>Appraisee</span></a></li>
        <li><a href="AppraiseeFormList.jsp" class="parent"><span>Appraiser</span></a></li>
        <li><a href="Reviewer.jsp" class="parent"><span>Reviewer</span></a></li>
        <li><a href="loan_form_employee.jsp"><span>Loan</span></a>
        <li><a href="IndividualLoanDetailsList"><span>Loan Due</span></a></li>
    </ul>
</li>
        6th Level
 <li class="last"><a href="logoff"><span>Logout</span></a></li>
</ul>
</div> -->
