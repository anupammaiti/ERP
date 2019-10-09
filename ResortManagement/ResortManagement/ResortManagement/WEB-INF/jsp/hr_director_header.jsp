<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>e-Resource</title>

<script type="text/javascript" src="js/menu.js"></script>
<link type="text/css" href="css/menu.css" rel="stylesheet" />
 <script>
window.history.forward(1); 
browser.cache.offline.enable = false; 

if(window.history.forward(1) != null)
         window.history.forward(1);
</script></head>


<body>
<div id="menu">
					<ul class="menu">
        <li><a href="PN_EmployeeInformationList" class="parent"><span>Home</span></a></li>
       <li><a href="#"><span>Loan</span></a>
       	<div>
       		<ul>
       			<li>
       				<a href="LoanAuthentication"><span>Loan Permission</span></a>
       			</li>
       		</ul>
       	</div>
       </li>
	  <li><a href="#" class="parent"><span>Upload Data</span></a>
		<div><ul>
              <li><a href="ltms"><span>Attendance Data From Excel</span></a></li>
			  <li><a href="ltmsreload"><span>Attendance Data Reload</span></a></li>
             	 <li><a href="forgetcard"><span>Forgot Card</span></a></li>
				 <li><a href="forgetswipeofemp"><span>Forgot Swipe</span></a></li>
				  <li><a href="employee_details_for_payslip.jsp"><span>PaySlip</span></a></li> 
       </ul></div>
	   	</li>
		
		<li><a href="#" class="parent"><span>Leave Info</span></a>
				<div><ul>
                <li><a href="leavesearchmail" ><span>Leave Info To Mail</span></a></li>
				<li><a href="#" ><span>Approve Leave >></span></a>
				<div><ul>
				<li><a href="searchingforauthe" ><span>Approve Leave</span></a></li>
				<li><a href="searchingforautheadjust" ><span>Leave Adjustment</span></a></li>
				</ul></div>
				</li>
				<li><a href="#" ><span>Leave Reports >></span></a>
				<div><ul>
				<li><a href="Leavecardofemployee" ><span>Leave Card</span></a></li>
				<li><a href="Leavebalance" target="_blank" ><span>Leave Balance</span></a></li>
				</ul></div>
				</li>
				<li><a href="#"><span>Leave Opening Balance >></span></a>
				<div><ul>
				<li><a href="Leaveopening" ><span>Leave Opening Balance Excel</span></a></li>
				<li><a href="Leaveopeningforemp" ><span>Leave Balance For Emp</span></a></li>
				</ul></div>
				</li>
            	</ul></div>
				</li>
				
				
		
        <li><a href="#" class="parent"><span>Reports</span></a>
            <div><ul>
                <li><a href="PG_EmployeeInformation" ><span>All Employees Information</span></a> </li>
				<li><a href="emppresentsearchdetails"><span>Employees Attendance</span></a></li>
				 <li><a href="empabsentsearchdetails"><span>Employees Absent</span></a></li>
				 <li><a href="Halfdaysearchdetails"><span>Half Day Absentees</span></a></li> 
				 <li><a href="singleswipedetails"><span>Single Swipe</span></a></li> 
				  <li><a href="AllLatecomingdetails"><span>Late Coming</span></a></li>
				 <li><a href="Earlygoingdetails"><span>Early Going</span></a></li> 
				 <li><a href="payrolldetails"><span>Payroll</span></a></li> 
                 <li><a href="#" ><span>Employee Reports >></span></a>
                    <div class="sub"><ul>
					<li><a href="Latecomingempdetails"><span>Employee Late coming</span></a></li>
					<li><a href="Timecarddetails"><span>Employee Time Card</span></a></li>
					<li><a href="AllTimecardsdetails"><span>All Employees Time Cards</span></a></li>
					<li><a href="Totalattandancereportdetails"><span>Total Attendance Report</span></a></li>
					<li><a href="Totalattendancesummarydetails"><span>Total Attendance Summary </span></a></li>
					<li><a href="totalattendancesummaryRMdetails"><span>Attendance Report RM/HOD</span></a></li>
					</ul></div></li>
               </ul></div>
        </li>
       			
				<li><a href="#" class="parent"><span>Add Info</span></a>
		<div><ul>
				<li><a href="employeeinformationformdetails"><span>Employee</span></a></li>
             <!--    <li><a href="addcompanydetails"><span>Company</span></a></li> -->
                <li><a href="adddesignationdetails"><span>Designation</span></a></li>
				<li><a href="paidholidaysdetails"><span>Paid Holidays</span></a></li>
				<li><a href="update_logo.jsp"><span>Company Profile</span></a>
				<li><a href="#"><span>ComapnyPaySlip</span></a>
					<div>
						<ul>
							<li>
								<a href="companypayslip.jsp"><span>Create</span></a>
							</li>
							<li>
								<a href="update_company_payslip.jsp"><span>Edit</span></a>
							</li>
						</ul>
					</div>
				</li>
       </ul></div>
		</li>
        
		<li><a href="searchingempdetails" ><span>Emp Search</span></a></li>
	<li class="last"><a href="logoff"><span>Logout</span></a></li>
    </ul>
</div>
<script type="text/javascript">
$(document).ready(function(){
$("body div:last").remove();
});
</script>
</body>

</html>