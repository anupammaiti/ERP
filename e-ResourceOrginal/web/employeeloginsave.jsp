<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.svs.erp.Hr.db.*"%>
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
<script src="School.js" language="javascript"></script>
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

<body>
<% String user_name=(String)session.getAttribute("userlog");
String pwd=(String)session.getAttribute("passlog");
String comp=(String)session.getAttribute("comp");
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

					
					
					
							

	<form action="prorated1">
<table border="0" cellspacing="0" cellpadding="0" align="center"  width="98%" class="tab10">
<tr >
<td width="600" colspan="3"><font color="#FF0000">**</font><font face="Verdana, Arial, Helvetica, sans-serif">To Modify Employee Details Click&nbsp;</font><button id="start" class="buttonemp">Modify Employee Details</button> </td>
</tr>
 <tr>
  <td colspan="3"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#CC3300" face="Verdana, Arial, Helvetica, sans-serif" size="2">Inserted Successfully........</font></td>
  </tr>
  <tr >
  <td width="250"></td>
  <td align="left" width="130"><font color="#000066" face="Verdana" size="3" ><strong>Employee ID</strong></font></td>
  <td  align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><font color="#9900FF" face="Verdana" size="2" ><span class="empno"></span> (Please remember ID)</font></strong><input type="hidden" name="empid" class="empno"></td>
  </tr>
  <tr >
   <td width="250"></td>
  <td align="left"><font color="#000066" face="Verdana" size="3" >Employee Name</font></td>
  <td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#000066" face="Verdana" size="2" ><span class="name"></span></font><input type="hidden" name="empname" class="name"></td>
  </tr>
  <tr >
   <td width="250"></td>
  <td align="left"><font color="#000066" face="Verdana" size="3" >Date of Joining</font></td>
  <td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#000066" face="Verdana" size="2" ><span id="jod"></span></font><input type="hidden" name="doj" class="jod"></td>
  </tr>
  <tr >
   <td width="250"></td>
  <td align="left"><font color="#000066" face="Verdana" size="3" >Designation</font></td>
  <td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#000066" face="Verdana" size="2" ><span id="deignation"></span></font></td>
  </tr>
  <tr >
   <td width="250"></td>
  <td align="left"><font color="#000066" face="Verdana" size="3" >Department</font></td>
  <td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#000066" face="Verdana" size="2" ><span id="department"></span></font></td>
  </tr>
  <tr >
   <td width="250"></td>
  <td align="left"><font color="#000066" face="Verdana" size="3" >RM</font></td>
  <td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#000066" face="Verdana" size="2" ><span id="reportingto"></span></font></td>
  </tr>
  <tr >
   <td width="250"></td>
 <td align="left"><font color="#000066" face="Verdana" size="3" >HOD</font></td>
  <td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#000066" face="Verdana" size="2" ><span id="manager"></span></font></td>
  </tr>
         
		 <tr>
										<td align="center">
											<table width="98%" class="tab10">
												<tr id="svstr">
													<td align="right">
														<br>
														<br>
														&copy;Powered by
														<a href="http://www.svsinfomatics.com" target="_blank"
															id="svs"><font>SVSINFOMATICS</font>
														</a>
													</td>
												</tr>
											</table>

											<table width="1012" border="0" cellspacing="0"
												cellpadding="0">
												<tr>
													<td>
														<img src="images/page_rounded_bottom.jpg" width="1012"
															height="16" />
													</td>
												</tr>
											</table>
										</td>
									</tr>
					</table>


<!--<table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="174">&nbsp;</td>
    <td width="437"><img src="images/inner_table_bottom.jpg" width="435" height="21"></td>
    <td width="189">&nbsp;</td>
  </tr>
</table>-->

</body>

</html>
