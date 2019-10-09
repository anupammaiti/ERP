<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.svs.erp.Hr.db.* "%>

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
<link rel="shortcut icon" href="./images/11.gif" /> <link rel="icon" href="./images/11.gif" type="image/gif" />
    <script type="text/javascript" src="totaltime.js"/></script>
<meta content="text/html;charset=utf-8" http-equiv="Content-Type">
<title>SVS Infomatics</title>
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
function clear1()
{
document.frminout.first.value="";
document.frminout.last.value="";
}
function clear()
{
document.frminout.last.value="";
}
function total1()
	{

		//var h1=document.getElementById('tothrs1').value;
		//alert("ttttttttttt"+h1);
		//document.getElementById('tothrs').value=h1;
	}

///////////////////////////////////// code to get total time
</script>
<script type="text/javascript" >//script to get last load details
var xmlHttp
var xmlHttp1
var xmlHttp2

function showdoj(str)
{ 
xmlHttp=GetXmlHttpObject();
if (xmlHttp==null)
  {
  alert ("Your browser does not support AJAX!");
  return;
  } 
var url="doj.jsp";
url=url+"?q="+str;
//url=url+"&sid="+Math.random();
xmlHttp.onreadystatechange=stateChanged;
xmlHttp.open("GET",url,true);
xmlHttp.send(null);

}


