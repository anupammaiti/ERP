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
<link rel="shortcut icon" href="./images/svsicon.ico" /> 
<link href="CalendarControl.css" rel="stylesheet" type="text/css">
<script src="CalendarControl.js" language="javascript"></script>
<link rel="shortcut icon" href="./images/11.gif" /> <link rel="icon" href="./images/11.gif" type="image/gif" />
<script src="datediff.js" language="javascript"></script>
<!--Code to time picker-->
<link rel="stylesheet" media="all" type="text/css" href="./timejs-css/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="./timejs-css/jquery-1.6.4.min.js"></script>
		<script type="text/javascript" src="./timejs-css/jquery-ui-1.8.16.custom.min.js"></script>
		<script type="text/javascript" src="./timejs-css/jquery-ui-timepicker-addon.js"></script>
		<script type="text/javascript">
			
			$(function(){
				
		
				$('.example-container > pre').each(function(i){
					eval($(this).text());
				});
			});
			
		</script>
		<!--time picker code end here-->
		
<script language="javascript">
function clear1()
{

document.getElementById("time").value="";


//document.frm.getElementById("odhours").value="";

}
function check()
{
a=document.frm11.fromdate.value;
b=document.frm11.todate.value;
c=document.frm11.time.value;
if(a=="")
{
alert("Please specify from date");
document.frm11.fromdate.focus();
document.frm11.fromdate.style.background = "pink";
return false;
}
if(b=="")
{
alert("Please specify to date");
document.frm11.todate.focus();
document.frm11.todate.style.background = "pink";
return false;
}
if(c=="")
{
alert("Please specify time");
document.frm11.time.focus();
document.frm11.time.style.background = "pink";
return false;
}
}
</script>
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
<!--time picker code-->
<style type="text/css"> 
			
			
		
			p{ margin: 10px 0; }
			
			pre{ padding: 20px; background-color: #ffffcc; border: solid 1px #fff; }
		.wrapper{ width: 950px;  padding: 20px; margin: 0 auto; background-color:#DEECFD;}
			
			.example-container p{ font-weight: bold; }
			.example-container dt{ font-weight: bold; height: 20px; }
			.example-container dd{ margin: -20px 0 10px 100px; border-bottom: solid 1px #fff; }
			.example-container input{ width: 100px; }
			.clear{ clear: both; }
			#ui-datepicker-div{ font-size: 80%; }
			
			/* css for timepicker */
			.ui-timepicker-div .ui-widget-header { margin-bottom: 8px; color: #ffffff; }
			.ui-timepicker-div dl { text-align: left; }
			.ui-timepicker-div dl dt { height: 20px; }
			.ui-timepicker-div dl dd { margin: -25px 10px 10px 65px; }
			.ui-timepicker-div td { font-size: 90%; }
			.ui-tpicker-grid-label { background: none; border: none; margin: 0; padding: 0; }
			
		</style> 
		<script type="text/javascript">
   		$(document).ready(function(){
		$("body div:last").remove();
		});
</script>

</head>

<body>
<%
String user_name=(String)session.getAttribute("userlog");
String pwd=(String)session.getAttribute("passlog");
String comp=(String)session.getAttribute("comp");
 if((user_name!=null)&&(pwd!=null))
 {
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

<table class="tab10" width="98%"> <tr align="center">
   <td align="center" class="head"><h3>Early Going Employees Report<br><br><br></td>
	</tr></table>


<table border="0" bordercolor="#D468F7"   align="center" class="tab10" width="98%">
<form action="EarlyGoing" name="frm11"  onSubmit="return datediff();" target="_blank">
  
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
	 </table>
 
	 <!-- ============= time picker -->
	 <div class="wrapper">
	<div class="example-container">
	<div><strong><font color="#FF0000" face="Verdana">*</font><font color="#573801" size="2" face="Verdana"> Time</font>
	  </strong>
	  <input type="text" name="time" value="" size="7" id="time" onFocus="clear1();" >
	  <!--<input type="text" name="example10" id="time1" value="" />-->
		</div>
<pre style="display:none ">
$('#time').timepicker({
	hourGrid: 4,
	minuteGrid: 10
});
</pre>
	</div>
	
	 	</div>
		<table class="tab10" width="98%">
	 <tr align="center">
<td class="t1"></td><td class="t1"><input type="image" src="images/submit_btn.png" onFocus="return check()"></td>
    </tr>
  </form>
</table>
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
<%
 }
 else
 {
	 response.sendRedirect("index");
 }
 %>
</html>
