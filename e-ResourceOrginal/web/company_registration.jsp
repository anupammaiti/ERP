<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>

<%@ page contentType="text/html; charset=ISO-8859-1" language="java" import="java.sql.*" import="java.io.*" errorPage="" %>

<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
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
.t1
{
border:0;
background-color:"#FADFC3";
border-color:"#FADFC3";
}

</style>




<link href="styles.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="js/eResourceJs.js"></script>
	


</head>



<body onload="showMessage()">

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
           
			</tr>
			<tr align="center">
            <td ><img src="images/e-resource.gif" width="200"height="50" /></td>
			</tr>
			</table>
		</td>
			<div id="welcome1"><font color="#000099"></font>&nbsp;&nbsp;</div>
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
				
				</td></tr></table>
			<!-- Body Code Starts here -->
			<table bordercolor="#D468F7" class="tab10" width="98%" align="center">
			<form action="CompanyRegistrationBO" method="post">
				<tr>
					<td>
						Company Name
					</td>
					<td>
						<input type="text" name="companyname"/>
					</td>
				</tr>		
				<tr>
					<td>
					First Name
					</td>
					<td>
						<input type="text" name="firstname"/>
					</td>
				</tr>
				<tr>
					<td>
						Last Name
					</td>
					<td>
						<input type="text" name="lastname"/>
					</td>
				</tr>
				<tr>
				<td>
					Mobile No
				</td>
				<td>
						<input type="text" name="mobile"/>
					</td>
				</tr>
				<tr>
					<td>
						e-mail
					</td>
					<td>
						<input type="text" name="email"/>
					</td>
				</tr>
				<tr>
					<td>
						User Name		
					</td>
					<td>
						<input type="text" name="username"/>
					</td>
					<td>
						<div id="check_user"></div>
					</td>
				</tr>
				<tr>
					<td>
						Password
					</td>
					<td>
						<input type="password" name="password" id="pass"/>
					</td>
				</tr>
				<tr>
					<td>
						Re-enter Password
					</td>
					<td>
						<input type="password" name="reenter" id="repass"/>
					</td>
				</tr>
				<tr>
					<td></td>
					<td>
						<input type="image" src="images/submit_btn.jpg"/>
					</td>	
					</form>
					<form action="index" method="post">
					<td>
						<input type="submit" value="Skip>>"/>
					</td>	
					</form>
				</tr>
				
				
			</table>
		<!-- Body Code Ends here -->



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

</html>