function stateChanged() 
{ 
if (xmlHttp.readyState==4)
{ 
document.getElementById("txtHint").innerHTML=xmlHttp.responseText;
var res=document.getElementById("txtHint").innerHTML;

//alert(" alert1.........."+res);
 //Confirm: ("Last Updated on "+res)
document.getElementById("doj").value=res;

}
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~get CL
function showcl(str)
{ 
xmlHttp=GetXmlHttpObject();
if (xmlHttp==null)
  {
  alert ("Your browser does not support AJAX!");
  return;
  } 
var url="cl.jsp";
url=url+"?q="+str;
//url=url+"&sid="+Math.random();
xmlHttp.onreadystatechange=stateChanged1;
xmlHttp.open("GET",url,true);
xmlHttp.send(null);

}


function stateChanged1() 
{ 
if (xmlHttp.readyState==4)
{ 

document.getElementById("txtHint1").innerHTML=xmlHttp.responseText;
var res1=document.getElementById("txtHint1").innerHTML;

//alert("alert2............ "+res1);
 //Confirm: ("Last Updated on "+res)
document.getElementById("cl").value=res1;
}
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~get SL
function showsl(str)
{ 
xmlHttp=GetXmlHttpObject();
if (xmlHttp==null)
  {
  alert ("Your browser does not support AJAX!");
  return;
  } 
var url="sl.jsp";
url=url+"?q="+str;
//url=url+"&sid="+Math.random();
xmlHttp.onreadystatechange=stateChanged2;
xmlHttp.open("GET",url,true);
xmlHttp.send(null);

}


function stateChanged2() 
{ 
if (xmlHttp.readyState==4)
{ 

document.getElementById("txtHint2").innerHTML=xmlHttp.responseText;
var res2=document.getElementById("txtHint2").innerHTML;

//alert("alert2............ "+res1);
 //Confirm: ("Last Updated on "+res)
document.getElementById("sl").value=res2;
}
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~get PL
function showpl(str)
{ 
xmlHttp=GetXmlHttpObject();
if (xmlHttp==null)
  {
  alert ("Your browser does not support AJAX!");
  return;
  } 
var url="pl.jsp";
url=url+"?q="+str;
//url=url+"&sid="+Math.random();
xmlHttp.onreadystatechange=stateChanged3;
xmlHttp.open("GET",url,true);
xmlHttp.send(null);

}


function stateChanged3() 
{ 
if (xmlHttp.readyState==4)
{ 

document.getElementById("txtHint3").innerHTML=xmlHttp.responseText;
var res3=document.getElementById("txtHint3").innerHTML;

//alert("alert2............ "+res1);
 //Confirm: ("Last Updated on "+res)
document.getElementById("pl").value=res3;
}
}


///////////////////////////////////////////
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
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~VALIDATION
function valid()
{
if(document.frmopen.empno.value=="")
{
alert("Please Enter Emp No.");
document.frmopen.empno.focus();
document.frmopen.empno.style.background = "pink";
return false;
}
if(document.frmopen.doj.value==""||document.frmopen.doj.value=="No Employee")
{
alert("Please Enter Date");
//document.frmopen.doj.disabled=true;
document.frmopen.doj.focus();
document.frmopen.doj.style.background = "pink";
return false;
}

if(document.frmopen.cl.value==""||document.frmopen.cl.value=="No Employee")
{
alert("Please Enter CL");
document.frmopen.cl.focus();
document.frmopen.cl.style.background = "pink";
return false;
}

if(document.frmopen.sl.value==""||document.frmopen.sl.value=="No Employee")
{
//alert("Please Enter SL");
document.frmopen.sl.focus();
document.frmopen.sl.style.background = "pink";
return false;
}
if(document.frmopen.pl.value==""||document.frmopen.pl.value=="New Employee")
{
//alert("Please Enter PL");
document.frmopen.pl.focus();
document.frmopen.pl.style.background = "pink";
return false;
}
}

function clearsess()
{

session.removeAttribute("msg");
}
</script>
<script type="text/javascript">
   		$(document).ready(function(){
		$("body div:last").remove();
		});
</script>

</head>

<body onUnload="clearsess();">
<%String user_name=(String)session.getAttribute("userlog");
String pwd=(String)session.getAttribute("passlog");
String comp=(String)session.getAttribute("comp");
 if((user_name!=null)&&(pwd!=null)){
 %>
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

<table border="0" bordercolor="#D468F7"   align="center" class="tab10" width="98%" >
<form action="leaveopeningforemp" name="frmopen" method="post" onSubmit="return valid();">
<tr><td>
<table class="tab10" border="0" align="center"> <tr align="center"><td width="500"><font color="#FF0000" size="2" face="Verdana, Arial, Helvetica, sans-serif">${msg}</font></td></tr></table>
<table bgcolor="#A4C6C5"  align="center" border="0" width="98%">
   <tr align="center">
   <td width="250"></td>
   <td  align="right" width="60"> 
	<strong><font color="#000066" size="2" face="Verdana">Emp No</font></strong>
	</td>
	
	<td align="left" width="100">
	  <input type="text" name="empno" id="empno" onBlur="showdoj(this.value);" >

	
		 </select>
		 </td>
  <td width="10"></td>
	<td width="95" align="left">
	  <strong><font color="#000066" size="2" face="Verdana">Joining Date</font>
	  </strong><font color="#006600" size="4">
	  </td>
	  <td width="10"></td>
	  <td align="left">
	  <input type="text" name="doj" id='doj'  size="11" onFocus="showdoj(empno.value);" readonly="true"></font>
	</td>
	
	 </tr>
	 
	 <tr>
	 <td ></td>
	 <td align="left">
	 <font color="#006600" size="4"><strong><font color="#000066" size="2" face="Verdana">CL</font></strong>
	 </td>
	 <td>
	  <input type="text" name="cl"  id="cl"    onFocus="showcl(empno.value)"></font>
	 </td>
	 <td align="right">
	 <font color="#006600" size="4"><strong><font color="#000066" size="2" face="Verdana">SL</font></strong>
	 </td>
	 <td>
	  <input type="text" name="sl"  id="sl" size="11" onFocus="showsl(empno.value)" ></font>
	 </td>
	 
	  <td align="right">
	 <font color="#006600" size="4"><strong><font color="#000066" size="2" face="Verdana">PL</font></strong>
	 </td>
	 <td>
	  <input type="text" name="pl"  id="pl" size="11" onFocus="showpl(empno.value)"></font>
	 </td>
	 </td>
	 </tr>
	</table>
	</td></tr>
	 <tr >
	 
<td class="t1" align="center"> <div id="txtHint" style="display:none "></div>
<div id="txtHint1" style="display:none "></div>
<div id="txtHint2" style="display:none "></div>
<div id="txtHint3" style="display:none "></div>
<input type="image" src="images/submit_btn.png" onMouseOver="total1();"></td>
    </tr>

  </form>
</table>

<tr>
<% session.removeAttribute("msg");%>
    <td align="center">
		<!--<table width="98%" class="tab10"><tr id="svstr"><td align="right"><br><br><br><br><br><br>&copy;Powered by <a href="http://www.svsinfomatics.com" target="_blank" id="svs"><font>SVSINFOMATICS</font></a></td></tr></table>-->
		<br>
		<jsp:include page="Footer.jsp" flush="true"></jsp:include>

	<table width="1012" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/page_rounded_bottom.jpg" width="1012" height="16" /></td>
      </tr>
    </table></td>
  </tr>
  </table>
<% }
 else
 {
	 response.sendRedirect("index");
 }
 %>
</body>

</html>
