<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@page import="com.svs.erp.Hr.db.*"%>
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
<script src="showhidebox.js" language="javascript"></script>
<script src="datediff2.js" language="javascript"></script>
<script type="text/javascript">

function checkvalid()
{
var pwd11=document.frm.mailpassword.value;
if(pwd11=="")
{
alert("Please enter password to send mail");
document.frm.mailpassword.focus();
document.frm.mailpassword.style.background = "navy";
document.frm.mailpassword.style.color="#FFFFFF";
return false;
}

var b=document.frm.leavetype.value;

if(b=="#")
{
alert("Please select type of leave");
document.frm.leavetype.focus();
document.frm.leavetype.style.background = "navy";
document.frm.leavetype.style.color="#FFFFFF";
return false;
}
//~~~~~~~~~~prorated~~~~~~~~~~~~~~~~~~~~~~~~~~SL
/*if(b=="1/2SL")
{
//alert(b);
// for checking status of  prorated
if(document.frm.slpro.value==0.0&&document.frm.proname.value=="Please follow pro-rata method")
{
alert("Please check SL-Pro-rata leaves");
return false;
}
}
if(b=="SL")
{
// for checking status of  prorated
if(document.frm.slpro.value<1&&document.frm.proname.value=="Please follow pro-rata method")
{
alert("Please check SL-Pro-rata leaves");
return false;
}
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`CL
if(b=="1/2CL")
{
// for checking status of  prorated
if(document.frm.clpro.value==0.0&&document.frm.proname.value=="Please follow pro-rata method")
{
alert("Please check CL-Pro-rata leaves");
return false;
}
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
if(b=="CL")
{
// for checking status of  prorated
if(document.frm.clpro.value<1&&document.frm.proname.value=="Please follow pro-rata method")

{
//alert(document.getElementById('clpro').value);
alert("Please check CL-Pro-rata leaves");
return false;
}

}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~PL
if(b == "1/2PL")
{
// for checking status of  prorated
if(document.frm.plpro.value==0.0&&document.frm.proname.value=="Please follow pro-rata method")
{
alert("Please check PL-Pro-rata leaves");
return false;
}
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
if(b== "PL")
{
// for checking status of  prorated
if(document.frm.plpro.value==0.0&&document.frm.proname.value=="Please follow pro-rata method")
{
alert("Please check PL-Pro-rata leaves");
return false;
}

}*/
//~~~~~~~~~~~~~~~~~~~~~~~~~~``PL
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


var c=document.frm.odhours.value;
if(document.getElementById('leavetype').value == 'OD'||document.getElementById('leavetype').value == 'PER'){

if(c=="HH:MM:SS"||c=="")
{
alert("Please enter time");
document.frm.odhours.focus();
document.frm.odhours.style.background = "pink";
return false;
}
}

var a=document.frm.date1.value;
if(a=="")
{
alert("Please Select From Date");
document.frm.date1.focus();
document.frm.date1.style.background = "pink";
return false;
}
var d=document.frm.date2.value;

if (d == "") {
		alert("Please Select To Date.");
		document.frm.date2.focus();
//		if(document.all || document.getElementByID){
	    document.frm.date2.style.background = "pink";
//	}
		return false;
	}
	
var e=document.frm.sess.value;
if(document.getElementById('leavetype').value == '1/2CL'||document.getElementById('leavetype').value == '1/2SL'||document.getElementById('leavetype').value == '1/2PL'||document.getElementById('leavetype').value == '1/2TL'||document.getElementById('leavetype').value == '1/2LOP'){
if(e=="#")
{
alert("Please select session");
document.frm.sess.focus();
document.frm.sess.style.background = "navy";
document.frm.sess.style.color="#FFFFFF";
return false;
}

}
//}
/////////////////////////find date diff
//function datediff(){
var day1, day2;
var month1, month2;
var year1, year2;
var value1=document.frm.date1.value;
	var value2=document.frm.date2.value;
	//alert(value1+"hai");
//var value1= form.fromdate.value;
//var value2= form.todate.value;
//alert(value2+"hai");
day1 = value1.substring (0, value1.indexOf ("-"));
month1 = value1.substring (value1.indexOf ("-")+1, value1.lastIndexOf ("-"));
year1 = value1.substring (value1.lastIndexOf ("-")+1, value1.length);

day2 = value2.substring (0, value2.indexOf ("-"));
month2 = value2.substring (value2.indexOf ("-")+1, value2.lastIndexOf ("-"));
year2 = value2.substring (value2.lastIndexOf ("-")+1, value2.length); 

date1 =day1+"-"+month1+"-"+year1;
date2 = day2+"-"+month2+"-"+year2;

//alert(date1+"dat1");
//alert(date2+"dat2");
firstDate = Date.parse(date1);
//alert(firstDate+"fdat");
secondDate= Date.parse(date2);
//alert(secondDate+"sdat");

msPerDay = 24 * 60 * 60 * 1000;
//alert(msPerDay);
dbd = Math.round((secondDate.valueOf()-firstDate.valueOf())/ msPerDay) + 1;
//alert(dbd+"hai");
	
		
if(dbd<=0)
{
alert("Starting date should not exceed the End date");
return false;
}
}



