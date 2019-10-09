<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html;charset=utf-8" http-equiv="Content-Type">
<link type="text/css" href="menu.css" rel="stylesheet" />
    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="menu.js"></script>
    <script type="text/javascript" src="js/eResourceJs.js"></script>
<link href="styles.css" rel="stylesheet" type="text/css" />
<link href="CalendarControl.css" rel="stylesheet" type="text/css">
<script src="CalendarControl.js" language="javascript"></script>
<script src="datediff.js" language="javascript"></script>
<meta content="text/html;charset=utf-8" http-equiv="Content-Type">
<title>SVS Infomatics</title>
<link rel="shortcut icon" href="./images/11.gif" /> <link rel="icon" href="./images/11.gif" type="image/gif" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 10px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
-->
-->

.t1
{
border:0;
background-color:"#FADFC3";
border-color:"#FADFC3";
}
</style>
<script language="javascript">
function check()
{
a=document.frm11.fromdate.value;
b=document.frm11.todate.value;
if(a==""||b=="")
{
alert("Please specify date");
return false;
}}
</script>
</head>

<body>
<%
String user_name=(String)session.getAttribute("userlog");
String pwd=(String)session.getAttribute("passlog");
String comp=(String)session.getAttribute("comp");
 if((user_name!=null)&&(pwd!=null)){
 %>
 <table width="100%" border="0" cellspacing="0" cellpadding="0" >
  <tr>
    <td align="center"><table width="1012" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/page_rounded_top.jpg" width="1012" height="16" /></td>
      </tr>
      <tr>
        <td background="images/page_rounded_bar.jpg"><table width="1012" border="0" cellspacing="0" cellpadding="0">
		          <tr>
            <td width="157" align="right"><img src="images/logo_image.jpg" width="146" height="93" /></td>
            <td width="116">&nbsp;</td>
            <td width="739" align="left" valign="bottom"><table width="721" border="0" cellspacing="0" cellpadding="0">
                <tr align="right">
                <td id="session">Welcome, <%=user_name%></td>
              </tr>
              <tr>
                <td height="50" align="right" valign="middle"><table width="570" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="10"></td>
                    <td width="701" align="left" valign="middle">
					<div id="menu">
					<ul class="menu">
        
		 <li><a href="Home" class="parent"><span>Home</span></a></li>
       
	  <li><a href="#" class="parent"><span>Upload Data</span></a>
		<div><ul>
              <li><a href="ltms"><span>Attendance Data From Excel</span></a></li>
			  <li><a href="ltmsreload"><span>Attendance Data Reload</span></a></li>
             	 <li><a href="forgetcard"><span>Forgot Card</span></a></li>
				 <li><a href="forgetswipeofemp"><span>Forgot Swipe</span></a></li>
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
                <li><a href="employeeinformationform1details" ><span>All Employees Information</span></a> </li>
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
                <li><a href="addcompanydetails"><span>Company</span></a></li>
                <li><a href="adddesignationdetails"><span>Designation</span></a></li>
				<li><a href="paidholidaysdetails"><span>Paid Holidays</span></a></li>
       </ul></div>
		</li>
        
		<li><a href="searchingempdetails" ><span>Emp Search</span></a></li>
	<li class="last"><a href="logoff"><span>Logout</span></a></li>
    </ul>
</div>
					<% session.setAttribute("username",user_name);
							session.setAttribute("password",pwd);
							%>


					
					</td>
                    <td width="10" align="right"></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td bgcolor="#EDC527">&nbsp;</td>
		        <td width="1012"><img src="images/banner_img.gif" width="1012" height="195" /></td>

        <td bgcolor="#EDC527">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td align="center"><table width="1012" border="0" cellpadding="0" cellspacing="0" background="images/page_rounded_bar.jpg">
      <tr>
        <td width="577" align="center" valign="top" ><table width="576" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="576">&nbsp;</td>
          </tr>
<!--<table border="0" bordercolor="#D468F7"   align="center" class="tab10">
<form action="search.jsp" method="post">
   <tr>
    
	<td>
	  <strong><font color="#573801" size="2" face="Verdana">Start Date</font>
	  </strong><font color="#006600" size="4">
	  <input type="text" name="startdate" value="yyyy-mm-dd" size="16" onfocus="showCalendarControl(this);" readonly="true"></font>
	
	</td>
	<td>
	 <font color="#006600" size="4"><strong><font color="#573801" size="2" face="Verdana">End Date</font></strong>
	 <input type="text" name="enddate" value="yyyy-mm-dd" size="16" onfocus="showCalendarControl(this);" readonly="true"></font>
	 </td>


	 
	  <td>
       <input type="submit" value="Submit">
	  </td>
    </tr>
  </form>
</table>-->
<h3 align="center"> <font color="#573801" size="4" class="head">Search for Leave Balance</font></h3>

<table border="0" bordercolor="#D468F7"   align="center" class="tab10" width="98%">
<form action="Leavebalance" name="frm11" method="post" onSubmit="return datediff();">
  
	 <tr align="right">
   <td width="500">
	  <strong><font color="#000066" size="2" face="Verdana">From Date</font>
	  </strong><font color="#006600" size="4"><img src="images/date.png" align="absmiddle">
	  <input type="text" name="fromdate" id="start" size="16" onfocus="showCalendarControl(this);" readonly="true"></font>
	</td>
	<td align="center"><b></b></td>
	
	<td width="500" align="left">
	<strong><font color="#000066" size="2" face="Verdana">To Date</font>
	  </strong><font color="#006600" size="4"><img src="images/date.png" align="absmiddle">
	  <input type="text" name="todate" id="end" size="16" onfocus="showCalendarControl(this);" readonly="true"></font>
	 </td>
	 </tr>
	 
	 <tr align="center">
<td class="t1"></td><td class="t1"><input type="image" src="images/submit_btn.png" onFocus="return check()"></td>
    </tr>
  </form>
</table>
<tr>
    <td align="center">
		<table width="98%"><br><br><tr id="svstr"><td align="right">&copy;Powered by <a href="http://www.svsinfomatics.com" target="_blank" id="svs"><font>SVSINFOMATICS</font></a></td></tr></table>

	<table width="1012" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/page_rounded_bottom.jpg" width="1012" height="16" /></td>
      </tr>
    </table></td>
  </tr>
  </table>

</body>
<%
 }
 else
 {
	 response.sendRedirect("index");
 }
 %>
</html>
