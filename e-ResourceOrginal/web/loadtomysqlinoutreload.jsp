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
<link rel="shortcut icon" href="./images/svsicon.ico" /> 
<script src="CalendarControl.js" language="javascript"></script>
<script src="pathconvert.js" language="javascript"></script>
<script src="datediff.js" language="javascript"></script>
<link rel="shortcut icon" href="./images/11.gif" /> <link rel="icon" href="./images/11.gif" type="image/gif" />
<script type="text/javascript" >//script to get last load details
var xmlHttp
var xmlHttp1
var xmlHttp2

function lastdetails()
{ 
xmlHttp=GetXmlHttpObject();
if (xmlHttp==null)
  {
  alert ("Your browser does not support AJAX!");
  return;
  } 
var url="lastupdatedetails.jsp";
//url=url+"?q="+str;
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
//alert("last updated on "+res);
 //Confirm: ("Last Updated on "+res)

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

function path1()
{
var a=document.frm.estring.value;
if(a=="")
{
alert("Please enter excel(csv) file path");
document.frm.estring.focus();
document.frm.estring.style.background = "pink";
return false;
}
//c=document.frm.fromdate.value;
b=document.frm.fromdate.value;
if(b==""||b=="YYYY-MM-DD")
{
alert("Please Enter Date");
document.frm.fromdate.focus();
document.frm.fromdate.style.background = "pink";
return false;
}
}

function check()
{

}
function clear()
{
document.frm.fromdate.value="";
}
</script>
<script language="javascript">
function Checkfiles1()
{
var fup = document.getElementById('estring');
var fileName = fup.value;
var ext = fileName.substring(fileName.lastIndexOf('.') + 1);
if(ext == "csv")
{
return true;
} 
else
{
alert("Upload csv file only");
document.frm.estring.focus();
document.frm.estring.style.background = "pink";
return false;
}
}
</script>
<script type="text/javascript">
function values()
{
		//alert("hiiiiiiiiiiiiiii");
         var a=document.getElementById('start').value
       //alert(a);
	   var b="load to mysql from excel sheet if data wrong";
	  //alert(b);

		document.frm.action="AttendencePageReload?values="+b+"&fromdate="+a+"";

 <%
/* //////System.out.println("111........."+a);
 session.setAttribute("albumname",a);
	  	  session.setAttribute("information",b);
	*/	  %>
}

</script>
<script type="text/javascript">
function init()
{
 if(document.frm.ackmsg.value!=""&&document.frm.ackmsg.value!="null"&&document.frm.ackmsg.value!="load")
 {
 alert("Data has been loaded");
 }
}
function showImage(){
if(document.frm.ackmsg.value=="load")
{
//alert("ok");
document.getElementById('maintable').style.display="none";
document.getElementById('loadingImage').style.display="block";
		}
		else
		{
		//alert("else");
		document.getElementById('loading').style.visibility="visible";
		}
    }
 </script>

<!----------------------------ends here----------------->



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
<script type="text/javascript">
   		$(document).ready(function(){
		$("body div:last").remove();
		});
</script>

</head>

<body onLoad="init();">
<!--~~~~~~~~~~~~~~~~~~~-->
<table align="center">
<tr>
<td><img id="loadingImage" src="images/loading.gif" style=" display:none" width="400" height="400" align="absmiddle"/>
</td></tr></table>
<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
<%
String user_name=(String)session.getAttribute("userlog");
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
					

<table border="0" bordercolor="#D468F7"   align="center" class="tab10" width="98%">
<form   method="post" name="frm" id="frm" onSubmit="return Checkfiles1(),values();" enctype="multipart/form-data">
   <tr align="center">
  	<td align="center" class="head"><h3> Attendance Data Reload Form</h3></td>
	</tr>
	<tr>
	<td align="left"><strong><font color="#000066"><img src="images/Hand.gif" align="absmiddle"><u>Please Follow These Steps Before Reload:</u></font></strong></td>
	</tr>
	<td><strong><font color="#000066" size="1" face="Verdana">
	<ul>
	<li>Open the Excel format file</li>
	<li>To change the 'date' format : >> Select Date column >> right click on the column >> Select Format Cells >> Click on custom and type <font color="#FF0000">YYYY-MM-DD </font> in Type field.</li>
	<li>Date format should be <font color="#FF0000">YYYY-MM-DD </font></li>
	<li>To convert .xls file into .csv go to File menu>> SaveAs>><font color="#FF0000">File name:</font>give file name >> <font color="#FF0000">FileType:</font>CSV(comma delimited)</li>
	<li>Select save.</li>
	</ul>
	<ul>
		<li><font color="#FF0000">Browse the file</font> and click on submit button to upload</li>
	</ul>
	</font>
	  </strong>
	</td></tr>
	<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<font color="#FF0000">*&nbsp;</font><font color="#000066" size="1"><strong>The file should be in .csv format only.</strong></font> <font color="#FF0000" size="1"><strong>(C:\Myfolder\SVS INFOMATICS\myfile.csv)</strong></font>
	</td>
	</tr>
	<tr>
	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
	
	<br><br></td></tr>
	  </table>
	  <table bgcolor="#A4C6C5" width="98%">
	<tr align="center" >
<td>
<table border="0" width="98%"><tr><td align="right" width="600"><strong><font color="#000066" size="2" face="Verdana">Enter File Path</font><img src="images/excel.png" align="absmiddle">
	  </strong><font color="#000066" size="4"><input type="file" name="estring"  id="estring" onFocus="lastdetails()"></td>
	   <td align="left"><font color="red" size="2" face="Verdana, Arial, Helvetica, sans-serif">${msg1}</font></td></tr></table></td>
<input type="hidden" id="sheetname"  width="500" size="100"	name="sheetname"  />
	 </tr>
	  <%
	 String ackmsg=(String)session.getAttribute("msg1");
	 %>
	<input type="hidden" name="ackmsg" value="<%=ackmsg%>">
	 <tr align="center" >
 <td width="500">
	  <strong><font color="#000066" size="2" face="Verdana">On Date</font>
	  </strong><font color="#006600" size="4"><img src="images/date.png" align="absmiddle">
	  <input type="text" name="fromdate" id="start" size="16" onfocus="showCalendarControl(this);"></font>
	<!--&nbsp;&nbsp;&nbsp;	<strong><font color="#000066" size="2" face="Verdana">To Date</font>
	  </strong><font color="#006600" size="4"><img src="images/date.png" align="absmiddle">
	  <input type="text" name="todate" id="end" size="16" onfocus="showCalendarControl(this);" readonly="true"></font>-->
	 </td>
	 </tr></table>
	 <div id="show"> </div>
	<table  width="98%" class="tab10">
		<!-- <%//= getServletContext().getRealPath("/") %>-->
	 <tr align="center">
	   <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <input type="image" src="images/submit_btn.png"  onClick=" return show(),showImage();" onFocus="return path1();">
	  </td>
    </tr>
	 <tr align="center"> <td><div id="txtHint"> </div></td></tr>
	 
	 	
	
  </form>
</table>
<% session.removeAttribute("msg1");%>
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
<%}else{
	response.sendRedirect("index");
	}%>

</body>

</html>
