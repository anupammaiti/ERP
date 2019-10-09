<html>
<head>
<style type="text/css">

#mainMenumainDiv{
border:1px solid red;
}
</style>
</head>
<body>
<div id="mainMenumainDiv">
<div id="menu">
					<ul class="menu">
        <li><a href="#" class="parent"><span>Home</span></a></li>
		
		<li><a href="#" class="parent"><span>Leave Info</span></a>
				<div><ul>
               	<li><a href="EmployeeProRata?empid=<%=userlog%>" ><span>Apply For Leave </span></a></li>
			
				<li><a href="Approve Leave" ><span>Approve Leave </span></a></li>
				
            	</ul></div>
		</li>
		
        <li><a href="#" class="parent"><span>Reports</span></a>
            <div><ul>
              		
					<li><a href="TimecardforEMP"><span>Time Card</span></a></li>
					<li><a href="TotalattandancereportforEMP"><span>Total Attendance Report</span></a></li>
					<li><a href="LeavecardforEMP" ><span>Leave Card</span></a></li>
								
               </ul></div>
        </li>
       			
				<li><a href="#" class="parent"><span>Update Info</span></a>
		<div><ul>
				<li><a href="employeedetailsupdateform"><span>Employee Info </span></a></li>
				<li><a href="logindetailsupdateform"><span>Login Info </span></a></li>
               
       </ul></div>
		</li>
        
		<li><a href="#" class="parent"><span>Appraisal</span></a>
		<div><ul>
				<li><a href="AppraiseeForm.jsp"><span>Appraisee</span></a></li>
				<li><a href="AppraiseeFormList.jsp"><span>Appraiser </span></a></li>
				<li><a href="Reviewer.jsp"><span>Reviewer </span></a></li>
               
       </ul></div>
		</li>
		
	<li class="last"><a href="logoff"><span>Logout</span></a></li>
    </ul>
</div>

</div>
</body>
</html>