</script>
<script type="text/javascript">
	// JavaScript Document
////////////////////////////
	// JavaScript Document
var xmlHttp
var xmlHttp1
var xmlHttp2

function showCustomer(str)
{ 
xmlHttp=GetXmlHttpObject();
if (xmlHttp==null)
  {
  alert ("Your browser does not support AJAX!");
  return;
  } 
//  alert("123..........hi");
var url="leavedetails.jsp";
url=url+"?q="+str;
url=url+"&sid="+Math.random();
xmlHttp.onreadystatechange=stateChanged;
xmlHttp.open("GET",url,true);
xmlHttp.send(null);
}


function stateChanged() 
{ 
if (xmlHttp.readyState==4)
{ 
document.getElementById("txtHint1").innerHTML=xmlHttp.responseText;
}
}

//////////////////////////

function GetXmlHttpObject()
{
var xmlHttp=null;
try
  {
  // Firefox, Opera 8.0+, Safari
  xmlHttp=new XMLHttpRequest();
  }
catch (e)
  {
  // Internet Explorer
  try
    {
    xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
    }
  catch (e)
    {
    xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
  }
return xmlHttp;
}


</script>
<script type="text/javascript">//checking for restrict the leaves beyond the limit
// JavaScript Document
/////////////////////////find date diff
function datediffcheck(){
var day1, day2;
var month1, month2;
var year1, year2;
var value1=document.getElementById("date1").value;
	var value2=document.getElementById("date2").value;
	//alert(value1+"hai");
//var value1= form.fromdate.value;
//var value2= form.todate.value;
//alert(value2+"hai");
day1 = value1.substring (0, value1.indexOf ("-"));
month1 = value1.substring (value1.indexOf ("-")+1, value1.lastIndexOf ("-"));
year1 = value1.substring (value1.lastIndexOf ("-")+1, value1.length);

day2 = value2.substring (0, value2.indexOf ("-"));
month2 = value2.substring (value2.indexOf ("-")+1, value2.lastIndexOf ("-"));
year2 = value2.substring (value2.lastIndexOf ("-")+1, value2.length); 

date1 =day1+"-"+month1+"-"+year1;
date2 = day2+"-"+month2+"-"+year2;

//alert(date1+"dat1");
//alert(date2+"dat2");
firstDate = Date.parse(date1);
//alert(firstDate+"fdat");
secondDate= Date.parse(date2);
//alert(secondDate+"sdat");

msPerDay = 24 * 60 * 60 * 1000;
//alert(msPerDay);
dbd = Math.round((secondDate.valueOf()-firstDate.valueOf())/ msPerDay) + 1;
//alert(dbd+"hai");
	
var cl=document.getElementById("bcl1").value;
var sl=document.getElementById("bsl1").value;
var pl=document.getElementById("bpl1").value;
var lt=document.getElementById("leavetype").value;
if(lt=="CL")
{
if(dbd>cl)
{
alert("Please Check CL Balance Leaves");
return false;
}
}
if(lt=="SL")
{
if(dbd>sl)
{
alert("Please Check SL Balance Leaves");
return false;
}
}
if(lt=="PL")
{
if(dbd>pl)
{
alert("Please Check PL Balance Leaves");
return false;
}
}
if(lt=="1/2CL")
{
if(dbd>1)
{
alert("Please Check 1/2CL Balance Leaves");
return false;
}
}
if(lt=="1/2SL")
{
if(dbd>1)
{
alert("Please Check 1/2SL Balance Leaves");
return false;
}
}
if(lt=="1/2PL")
{
if(dbd>1)
{
alert("Please Check 1/2PL Balance Leaves");
return false;
}
}

}

</script>
<!--<script type="text/javascript" src="datediffcheck.js"></script>-->

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
</style></head>
<script language="javascript">

function clear1()
{
document.getElementById("odhours").value="";
}
function showMe (it, box) {
  var vis = (box.checked) ? "block" : "none";
  document.getElementById(it).style.display = vis;
  }
  function nextpage()
  {
 // alert("youclocked");
  //alert("hiiiiiiiiiiiiiii");
         var a=document.frm.employeecode.value;
		// alert(a);
		          var b=document.getElementById('date1').value;
			//  alert(b);
				           var c=document.getElementById('date2').value;
						 //  alert(c);
       //alert(a);
	   var d="Reject the applications if leaves are not sufficient";
	  //alert(d);
var e=document.frm.frommail.value;
//alert(d);
var f=document.frm.tomail.value;
var g=document.frm.empnametosend.value;
var h=document.frm.empnumbertosend.value;
var j=document.frm.empname.value;
var se1=document.getElementById('sess').value;
var lt1=document.getElementById('leavetype').value;
var odh1=document.getElementById('odhours').value;
if(se1=="#")
{
se1="select";
}
var pp11=document.frm.mailpassword.value;
if(pp11=="")
{
alert("Please enter password to send mail");
document.frm.mailpassword.focus();
document.frm.mailpassword.style.background = "navy";
document.frm.mailpassword.style.color="#FFFFFF";
return false;
}
else
{
		document.frmreject.action="RejectleaveBO?sess="+se1+"&ltype="+lt1+"&odh="+odh1+"&employeecode="+a+"&fromdate="+b+"&todate="+c+"&frommail="+e+"&tomail="+f+"&empnumbertosend="+h+"&empnametosend="+g+"&empname="+j+"&mailpassword="+pp11+"";
}
  }
</script>
<%
double CLl=0.0;
double SLl=0.0;
double PLl=0.0;

String ename=(String)session.getAttribute("ename");
 String user_name=(String)session.getAttribute("userlog");
String pwd=(String)session.getAttribute("passlog");
String comp=(String)session.getAttribute("comp");
 String name=(String)session.getAttribute("name");
 String empid=request.getParameter("empid");
  String fdate=request.getParameter("fdate");
   String tdate=request.getParameter("tdate");
   //////System.out.println("IN THE FORM...."+fdate+"............."+tdate);
 String clpro=request.getParameter("fcl");
  String slpro=request.getParameter("fsl");
   String plpro=request.getParameter("fpl");
   String pro=request.getParameter("pro");
////////System.out.println(empid);
   if((user_name!=null)&&(pwd!=null)){
   //~~~~~~~~~~~~~~~~`code to find user is RM or NOT
	int chekrm=0;
	Connection con=null;
	//DBConnection cc=new DBConnection();
	//con=cc.connection1();
	ConnectionUtils connectionUtils=new ConnectionUtils();
	try
	{
	//////System.out.println("LeaveAuthenticationEmp.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
	con=connectionUtils.getDBConnection();
	//////System.out.println("LeaveAuthenticationEmp.jsp::ConnectionPool----->>>>After Open --->>>>Test");
	
/*PreparedStatement prchekrm=con.prepareStatement("select * from employee where reportingto=?");
prchekrm.setString(1,ename);
ResultSet rschekrm=prchekrm.executeQuery();
while(rschekrm.next())
{
chekrm++;
}*/


PreparedStatement prleave=con.prepareStatement("select * from leaveopen where empid=?");
prleave.setString(1,empid);
//////System.out.println("@@@@@@@@@@@username=="+user_name);
//////System.out.println("@@@@@@@@@@@EMPID=="+empid);
ResultSet rsleave=prleave.executeQuery();
while(rsleave.next())
{
CLl=rsleave.getDouble(3);
SLl=rsleave.getDouble(4);
PLl=rsleave.getDouble(5);
}
int cc123=0;
PreparedStatement prleave1=con.prepareStatement("select * from leaveapplications where empid=?");
prleave1.setString(1,user_name);
ResultSet rsleave1=prleave1.executeQuery();
while(rsleave1.next())
{
cc123++;
}
	 %>
<body background="background images for website/master70_background.jpg">

<table width="100%" border="0" cellspacing="0" cellpadding="0" >
  <tr>
    <td align="center"><table width="1012" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/page_rounded_top.jpg" width="1012" height="16" /></td>
      </tr>
      <tr>
        <td background="images/page_rounded_bar.jpg"><table width="1012" border="0" cellspacing="0" cellpadding="0" >
          <tr>
		  <td>
		  <table>
		  <tr align="center">
            <td width="300" ><img src="images/logo_image.jpg" width="100" height="50" /></td>
			</tr>
			<tr align="center">
            <td ><img src="images/e-resource.gif" width="200"height="50" /></td>
			</tr>
			</table>
			</td>
            <td width="739" align="left" valign="bottom"><table width="721" border="0" cellspacing="0" cellpadding="0">
              <tr align="right">
			  <td>
			  <table width="721" border="0" cellspacing="0" cellpadding="0">
			  
                <td id="session" align="right">Welcome, <%=ename%></td>
				</table>
				</td>
              </tr>
			                <tr>
                <td height="50" align="right" valign="middle"><table width="570" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="10"></td>
                    <td width="701" align="left" valign="middle">
					<div id="menu">
					<ul class="menu">
       
      <li><a href="HomeofEmp" class="parent"><span>Home</span></a></li>
		
			<li><a href="#" class="parent"><span>Leave Info</span></a>
				<div><ul>
               	<li><a href="EmployeeProRata?empid=<%=user_name%>" ><span>Apply For Leave </span></a></li>
				
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
    <td><table width="1004" border="1" cellspacing="0" cellpadding="0" align="center" bordercolor="#CCCCCC" rules="cols">
      <tr >
        <td ></td>
		        <td width="1004" align="center"><img src="images/banner_img.gif" width="1004" height="10" /></td>

        <td ></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td align="center"><table width="1012" border="0" cellpadding="0" cellspacing="0" background="images/page_rounded_bar.jpg">
      <tr>
        <td width="477" align="center" valign="top" ><table width="576" border="0" cellspacing="0" cellpadding="0" class="tab10">
          <tr>
            <td width="426">&nbsp;</td>
          </tr>
</table>

<table class="tab10" width="98%" border="0"> <tr align="center">
   <td align="center" class="head"><h3>Leave Approval Form</h3><br></td>
	</tr>
	<tr><td>
	
	<form action="Leaveauthenticationforemp" method="get" name="frm" onSubmit="return checkvalid();">
	<table width="50%" border="0">
	<tr><td colspan="2"><div><font color="#CC3300" face="Verdana, Arial, Helvetica, sans-serif" size="2"><%=pro%></font></div></td><%if(cc123==0){%><td width="240"><font color="#CC3300">Available Leaves</font></td><%}%></tr>
	<tr>
	<td width="100" align="right">CL --></td><td><div><font color="#FF6600" face="Verdana, Arial, Helvetica, sans-serif" size="2"><strong><%=clpro%></strong></font></div><input type="hidden" size="3" value="<%=clpro%>" name="clpro" id="clpro"><input type="hidden" name="proname" id="proname" value="<%=pro%>"></td>
	<td><strong><%if(cc123==0){%><%=CLl%><%}%></strong></td></tr>
	<tr>
	<td width="100" align="right">SL --></td><td><div><font color="#FF6600" face="Verdana, Arial, Helvetica, sans-serif" size="2"><strong><%=slpro%></strong></font></div><input type="hidden" size="3" value="<%=slpro%>" name="slpro" id="slpro"></td>
	<td><strong><%if(cc123==0){%><%=SLl%><%}%></strong></td></tr>
	<tr>
	<td width="100" align="right">PL --></td><td><div ><font color="#FF6600" face="Verdana, Arial, Helvetica, sans-serif" size="2"><strong><%=plpro%></strong></font></div><input type="hidden" size="3" value="<%=plpro%>" name="plpro" id="plpro"></td>
	<td><strong><%if(cc123==0){%><%=PLl%><%}%></strong></td>   </tr></table></td></tr></table>

<table border="0" bordercolor="#D468F7"   align="center" class="tab10" width="98%" >
 
 <%
		//	String employeecode=request.getParameter("empid");
					  try
 {
 String frommail=null;
  String empnametosend=null;
    String empnumbertosend=null;

PreparedStatement pr=con.prepareStatement("select * from employee where empno=?");
//String announcementsid=request.getParameter("empid");
pr.setString(1,empid);
ResultSet rs=pr.executeQuery();
	while(rs.next()) 
 {
 //////System.out.println("mail to.............."+rs.getString(32));

 
 PreparedStatement prrm=con.prepareStatement("select empid,name,empno from employee where empno=?");
 prrm.setString(1,user_name);
 ResultSet rsrm=prrm.executeQuery();
 while(rsrm.next())
 {
//////System.out.println("mail from............."+rsrm.getString(1));
 frommail=rsrm.getString(1);
  empnametosend=rsrm.getString(2);
   empnumbertosend=rsrm.getString(3);
   //////System.out.println("from ID............."+empnumbertosend);
   //////System.out.println("from name.............."+empnametosend);
 }
  %>

 <tr>
  <td>
   <table align="center"  border="0" bgcolor="#A4C6C5">
    <tr>
	 <td>
	 <font color="#000066" size="2">Name</font>
	  </td>
	  <td>
	   <input type="text" name="empname" value="<%=rs.getString(2)%>" readonly="true" >

	  </td>
	</tr>
	
	
	<tr>
	 <td>
	  <font color="#000066" size="2">Employee Id</font>
	 </td>
	 <td>
	  <input type="text" name="employeecode" value="<%=rs.getString(1) %>" readonly="true"  onBlur="showCustomer(this.value);">
	 </td>
	</tr>
	
	<tr>
	<td>
	 <font color="#000066" size="2">Designation</font>
	</td>
	<td>
	 <input type="text" name="designation" value="<%=rs.getString(8)%>" readonly="true">
	</td>
	</tr>
	
	<tr>
	 <td>
	  <font color="#000066" size="2">Company Name</font>
	 </td>
	 <td>
   	   <input type="text" name="company" value="<%=rs.getString(23)%>" readonly="true">
	    <input type="hidden" name="empnumbertosend" value="<%=empnumbertosend%>" readonly="true">
		 <input type="hidden" name="empnametosend" value="<%=empnametosend%>" readonly="true">
	     <!-- <input type="hidden" name="frommail" value="<%=frommail%>" readonly="true">-->
	   <input type="hidden" name="tomail" value="<%=rs.getString(32)%>" readonly="true">
  	 <!--  <input type="hidden" name="mail" value="<%=rs.getString(34)%>" readonly="true">
   	   <input type="hidden" name="reporting" value="<%//=rs.getString(10)%>" readonly="true">-->
	 </td>
	</tr>
<tr>
	<td><font color="#000066" size="2">From mail</font></td>
	<td>
	  <input type="text" name="frommail" value="<%=frommail%>" readonly="true">  
	</td>
	</tr>
	<tr>
	<td><font color="#000066" size="2">Password</font></td></td>
	<td>  <input type="password" name="mailpassword"></td>
	</tr>
	<!--<tr>
	 <td>
	  <font color="#573801" size="4">To Employee Code</font>
	 </td>
	 <td>
	  <input type="text" name="emailid" value="<%//=empcodeee %>" >

	 </td>
	</tr>-->
	
	<!--<tr>
	 <td>
	  <font color="#573801" size="4">Purpose Of Leave</font>
	 </td>
	 <td>
	  <input type="text" name="purposeofleave">
	 </td>
	 
	</tr>-->
		
   </table>
   
  </td>
  </tr>
  
  <tr>
  <td align="center">
   <table align="center"  border="0" bgcolor="#A4C6C5">
    
	<tr>
	 <td  align="center">
	   <font color="#000066" size="2">Type Of Leave</font>
	  </td>
	  <td align="center"><font color="#000066" size="2">OD Time</font></td>
	 <td  align="center">
	   <font color="#000066" size="2">From Date</font>
	 </td>
	  <td  align="center">
	   <font color="#000066" size="2">To Date</font>
	 </td>
	 
	</tr>
	
	<tr>
	    <td align="center">
		<%//~~~~~~~~~~~~~~~~~~~~~~~~~```code for disabling the options ~~~~~~~~~~~~~~~~~~~~~~~~~~~``
		double cl1=0.0,sl1=0.0,pl1=0.0,lop1=0.0;
		String str2="select empid,sum(cl),sum(sl),sum(pl),sum(lop) from leaveapplications where empid=?  group by empid=?";
		PreparedStatement  pstmt2=con.prepareStatement(str2);
		pstmt2.setString(1,empid);
		pstmt2.setString(2,empid);
		ResultSet rs2=pstmt2.executeQuery();
		while(rs2.next())
		{
		cl1=rs2.getDouble(2);
		sl1=rs2.getDouble(3);
		pl1=rs2.getDouble(4);
		lop1=rs2.getDouble(5);
		}
		
		double ttcl=0.0,ttsl=0.0,ttpl=0.0;
		String str3="select clopen,slopen,plopen from leaveopen where empid=?";
		PreparedStatement  pstmt3=con.prepareStatement(str3);
		pstmt3.setString(1,empid);
		ResultSet rs3=pstmt3.executeQuery();
		while(rs3.next())
		{
		ttcl=rs3.getDouble(1);
		ttsl=rs3.getDouble(2);
		ttpl=rs3.getDouble(3);
		}
		////////System.out.println("Consumed PL......."+pl1+".........total PL..."+ttpl);
		//~~~~~~~~~~~~~~~~~~~~~~~~~~~code endzzzzz
		//~~~~~~~~~~~~~~~~~~~~code to get values from leavestatus
		String fd=null;
		String td=null;
		String ltype=null;
		String stype=null;
		String odtime=null;
		String str4="select fromdate,todate,leavetype,session,odtime from leavestatus where employeecode=? and fromdate=? and todate=?";
		PreparedStatement  pstmt4=con.prepareStatement(str4);
		pstmt4.setString(1,empid);
		pstmt4.setString(2,fdate);
		pstmt4.setString(3,tdate);
		ResultSet rs4=pstmt4.executeQuery();
		while(rs4.next())
		{
		fd=rs4.getString(1);
		td=rs4.getString(2);
		ltype=rs4.getString(3);
		stype=rs4.getString(4);
		odtime=rs4.getString(5);
		}
		//////System.out.println("LEAVE STATUS...fromdate.."+fd+"...Todate..."+td+"Ltype.."+ltype+"...Stype..."+stype+".......OD time"+odtime);
		//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`code endzzzzzzzzzzzzzz
		%>
		<select name="leavetype" onMouseOver="this.className='highlight1'" onMouseOut="this.className='normal1'" class="select" id="leavetype" onChange="swap1(),swap();" >
 <option value="<%=ltype%>"><%=ltype%></option>
  <!--<option value="OD">On Duty</option>
    <option value="PER">Permission </option>-->
	 <%//if(cl1<ttcl){ %>
	<option value="1/2CL">1/2CL</option>
	<%//}%>
	<%//if(sl1<ttsl){ %>
   <option value="1/2SL">1/2SL</option>
   <%//}%>
   <%//if(pl1<ttpl){ %>
    <option value="1/2PL">1/2PL</option>
	<%//}%>
	<option value="1/2TL">1/2Tour</option>
	<option value="1/2LOP">1/2LOP</option>
  <option value="TL">Tour </option>
  <%//if(cl1<ttcl){ %>
  <option value="CL">Casual Leave</option>
   <%//}%>
  <%//if(sl1<ttsl){ %>
  <option value="SL">Sick Leave</option>
   <%//}%>
    <%//if(pl1<ttpl){%>
  <option value="PL">Privilege Leave</option>
  <%//}%>
  <option value="LOP">LOP</option>
    <option value="SPL">Special Leave</option>
</select>

		
		</td>
		<td ><input type="text" name="odhours" id="odhours" onFocus="clear1();" size="6"  value="<%=odtime%>" > </td>
 <td align="center"><img src="images/date.png" align="absmiddle">
  <input type="text" name="date1" id="date1" size="12" onfocus="showCalendarControl(this);" readonly="true" value="<%=fd%>">
 </td>
 <td align="center"><img src="images/date.png" align="absmiddle">
  <input type="text" name="date2" id="date2" size="12" onfocus="showCalendarControl(this);" readonly="true" value="<%=td%>">
 </td>
 <td align="center">
 <select name="sess" id="sess"  onMouseOver="this.className='highlight1'" onMouseOut="this.className='normal1'" class="select">
 <option value="<%=stype%>"><%=stype%></option>
 <option value="FH">First Half</option>
 <option value="SH">Second Half</option>
 </select>
 </td>
</tr></table><br>



	 </td>
	</tr>
	
   
  <%}
		rs.close();
					
			%>


<%
/*try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"hrerp","root","root");
    PreparedStatement ps=conn.prepareStatement("select totalcl from leaveapplications where employeecode='"+empid+"' and status='Approved'");
	ResultSet rs2=ps.executeQuery();
%>

<td>
   <%
	rs2.afterLast();
	while(rs2.previous())
	{
	%>
<input type="hidden" name="opencasual" value="<%=rs2.getString(1)%>" id="opencasual">	
<%
			  //////System.out.println("cl"+rs2.getString(1));
 break;
	}
	%>
</td></tr>
<%
}
  catch (Exception e)
		  {
			  //////System.out.println("Exception raised");
		  }

*/%>
  <tr>
	 <td align="center">
	 <table>
	 <tr>
	 <td>
	  <input type="image" src="images/1.png" onClick="return datediff2(),datediffcheck();">
	 </td>
	 <td>
	  </form>
	  
	  <form name="frmreject" method="post">
	   <input type="image" src="images/reject.png"  onClick="return nextpage();"> 
</form>
</td>
</tr>
	 </table>
<br><br>
	 </td>
	 
	</tr>
	
	<tr><td><div id="txtHint1"></div></td></tr>    

	<tr align="center">
	<td>
<table><tr><td><font color="#FF0000" face="Verdana, Arial, Helvetica, sans-serif" size="1">** Approve atleast one leave to see balance leaves</font></td></tr> </table>
	<table border="1" bgcolor="#A4C6C5" bordercolor="#993300" rules="all">
	<tr bgcolor="#A4C6C5"><td><font color="#000066" size="3">Emp ID</font></td>
	<td><font color="#000066" size="2">Consumed CL</font></td>
	<td><font color="#000066" size="2">Consumed SL</font></td>
	<td><font color="#000066" size="2">Consumed PL</font></td>
	
	<td><font color="#000066" size="2">Total Leaves</font></td>
	<td><font color="#000066" size="2">Remaining Leaves</font></td>
	<td><font color="#000066" size="2">Total LOP</font></td>
	<td><font color="#000066" size="2"> Balance CL</font></td>
	<td><font color="#000066" size="2"> Balance SL</font></td>
	<td><font color="#000066" size="2"> Balance PL</font></td>
	</tr>
	<%
String str="select empid,sum(cl),sum(sl),sum(pl),sum(lop) from leaveapplications where empid=?  group by empid=?";
String str1="select grandleaves,remainingleaves,bcl,bsl,bpl from leaveapplications where empid=?";

PreparedStatement pstmt=con.prepareStatement(str);
PreparedStatement pstmt1=con.prepareStatement(str1);
pstmt.setString(1,empid);
pstmt.setString(2,empid);
pstmt1.setString(1,empid);


ResultSet rs2=pstmt.executeQuery();
ResultSet rs1=pstmt1.executeQuery();
double remain=0.0,grandleaves=0.0,bcl=0.0,bsl=0.0,bpl=0.0;
 rs1.afterLast();
			   while(rs1.previous())//last record
			   {
grandleaves=rs1.getDouble(1);
remain=rs1.getDouble(2);
bcl=rs1.getDouble(3);
bsl=rs1.getDouble(4);
bpl=rs1.getDouble(5);
break;
}
////////System.out.println("Grand Leaves........."+grandleaves);
////////System.out.println("Remaining Leaves........."+remain);
//rs1.close();
String id;
double cl,sl,pl,lop;
//out.println("<table border=1><tr><td>EMP ID.</td><td>CL</td><td>SL</td><td>PL</td><td>LOP</td><td>TOTAL LEAVES</td><td>Remaining LEAVES</td></tr>");
while(rs2.next())
{

  id=rs2.getString(1);
  cl=rs2.getDouble(2);
  sl=rs2.getDouble(3);
  pl=rs2.getDouble(4);
  lop=rs2.getDouble(5);
  %>
  <tr align="center">
  <td><font color="#330099"><strong><%=empid%></strong></font></td>
  <td><font color="#330099"><strong><%=cl%></strong></font></td>
  <td><font color="#330099"><strong><%=sl%></strong></font></td>
  <td><font color="#330099"><strong><%=pl%></strong></font></td>
 
  <td><font color="#330099"><strong><%=grandleaves%></strong></font></td>
  <td><font color="#FF0000"><strong><%=remain%></strong></font></td>
   <td><font color="#FF0000"><strong><%=lop%></strong></font></td>
   <td><font color="#FF0000"><strong><%=bcl%></strong></font><input type="hidden" id="bcl1" name="bcl1" value="<%=bcl%>"></td>
     <td><font color="#FF0000"><strong><%=bsl%></strong></font><input type="hidden" id="bsl1" name="bsl1" value="<%=bsl%>"></td>
	 <td><font color="#FF0000"><strong><%=bpl%></strong></font><input type="hidden" id="bpl1" name="bpl1" value="<%=bpl%>"></td>
  </tr>
  
<%}
if((bcl==0.0)&&(bsl==0.0)&&(bpl==0.0))
{%>
<input type="hidden" id="bcl1" name="bcl1" value="<%=CLl%>">
<input type="hidden" id="bsl1" name="bsl1" value="<%=bsl%>">
<input type="hidden" id="bpl1" name="bpl1" value="<%=bpl%>">
<%
}
}//try

catch(Exception ex)

{

out.println("Exception"+ex);

}
}catch(Exception ex)

{

out.println("Exception"+ex);

}finally {
			try
			{
				//////System.out.println("LeaveAuthenticationEmp.jsp::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("LeaveAuthenticationEmp.jsp::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}
%>

	
	
<!--<td>
<form action="mail.jsp">
 
 <input type="hidden" name="username" value="<%//=user_name %>">
 <input type="hidden" name="password" value="<%//=pwd %>">
  <input type="image" src="images/mail.jpg">
 </form>
 </td>-->
</table>
</table>
<tr>
    <td align="center">
		<table width="98%" class="tab10"><tr id="svstr"><td align="right"><br><br>&copy;Powered by <a href="http://www.svsinfomatics.com" target="_blank" id="svs"><font>SVSINFOMATICS</font></a></td></tr></table>

	<table width="1012" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/page_rounded_bottom.jpg" width="1012" height="16" /></td>
      </tr>
    </table></td>
  </tr>
  </table>

</body>
<br>
<%
 }
 else
 {
	 response.sendRedirect("index");
 }
 %>
</html>
