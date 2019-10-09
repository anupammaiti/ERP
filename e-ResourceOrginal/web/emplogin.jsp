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
	<script type="text/javascript">
	////////////////////////////
	// JavaScript Document
var xmlHttp
var xmlHttp1
var xmlHttp2
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function Showname(str)
{ 
xmlHttp=GetXmlHttpObject();
if (xmlHttp==null)
  {
  alert ("Your browser does not support AJAX!");
  return;
  } 
//  alert("123..........hi");
var url="empname.jsp";
url=url+"?q1="+str;
//alert(url);
url=url+"&sid="+Math.random();
xmlHttp.onreadystatechange=stateChanged;
xmlHttp.open("GET",url,true);
xmlHttp.send(null);
}


function stateChanged() 
{ 
if (xmlHttp.readyState==4)
{ 
document.getElementById("empname").innerHTML=xmlHttp.responseText;

}
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
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
<link href="styles.css" rel="stylesheet" type="text/css" />



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


</style>
<script language="javascript">
function check()
{
var uname=document.frm11.Uname.value;

if(uname=="")
{
document.frm11.Uname.focus();
document.getElementById('user1').innerHTML="Please Enter User ID" ;
return false;
}


var pass=document.frm11.password.value;

if(pass=="")
{
document.frm11.password.focus();
document.getElementById('length1').innerHTML="Please Enter Password " ;
return false;
}
var pass1=document.frm11.confirmpassword.value;
if(pass1=="")
{
document.frm11.confirmpassword.focus();
document.getElementById('confirmation1').innerHTML="Please ConfirmPassword " ;
return false;
}
//``````````````````````````````````````
var a=document.frm11.confirmpassword.value
var b=document.frm11.password.value
document.getElementById('confirmation1').style.visibility = 'hidden'; 
if(a!=b)
{
document.frm11.confirmpassword.focus();
document.getElementById('confirmation').style.visibility = 'visible'; 
var d="Please Confirm Password";
document.getElementById('confirmation').innerHTML=d;

	document.frm11.confirmpassword.style.background = "pink";
	return false;
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
var len=document.frm11.password.value
var l1=len.length;
if(l1>=1&&l1<6)
{
document.frm11.password.focus();
document.getElementById('length').innerHTML="Password Should be Minimum 6 " ;
return false;
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//document.frm11.confirmpassword.style.background = "#FFFFFF";
//return false;
}
function cc()
{
document.frm11.password.style.background = "pink";

}
function cc2()
{
document.getElementById('length1').style.visibility = 'hidden'; 
document.frm11.password.style.background = "#FFFFFF";
var len=document.frm11.password.value
var l1=len.length;
if(l1==0)
{
document.frm11.password.focus();
document.getElementById('length').innerHTML="Please Enter Password" ;
}

if(l1>=1&&l1<6)
{
document.frm11.password.focus();
document.getElementById('length').innerHTML="Password Should be Minimum 6 " ;
return false;
}
if(l1>=6)
{
document.getElementById('length').innerHTML="" ;
}
}
function cc1()
{
document.frm11.confirmpassword.style.background = "pink";
document.getElementById('confirmation').style.visibility = 'hidden'; 
}
function checkpassword()
{
var a=document.frm11.confirmpassword.value
var b=document.frm11.password.value
document.getElementById('confirmation1').style.visibility = 'hidden'; 
if(a!=b)
{
document.frm11.confirmpassword.value="";
document.frm11.password.value="";
document.frm11.password.focus();
document.getElementById('confirmation').style.visibility = 'visible'; 
var d="Please Confirm Password";
document.getElementById('confirmation').innerHTML=d;

	document.frm11.password.style.background = "pink";
	return false;
}
document.frm11.confirmpassword.style.background = "#FFFFFF";
}
</script>
</head>

<body >
<%
String user_name=(String)session.getAttribute("userlog");
String pwd=(String)session.getAttribute("passlog");
String comp=(String)session.getAttribute("comp");
  String ename=(String)session.getAttribute("ename");
if((user_name!=null) &&(pwd!=null)){
 //~~~~~~~~~~~~~~~~`code to find user is RM or NOT
	int chekrm=0;
	
/*PreparedStatement prchekrm=con.prepareStatement("select * from employee where reportingto=?");
prchekrm.setString(1,ename);
ResultSet rschekrm=prchekrm.executeQuery();
while(rschekrm.next())
{
chekrm++;
}*/
 %>


<table class="tab10" width="98%"> <tr align="center">
   <td align="center" class="head"><h3>Login Details Update<br><br><br></td>
	</tr>
	<tr><td>


<table border="0" bordercolor="#D468F7"   align="center" >
<form  name="frm11" method="post" action="logindetailsupdate1BO" onSubmit="return check();">
 <tr align="center">
    </tr>
</table>
<table border="0" bordercolor="#D468F7"   align="center"  width="98%" bgcolor="#A4C6C5">
<tr >
<td colspan="4" align="center"><font color="#FF0000" face="Verdana, Arial, Helvetica, sans-serif">${respmsg}</font></td></tr>
<tr >
<td colspan="4" align="center"><font color="#FF0000" face="Verdana, Arial, Helvetica, sans-serif"><div id="user1"></div></font></td></tr>
<tr ><% session.removeAttribute("respmsg");%>
<td width="250"></td>
   <td width="150" align="left"> 
	  <strong><font color="#000066" size="2" face="Verdana">User Name</font>
	  </strong>
	</td>
	<td align="left">
	  <input type="text"  name="Uname"   class="empidtext" size="20" onBlur="Showname(this.value);">
	  </td>
	  	  <td width="290" align="left"><div id="empname"></div></td>
	</tr>
	<tr>
	<td width="350"></td>
   <td width="150" align="left"> 
	  <strong><font color="#000066" size="2" face="Verdana">New Password</font>
	  </strong>
	  </td>
	  <td align="left">
	   <input type="password" name="password"  size="20"  onFocus="cc();" onBlur="return cc2();">
	 </td>
	  <td width="290" align="left"><font color="#FF0000" face="Verdana, Arial, Helvetica, sans-serif"><div id="length"></div><div id="length1"></div></font></td>
	 </tr>
	 <tr>
	<td width="350"></td>
   <td width="150" align="left"> 
	  <strong><font color="#000066" size="2" face="Verdana">Confirm Password</font>
	  </strong>
	  </td>
	  <td align="left">
	  <input type="password" name="confirmpassword"  size="20" onFocus="cc1();" onBlur="return checkpassword();">
	 </td>
	 <td width="290" align="left"><font color="#FF0000" face="Verdana, Arial, Helvetica, sans-serif"><div id="confirmation"></div><div id="confirmation1"></div></font></td>
	 </tr>
	 </table>
	 <table border="0" bordercolor="#D468F7"   align="center" class="tab10" width="98%">
	 <tr align="center">
<td class="t1"></td><td class="t1" ><br>
       <input type="image" src="images/submit_btn.png" onFocus="return check()" >
	  </td>
    </tr>
  </form>
</table>
</td></tr></table>
<tr>
    <td align="center">
    </td>
    </tr>
    </table>
    <%}{response.sendRedirect("index"); }%>
    </body>
    
		</html>
