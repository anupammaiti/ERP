<!--
=================================================================
*eResourceDemo Application  Modify 2012/June/04		05:20PM			*				
*Copy Right By SVSINFOMATICS									*
*																*
=================================================================
-->

<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@page import="com.svs.erp.Hr.db.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.text.SimpleDateFormat"%>
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
<script src="School.js" language="javascript"></script>
<script src="agediff.js" language="javascript"></script>
<script src="vallidation.js" language="javascript"></script>
<!--------------------------------popup box code---------------------->
<style>
		@import "./Assets/LightFace.css";
	</style>
	<link rel="stylesheet" href="../Assets/lightface.css" />
	<script src="./Source/mootools.js"></script>
	<script src="./Source/LightFace.js"></script>
	<script src="./Source/LightFace.js"></script>
	<script src="./Source/LightFace.IFrame.js"></script>
	<script src="./Source/iframe.js"></script>
	<script src="./Source/LightFace.Image.js"></script>
	<script src="./Source/LightFace.Request.js"></script>
	
<!--------------------------------close here------------------------------->
<script type="text/javascript">
///////////////////////mail checking
function checkmail()
{
with(document.frm)
		{	
	var emailRegEx =/^([a-zA-Z0-9])(([a-zA-Z0-9])*([\._-])?([a-zA-Z0-9]))*@(([a-zA-Z0-9\-])+(\.))+([a-zA-Z]{2,4})+$/
 
if (emailid.value.search(emailRegEx )==-1) //if match failed
{
alert("Email Id is invalid !!!");
return false;
}
	}
	
	}
	function checkmail1()
{
with(document.frm)
		{	
	var emailRegEx =/^([a-zA-Z0-9])(([a-zA-Z0-9])*([\._-])?([a-zA-Z0-9]))*@(([a-zA-Z0-9\-])+(\.))+([a-zA-Z]{2,4})+$/
 
if (emailidd.value.search(emailRegEx )==-1) //if match failed
{
alert("Company mail id is invalid !!!");
return false;
}
	}
	
	}////////////////////////
	function checkname()
	{
	var a=document.frm.name.value;
	if(a.length<2)
	{
	alert("Name Should be minimum 2 characters");
	document.frm.name.focus();
	return false;
	}
	}
	/////////////fathername
	function checkname1()
	{
	var b=document.frm.fathername.value;
	if(b.length<2)
	{
	alert("Father Name Should be minimum 2 characters");
	document.frm.fathername.focus();
	document.frm.fathername.style.background = "pink";
	return false;
	}
	}
	///////////////////Nation
	function checknation1()
	{
	var f=document.frm.nomination.value;
	if(f.length<3)
	{
	alert("Nationality Should be minimum 3 characters");
	document.frm.nomination.focus();
	document.frm.nomination.style.background = "pink";
	return false;
	}
	}
	///////////////////Nation
	function checkaddress()
	{
	var i=document.frm.address.value;
	if(i.length<3)
	{
	alert("Address Should be minimum 3 characters");
	document.frm.address.focus();
	document.frm.address.style.background = "pink";
	return false;
	}
	}
	///////////////////Location
	function checklocation1()
	{
	var h=document.frm.location.value;
	if(h.length<3)
	{
	alert("Location Should be minimum 3 characters");
	document.frm.location.focus();
	document.frm.location.style.background = "pink";
	return false;
	}
	}
	///////////////////HOD
	function checkhod()
	{
	var j=document.frm.hod.value;
	if(j.length<2)
	{
	alert("HOD Name Should be minimum 2 characters");
	document.frm.hod.focus();
	document.frm.hod.style.background = "pink";
	return false;
	}
	}
		///////////////////RM
	function checkrm()
	{
	var k=document.frm.reportingto.value;
	if(k.length<2)
	{
	alert("Reporting Manager Name Should be minimum 2 characters");
	document.frm.reportingto.focus();
	document.frm.reportingto.style.background = "pink";
	return false;
	}
	}

	///////////////////birth
	function checkbirth()
	{
	var e=document.frm.birthplace.value;
	if(e.length<3)
	{
	alert("Birth Place Should be minimum 3 characters");
	document.frm.birthplace.focus();
	document.frm.birthplace.style.background = "pink";
	return false;
	}
	}
	///////////////////religion 
	function checkreligion()
	{
	var d=document.frm.religion.value;
	if(d.length<3)
	{
	alert("Religion Should be minimum 3 characters");
	document.frm.religion.focus();
	document.frm.religion.style.background = "pink";
	return false;
	}
	}/////////////////////////phone
	function checkphone()
	{
	var c=document.frm.phoneno.value;
	if(c.length<10)
	{
	alert("Phone Number Should be minimum 10 digits");
	document.frm.phoneno.focus();
	document.frm.phoneno.style.background = "pink";
	return false;
	}
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
</style></head>


<script language="javascript">
 function create()
{

	if(document.frm.empno.value=="")
	{
	alert("Please Enter Emp ID");
	document.frm.empno.focus();
	document.frm.empno.style.background = "pink";
	return false;
	}
	
	if(document.frm.companyname.value=="")
	{
	alert("Please Select Company Name");
	document.frm.companyname.focus();
	document.frm.companyname.style.background = "pink";
	return false;
	}
	if(document.frm.name.value=="")
	{
	alert("Please Enter Employee Name");
	document.frm.name.focus();
	document.frm.name.style.background = "pink";
	return false;
	}
	if(document.frm.dob.value==""||document.frm.dob.value=="yyyy-mm-dd")
	{
	alert("Please Enter Date Of Birth");
	document.frm.dob.focus();
	document.frm.dob.style.background = "pink";
	return false;
	}
	if(document.frm.sex.value=="")
	{
	alert("Please Select Gender");
	document.frm.sex.focus();
	document.frm.sex.style.background = "pink";
	return false;
	}
	
	
	if(document.frm.joiningdate.value==""||document.frm.joiningdate.value=="yyyy-mm-dd")
	{
	alert("Please Enter Joining Date");
	document.frm.joiningdate.focus();
	document.frm.joiningdate.style.background = "pink";
	return false;
	}
	
	if(document.frm.reportingto.value=="")
	{
	alert("Please Enter Reporting Manager");
	document.frm.reportingto.focus();
	document.frm.reportingto.style.background = "pink";
	return false;

	}
	if(	document.frm.hod.value=="")
	{
	alert("Please Enter Head Of The Department");
	document.frm.hod.focus();
	document.frm.hod.style.background = "pink";
	return false;

	}
	if(document.frm.department.value==""||document.frm.department.value=="-Select-")
	{
	alert("Please Select Department");
	document.frm.department.focus();
	document.frm.department.style.background = "pink";
	return false;

	}
	if(document.frm.designation.value==""||document.frm.designation.value=="-Select-")
	{
	alert("Please Select Designation");
	document.frm.designation.focus();
	document.frm.designation.style.background = "pink";
	return false;
	}
	
	
	if(document.frm.presentsalary.value=="")
	{
	alert("Please Enter Present Salary");
	document.frm.presentsalary.focus();
	document.frm.presentsalary.style.background = "pink";
return false;
	}
	

	
	}//function	

/*function disab(s)
{
var c=document.frm.res.value.trim();
//alert("c"+c);
	if(c=="EmployeeIDexist")
	{
	//alert("1.."+c);
	alert("Employee ID Exist, Enter Another Emp ID");
	document.frm.empno.focus();
	document.frm.empno.style.background = "pink";
return false;
	}
	else
	{
	return true;
	}
}*/
//////////////////////////
function check(str)
{ 
xmlHttp1=GetXmlHttpObject();
if (xmlHttp1==null)
  {
  alert ("Your browser does not support AJAX!");
  return;
  } 
var h1=document.getElementById('empno').value;
	//alert("12121"+h1);
		str=h1;
		
var url="check.jsp";
url=url+"?q="+str;
//alert(str);
url=url+"&empno="+Math.random();
xmlHttp1.onreadystatechange=stateChanged1;
xmlHttp1.open("GET",url,true);
xmlHttp1.send(null);
}


function stateChanged1() 
{ 
if (xmlHttp1.readyState==4)
{ 
document.getElementById("empno2").innerHTML=xmlHttp1.responseText;
var a=document.getElementById("empno2").innerHTML;
//document.getElementById("res").value="";
document.getElementById("res").value=a;
//alert(a);
//alert(a);
a=a.trim();
if(a=="EmployeeIDexist")
{
alert("Employee number is exist, choose another");

		if (document.all || document.getElementById) {
			for (i = 0; i < document.frm.length; i++) {
			var formElement = document.frm.elements[i];
				if (true) {
					formElement.disabled = true;
				}
			}
		}
	}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`
}


}

/////////////////////////////

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

function disab(theform)
{

var a =document.frm.res.value;

//if(a=="Employee ID exist")
//{
//alert(a);
/*a=a.trim();
if(a=="EmployeeIDexist")
{
alert("Employee number is exist, choose another");
//return false;
//document.frm.empno.focus();
	//document.frm.empno.style.background = "pink";
	




		if (document.all || document.getElementById) {
			for (i = 0; i < theform.length; i++) {
			var formElement = theform.elements[i];
				if (true) {
					formElement.disabled = false;
				}
			}
		}
	}*/
	}
	



function showMe (it, box) {
  var vis = (box.checked) ? "block" : "none";
  document.getElementById(it).style.display = vis;
  }
</script>
<script type="text/javascript" src="js/checkfieldsemp.js">
	</script>
	
	<script type="text/javascript">
   		$(document).ready(function(){
		$("body div:last").remove();
		});
</script>

<%
try
{
 String user_name=(String)session.getAttribute("userlog");
String pwd=(String)session.getAttribute("passlog");
String comp=(String)session.getAttribute("comp");
 String ename=(String)session.getAttribute("ename");
 if((user_name!=null)&&(pwd!=null))
 {%>
<input type="hidden" value="<%=user_name%>" id="empno"/> 
 <script type="text/javascript">
 	$(document).ready(function(){
// 		alert('Hai');
 	var empno=$('#empno').val();
 	$.getJSON('UpdatingEmployee',{'empno':empno},function(json){
 //		alert(json.empid);
		$('.empid').val(json.empid); 		
		$('#fname').val(json.fname);
		$('#lname').val(json.lname);
		$('#father').val(json.father);
		$('#dob').val(json.dob);
		$('#sex').val(json.sex);
		$('#joindate').val(json.joindate);
		$('#designation').val(json.designation);
		$('#department').val(json.department);
		$('#rm').val(json.rm);
		$('#location').val(json.location);
		$('#em').val(json.em);
		$('#nation').val(json.nation);
		$('#birthplace').val(json.birhtplace);
		$('#phone').val(json.phone);
		$('#address').val(json.address);
		$('#religion').val(json.religion);
		$('#pan').val(json.pan);
		$('#passport').val(json.passport);
		$('#comp').val(json.company);
		$('#qualif').val(json.qualif);
		$('#presentsal').val(json.presentsal);
		$('#bacc').val(json.bacc);
		$('#email').val(json.email);
		$('#companymail').val(json.email1);
		$('#hod').val(json.hod);
		$('#moe').val(json.moe);
 	});	});
 </script>
 

 
<body onLoad="checkfields();"><!--background="background images for website/master70_background.jpg"-->

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
			 	<!--<table width="721" border="0" cellspacing="0" cellpadding="0">
                <td id="session" align="right"><b>Welcome</b>&nbsp; <font color="#000000"><%=ename%></font></td>
				</table>-->
			</td>
            </tr>
			<!--<tr>
            <td height="50" align="right" valign="middle">
				<!--<table width="570" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="10"></td>
                    <td width="701" align="left" valign="middle">
					
					
					</td>
                    <td width="10" align="right"></td>
                  </tr>
                </table>
			</td>
			</tr>-->
			
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
				<jsp:include flush="true" page="eresourcemenu.jsp"></jsp:include>
				</td></tr></table>
				
				


<% session.setAttribute("username",user_name);
							session.setAttribute("password",pwd);
							%>
					
<table class="tab10" width="98%"> <tr align="center">
   <td align="center" class="head"><h3>Employee Information Update<br></td>
	</tr><tr><td><font color="#FF0000" face="Verdana, Arial, Helvetica, sans-serif">${empno1}</font></td></tr></table>
	<% session.removeAttribute("empno1");%>
		<table class="tab10" width="98%">
<form action="EmployeeInformationupdateBOforemp" method="post" name="frm" onsubmit="return create(this)">

 
 
 <tr>
<td width="226"><br><br>
<table  align="center"  border="0" class="tab2" bordercolor="#999999" >
     <tr>
	  <td><font color="#000066" face="Verdana" size="2" >Emp ID.</font><font color="#FF0000">*</font></td>

	 
	
	 <td><input type="text" name="empno" id="empno"  onkeypress="return alphanumeric(event)"  readonly="true" class="empidtext1 empid" id="empid"><div id="empno2"></div></td>
	  <td width="110">
<font color="#000066" size="2" face="verdana">Company name</font><font color="#FF0000">*</font>
    
  </td>
    <td width="144">
	
				<input type="text" name="companyname" readonly="true" class="empidtext2"  size="40" id="comp">
				
				   
	
	 </td>
	 
  </tr>
 <tr>
  <!--<td><font color="#000066"face="Verdana" size="2" >Emp No.</font>
    </td>
  <td>
   <input type="text" name="empno">
  </td>
 </tr>-->
 <tr>
  <td><font color="#000066" face="Verdana" size="2" >First Name</font><font color="#FF0000">*</font>
   
  </td>
  <td>
   <input type="text" name="name" size="30" onkeypress="return alpha(event)" onBlur="return checkname();"  class="empidtext2" id="fname">

  </td>
  <td>
   <font color="#000066" face="Verdana" size="2" >Last Name</font>
  </td>
  <td>
      <input type="text" name="lname" onkeypress="return alpha(event)"  class="empidtext2" id="lname">

  </td>
 </tr>
  <tr>
  <td><font color="#000066"face="Verdana" size="2" >Father Name</font>
   
  </td>
  <td>
   <input type="text" name="fathername" size="30" onkeypress="return alpha(event)" onBlur="return checkname1();"  class="empidtext2" id="father">
  </td>
  <td><font color="#000066"face="Verdana" size="2" >Date of Birth</font><font color="#FF0000">*</font>
   
  </td>
  <td>
   <input type="text" name="dob"  onfocus="showCalendarControl(this);" readonly="true"  class="empidtext2" id="dob">
  </td>
 </tr>
  
 <tr>
  <td><font color="#000066"face="Verdana" size="2" >Gender</font>
   
  </td>
  <td>
   <select name="sex" class="empidtext2">
   <option id="sex"></option>
    <option>  <font color="#000066"face="Verdana" size="2">Male</font>    </option>
	<option>  <font color="#000066"face="Verdana" size="2" >Female</font>    </option>
   </select>
  </td>
  <td><font color="#000066"face="Verdana" size="2" >Email Id</font>
   
  </td>
  <td>
   <input type="text" name="emailid" onblur=" return checkmail(this);" class="empidtext2" id="email1">
  </td>
 </tr>
 
  <tr>
  <td><font color="#000066"face="Verdana" size="2" >Company Mail Id</font>
   
  </td>
  <td>
   <input type="text" name="emailidd" onblur=" return checkmail1(this);"  class="empidtext2" id="companymail">
  </td>
   <td>
    <font color="#000066"face="Verdana" size="2" >Qualification</font>
   </td>
   <td>
    <input type="text" name="qualification" class="empidtext2" readonly="true"  id="qualif">
	   </td>
  </tr>
 
 <tr>
  <td><font color="#000066"face="Verdana" size="2" >Address</font>
   
  </td>
  <td>
   <input type="text" name="address" onBlur="return checkaddress();"  class="empidtext2" id="address">
  </td>
  <td><font color="#000066"face="Verdana" size="2" >Date Of Joining</font><font color="#FF0000">*</font>
   
  </td>
  <td>
   <input type="text" name="joiningdate"  readonly="true"  class="empidtext2" id="joindate">
  </td>
 </tr>
 
 <tr>
  <td><font color="#000066"face="Verdana" size="2" >Department</font><font color="#FF0000">*</font>
  </td>

  <td>
   <input type="text" name="department" readonly="true" class="empidtext2"  id="department">

</td> 


  <td><font color="#000066"face="Verdana" size="2" >Designation</font><font color="#FF0000">*</font>
 </td>

  <td>
   <input  type="text" name="designation" readonly="true" class="empidtext2"  id="designation">
</td></tr> 


 
 <tr>
  <td><font color="#000066"face="Verdana" size="2" >Head Of The Department</font><font color="#FF0000">*</font>
   
  </td>
  <td>
  	<input type="text" name="hod" onkeypress="return alpha(event)" onBlur="return checkhod();"  readonly="true" class="empidtext2" id="hod"/>
  </td>
  <td><font color="#000066"face="Verdana" size="2" >Reporting to</font><font color="#FF0000">*</font>
    
   </td>
   <td>
    <input type="text" name="reportingto" onkeypress="return alpha(event)" onBlur="return checkrm();"  readonly="true" class="empidtext2" id="rm">
    <input type="hidden" name="joblevel" value="-">

   </td>
 </tr>
  
 <!-- <tr>
   <td><font color="#000066"face="Verdana" size="2" >Job Level</font>
    
   </td>
   <td>
   </td>
  </tr>-->
  <tr>
   <td><font color="#000066"face="Verdana" size="2" >Location</font><font color="#FF0000">*</font>
    
   </td>
   <td>
    <input type="text" name="location" onkeypress="return alpha(event)" onBlur="return checklocation1();"  class="empidtext2" id="location"> 
    </td>
  
   <td><font color="#000066"face="Verdana" size="2" >Manner of Entry</font>
    
   </td>
   <td>
    <input type="text" name="entrymanner" readonly="true" class="empidtext2" id="em">
	   </td>
  </tr>
  <tr>
  <td><font color="#000066"face="Verdana" size="2" >Mode Of Employment</font>
  </td>

  <td>
   <input type="text" name="moe" readonly="true" class="empidtext2"  id="moe"> 
   				</td> 


   <td><font color="#000066"face="Verdana" size="2" >Nationality</font>
    
   </td>
   <td>
    <input type="text" name="nomination" onkeypress="return alpha(event)" onBlur="return checknation1();" class="empidtext2" id="nation">
   </td>
  </tr>
  <tr>
   <td><font color="#000066"face="Verdana" size="2" >Place Of Birth</font>
    
   </td>
   <td>
    <input type="text" name="birthplace" onkeypress="return alpha(event)" onBlur="return checkbirth();"  class="empidtext2" id="birthplace">
   </td>
 
   


   <td><font color="#000066"face="Verdana" size="2" >Religion</font>
    
   </td>
   <td>
    <input type="text" name="religion" onkeypress="return alpha(event)" onBlur="return checkreligion();" class="empidtext2" id="religion">
   </td>
  </tr>
  <tr>
   <td><font color="#000066"face="Verdana" size="2" >PAN Number</font>
    
   </td>
   <td>
    <input type="text" name="pannumber" onkeypress="return alphanumeric(event)"  class="empidtext2" id="pan">
   </td>
  
   <td><font color="#000066"face="Verdana" size="2" >Passport Number</font>
    
   </td>
   <td>
    <input type="text" name="passportnumber" onkeypress="return alphanumeric(event)"  class="empidtext2" id="passport">
   </td>
   
  </tr>

  <tr>
  
  <td><font color="#000066"face="Verdana" size="2" >Phone No</font>
   
  </td>
  <td>
   <input type="text" name="phoneno" onkeypress="return number1(event)" onBlur="return checkphone();"  class="empidtext2" id="phone">
  </td>
  <td>
    <font color="#000066"face="Verdana" size="2" >Bank A/c No</font>
   </td>
   <td>
    <input type="text" name="BankAcno" onkeypress="return number1(event)"  class="empidtext2" id="bacc">
   </td>
  
  </tr>
  
  <tr>
   
   <td>
    <font color="#000066"face="Verdana" size="2" >Current Salary</font><font color="#FF0000">*</font>
   </td>
   <td>
    <input type="text" name="presentsalary" onkeypress="return number1(event)"  readonly="true" class="empidtext2" id="presentsal"><font color="#FF0000" size="1" id="presentsal">(eg. 50000)</font>
   </td>
   
  </tr>
 
  <tr>
   <td>
   </td>
   <td>
   </td>
    <td align="center">
 <input type="image" src="images/submit_btn.png" class=" payroll_button"/>	 </td>
  </tr>
 </form>
</td></tr></table>
 
 </table>
 <tr>
    <td align="center">
			<!--<table width="98%" class="tab10"><tr id="svstr"><td align="right">&copy;Powered by <a href="http://www.svsinfomatics.com" target="_blank" id="svs"><font>SVSINFOMATICS</font></a></td></tr></table>-->
					<table width="98%" class="tab10"><tr id="svstr"><td align="right"><br><br>&copy;Powered by <a href="http://www.svsinfomatics.com" target="_blank" id="svs"><font>SVSINFOMATICS</font></a></td></tr></table>

	<table width="1012" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/page_rounded_bottom.jpg" width="1012" height="16" /></td>
      </tr>
    </table>
</td>
  </tr>
  </table>
<br>

</body>
<%
 }
 
 else
 {
	 response.sendRedirect("index");
 }
 }catch(Exception e)
{
e.printStackTrace();
}finally {
			try
			{	ConnectionUtils connectionUtils=new ConnectionUtils();
				Connection con=connectionUtils.getDBConnection();
				//////System.out.println("employeedetailsupdateform.jsp::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("employeedetailsupdateform.jsp::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}
 %>
</html>
