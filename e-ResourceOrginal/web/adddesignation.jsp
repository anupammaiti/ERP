<%@ page contentType="text/html; charset=iso-8859-1" language="java"  import="java.sql.*" errorPage="" %>
<%@page import="com.svs.erp.Hr.db.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html;charset=utf-8" http-equiv="Content-Type">
<link type="text/css" href="menu.css" rel="stylesheet" />
    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="menu.js"></script>
    <script type="text/javascript" src="js/eResourceJs.js"></script>
    <script type="text/javascript" src="js/eResourceJs.js"></script>
	<!--------------------------------popup box code---------------------->
<style>
		@import "./Assets/LightFace.css";
	</style>
	<link rel="stylesheet" href="../Assets/lightface.css" />
	<script src="./Source/mootools.js"></script>
	<script src="./Source/LightFace.js"></script>
	<script src="./Source/LightFace.js"></script>
	<script src="./Source/LightFace.IFrame.js"></script>
	<script src="./Source/iframe1.js"></script>
	<script src="./Source/LightFace.Image.js"></script>
	<script src="./Source/LightFace.Request.js"></script>
	
<!--------------------------------close here------------------------------->

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
</style></head>
<script language="javascript">

function goLite(BTN)
{

   window.document.getElementById(BTN).style.color = "#660099";
   window.document.getElementById(BTN).style.backgroundColor = "#FFFF99";
}

function goDim(BTN)
{
   window.document.getElementById(BTN).style.color = "#000066";
   window.document.getElementById(BTN).style.backgroundColor = "#CCFF99";
}


</script>
<script type="text/javascript">
function valid()
{
b=document.frm1.name.value;
if(b=="")
{
alert("Please Enter Company Name");
return false;
}}

function delete1()
{
var res=window.confirm("Are you sure want to delete ");

if(res==true)
{
return true;
}
else
{
	
	return false;
}
}

</script>



<%

 String user_name=(String)session.getAttribute("userlog");
String pwd=(String)session.getAttribute("passlog");
String comp=(String)session.getAttribute("comp");
 session.removeAttribute("desc");
  if(pwd!=null)
 {
	 %>
 
<body onload="viewDesignationList();">
   <input type="hidden" value="<%=comp %>" id="companyid"/>
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
            <td width="300" >
            <img alt="Logo" class="logo_image" alt="logo"/>
            </td>
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
					
					
					
	
    <table width="1012" border="0" cellpadding="0" cellspacing="0" background="images/page_rounded_bar.jpg">
      <tr>
        <td width="477" align="center" valign="top" ><table width="576" border="0" cellspacing="0" cellpadding="0" class="tab10">
          <tr>
            <td width="426">&nbsp;</td>
          </tr>
</table>

<table class="tab10" width="98%" border="0"> <tr align="center">
   <td align="center" class="head"><h3>Add Designation</td>
	</tr></table>
	
<table border="0" bordercolor="#D468F7"   align="center" class="tab10" width="98%" >
	<tr align="center">
		<td>
		<table bgcolor="#A4C6C5" width="98%" align="center" >
		<tr align="center">
		<td>
			<form action="addDesignation" name="frm1" method="post" onSubmit="return valid();"> 
			<input type="text" name="name"/>
	       <input type="submit"  value="Add" class="add1" id="adddesig" onMouseOver="goLite(this.id)"
   onMouseOut="goDim(this.id)">
			</form>
			</td>
			</tr>
			</table>
		</td>
	</tr>
	<tr><td><br><table class="tab1" align="center" border="0"><tr><td><font color="#FF0000">**</font><font color="#000066" size="3" class="head"> To Modify Designation Click</font> </td>
	<td><button   id="start" class="buttondesig" onMouseOver="goLite(this.id)"
   onMouseOut="goDim(this.id)">Modify Designation</button></td></tr></table></td></tr>
	</table>
	

<table border="0" bordercolor="#D468F7"   align="center" class="tab10" width="98%">
<tr><td><table align="center" width="50%"><tr><td align="center"><font color="#993300"><b>Sl.No.</b></font> </td><td align="center"><font color="#993300"><b>Designation </b></font></td><td align="center"><font color="#993300"><b>Delete</b></font></td><!--<td align="center"><font color="#993300"><b>Modify</b></font></td>--></tr>
<tbody id="listdisignation"></tbody>


</table>
</td></tr></table>

<tr>
    <td align="center">
			<table width="98%" class="	tab10">
			<tr id="svstr"><td align="right"><br><br>&copy;Powered by <a href="http://www.svsinfomatics.com" target="_blank" id="svs"><font>SVSINFOMATICS</font></a></td></tr></table>

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
