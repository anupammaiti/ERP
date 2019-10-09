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
<script src="datediff1.js" language="javascript"></script>

<script type="text/javascript">

function checkvalid()
{
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
if(b=="1/2SL")
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

}
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
</style>
<script type="text/javascript">
   		$(document).ready(function(){
		$("body div:last").remove();
		});
</script>
</head>
<script language="javascript">

function clear1()
{
document.getElementById("odhours").value="";
}
function showMe (it, box) {
  var vis = (box.checked) ? "block" : "none";
  document.getElementById(it).style.display = vis;
  }
</script>
<%
String ename=(String)session.getAttribute("ename");
 String user_name=(String)session.getAttribute("userlog");
String pwd=(String)session.getAttribute("passlog");
String comp=(String)session.getAttribute("comp");
 String name=(String)session.getAttribute("name");
 String empid=request.getParameter("empid");
 String clpro=request.getParameter("fcl");
  String slpro=request.getParameter("fsl");
   String plpro=request.getParameter("fpl");
   String pro=request.getParameter("pro");
////////System.out.println(empid);
  if((user_name!=null)&&(pwd!=null)){
	 %>
<body >
<input type="hidden" value="<%=empid%>" id="empno"/>
<script type="text/javascript">
	$(document).ready(function(){
		var empno=$('#empno').val();
		//alert('Hello'+empno);
		$.getJSON('EmployeeLeaveAuthenticaion',{'empno':empno},function(json){
			
			$('#name').val(json.name);
			$('#empid').val(json.empid);
			$('#designation').val(json.designation);
			$('#companyname').val(json.companyname);
			
		});
		
		
		
	
		//alert('Leave Types');
		$.get('LeaveTypes',{'empid':empno},function(data){
			//alert('Leave Types'+data);
			var data1=data;
			$('.leavetypes').append(data1);
			});
		//alert('Leave List');
		$.get('LeavesList',{'empid':empno},function(data){
			//alert('Leave List'+data);
			$('#data2').html(data);
		});
	});
</script>
 <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center"><table width="1012" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/page_rounded_top.jpg" width="1012" height="16" /></td>
      </tr>
      <tr>
        <td background="images/page_rounded_bar.jpg">
		<table width="1012" border="0" cellspacing="1" cellpadding="0">
          <tr>
		  <td>
		  	<table border="0">
		  	<tr align="center">
            <input type="hidden" value="<%=comp %>" id="companyid"/>
            <img alt="Logo" class="logo_image" alt="logo"/>
			</tr>
			<tr align="center">
            <td ><img src="images/e-resource.gif" width="200"height="50" /></td>
			</tr>
			</table>
		</td>
			<div id="welcome1"><font color="#000099"><b>Welcome:</b></font>&nbsp;&nbsp;<%=user_name%></div>
       	<td width="739" align="left" valign="bottom">
			<table width="721" border="0" cellspacing="0" cellpadding="0">
            <tr align="right">
			<td>
			</td>
            </tr>
            </table>
			</td></tr>
          
        </table></td> </tr>
     
    </table></td> </tr>
 
  <tr>
    <td>
		<table width="1004" border="0" cellspacing="0" cellpadding="0" align="center" bordercolor="red" rules="cols">
      		<tr >
       			 	<td ></td>
		        	<td width="1004" align="center"><img src="images/banner_img.gif" width="1004" height="10" /></td>
       			 	<td ></td>
      		</tr>
    	</table>
	</td>
  </tr>
  <tr>
    <td align="center">
		<table width="1012" border="0" cellpadding="0" cellspacing="0" background="images/page_rounded_bar.jpg">
     	 <tr>
        	<td width="477" align="center" valign="top" >
				<!--<table width="576" border="0" cellspacing="0" cellpadding="0" class="tab10">
         		 <tr>
           		 <td width="426">&nbsp;</td>
				  </tr>
				</table>-->
				
				
				<table align="center"><tr><td>
				<jsp:include flush="true" page="hr_admin_header.jsp"></jsp:include>
				</td></tr></table>

				<% session.setAttribute("username",user_name);
							session.setAttribute("password",pwd);
							%>
<form action="Leaveauthentication" method="post" name="frm" onSubmit="return checkvalid();">
<table class="tab10" width="98%" border="0"> <tr align="center">
   <td align="center" class="head"><h3>Leave Apply Form</h3><br></td>
	</tr>
	<tr><td>
	
	<table width="50%" border="0">
	<tr><td colspan="2"><div><font color="#CC3300" face="Verdana, Arial, Helvetica, sans-serif" size="2"><%=pro%></font></div></td></tr>
	<tr>
	<td width="100" align="right">CL --></td><td><div><font color="#FF6600" face="Verdana, Arial, Helvetica, sans-serif" size="2"><strong><%=clpro%></strong></font></div><input type="hidden" size="3" value="<%=clpro%>" name="clpro" id="clpro"><input type="hidden" name="proname" id="proname" value="<%=pro%>"></td>
	</tr>
	<tr>
	<td width="100" align="right">SL --></td><td><div><font color="#FF6600" face="Verdana, Arial, Helvetica, sans-serif" size="2"><strong><%=slpro%></strong></font></div><input type="hidden" size="3" value="<%=slpro%>" name="slpro" id="slpro"></td>
	</tr>
	<tr>
	<td width="100" align="right">PL --></td><td><div ><font color="#FF6600" face="Verdana, Arial, Helvetica, sans-serif" size="2"><strong><%=plpro%></strong></font></div><input type="hidden" size="3" value="<%=plpro%>" name="plpro" id="plpro"></td>
	</tr></table></td></tr></table>

<table border="0" bordercolor="#D468F7"   align="center" class="tab10" width="98%" >
 



 <tr>
  <td>
   <table align="center"  border="0" bgcolor="#A4C6C5">
    <tr>
	 <td>
	 <font color="#000066" size="2">Name</font>
	  </td>
	  <td>
	   <input type="text" name="empname" id="name" readonly="true" >

	  </td>
	</tr>
	
	
	<tr>
	 <td>
	  <font color="#000066" size="2">Employee Id</font>
	 </td>
	 <td>
	  <input type="text" name="employeecode" id="empid" readonly="true"  onBlur="showCustomer(this.value);">
	 </td>
	</tr>
	
	<tr>
	<td>
	 <font color="#000066" size="2">Designation</font>
	</td>
	<td>
	 <input type="text" name="designation" id="designation" readonly="true">
	</td>
	</tr>
	
	<tr>
	 <td>
	  <font color="#000066" size="2">Company Name</font>
	 </td>
	 <td>
   	   <input type="text" name="company" id="companyname" readonly="true">
	 </td>
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
		 
		<select name="leavetype" onMouseOver="this.className='highlight1'" onMouseOut="this.className='normal1'" class="select leavetypes" id="leavetype" onChange="swap1(),swap();" >
 <option value="#" >Select Leave Type</option>
  <!--<option value="OD">On Duty</option>
    <option value="PER">Permission </option>-->
	 
    
</select>

		
		</td>
		<td ><input type="text" name="odhours" id="odhours" onFocus="clear1();" size="6" style="display:none;" value="HH:MM:SS" > </td>
 <td align="center"><img src="images/date.png" align="absmiddle">
  <input type="text" name="date1" id="date1" size="12" onfocus="showCalendarControl(this);" readonly="true">
 </td>
 <td align="center"><img src="images/date.png" align="absmiddle">
  <input type="text" name="date2" id="date2" size="12" onfocus="showCalendarControl(this);" readonly="true">
 </td>
 <td align="center">
 <select name="sess" id="sess" style="display:none;" onMouseOver="this.className='highlight1'" onMouseOut="this.className='normal1'" class="select">
 <option value="#">Select Session</option>
 <option value="FH">First Half</option>
 <option value="SH">Second Half</option>
 </select>
 </td>
</tr></table><br>



	 </td>
	</tr>
	
   


  <tr>
	 <td align="center">
	  <input type="image" src="images/submit_btn.png" onClick="return datediff1();">
<br><br>
	 </td>
	 
	</tr>
	
	<tr><td><div id="txtHint1"></div></td></tr>    
	<tr align="center">
	<td>
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
	<tbody id="data2">
	</tbody>
	
	
<!--<td>
<form action="mail.jsp">
 
 <input type="hidden" name="username" value="<%//=user_name %>">
 <input type="hidden" name="password" value="<%//=pwd %>">
  <input type="image" src="images/mail.jpg">
 </form>
 </td>-->
</table>
</form>

<tr>
    <td align="center">
		<!--<table width="98%" class="tab10"><tr id="svstr"><td align="right"><br><br>&copy;Powered by <a href="http://www.svsinfomatics.com" target="_blank" id="svs"><font>SVSINFOMATICS</font></a></td></tr></table>-->
		<br>
		<jsp:include page="Footer.jsp" flush="true"></jsp:include>

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
