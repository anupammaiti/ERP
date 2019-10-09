<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page  import="java.util.ArrayList" %>
<%@page import="com.svs.erp.Hr.db.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html;charset=utf-8" http-equiv="Content-Type">
<link type="text/css" href="menu.css" rel="stylesheet" />
    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="menu.js"></script>
    <script type="text/javascript" src="js/eResourceJs.js"></script>
	<link type="text/css" href="menu.css" rel="stylesheet" />
	<!--Code to check box validation-->
	<link rel="stylesheet" type="text/css" href="form.css"/>
	<!--Code to check box validation ENDS HERE-->
    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="menu.js"></script>
    <script type="text/javascript" src="js/eResourceJs.js"></script>
    <script type="text/javascript">
	$(document).ready(function(){
		//alert('Hai');
		var fromdate=$('#fromdate').val();
		var todate=$('#todate').val();
		var comp=$('#compname').val();
		$.get('SearchForMail',{'fromdate':fromdate,'todate':todate,compname:comp},function(data){
		//	alert('Hello'+data);
			$('.data1').html(data);
		});
	});
	</script>
	 <script language='JavaScript'>
	 	//////////////////////////////////////mail check all/none

      checked = false;
      function checkedAll (field) {
        if (checked == false){checked = true}else{checked = false}
	for (var i = 0; i < field.length; i++) {
	  field[i].checked  = checked;
	}
      }
    </script>
	
	
	<script type="text/javascript">
	function checkCheckBoxes(field,field1) {
	for (var i = 0; i < field1.length; i++) {
	
	  if(field.checked ==false)
	  {
	  
//alert ('You didn\'t choose any of the checkboxes!');
//return false;
	  }
	
	}

}


	//////////////////////////////////////mail check all/none
	
	
	/*function checkAll(field)
{
var a=document.myfrm.CheckAll.value;
//alert(a);
if(a=="Check All")
{

for (i = 0; i < field.length; i++)
	field[i].checked = true ;
}
if(a!= "Check All")
{
alert(a);
for (i = 0; i < field.length; i++)
	field[i].checked = false ;

}
}

function uncheckAll(field)
{
for (i = 0; i < field.length; i++)
	field[i].checked = false ;
}*/
	///////////////////////////
	function disa()
	{
	
	var a=document.myfrm.nd.value;
	if(a=="nodata")
	{
	alert("No Data Found To Send Mail ........");
	return false;
	}
	/*if(document.myfrm.CheckedAll.value=null)
	{
	alert("Mail Should be Selected..");
	}*/
	}
	
	function clearcheck(field)
	{
	for (i = 0; i < field.length; i++)
	field[i].checked = false ;
	document.myfrm.CheckAll.checked=false;
	
	}
	</script>
	
<link href="styles.css" rel="stylesheet" type="text/css" />
<link href="CalendarControl.css" rel="stylesheet" type="text/css">
<script src="CalendarControl.js" language="javascript"></script>
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
</style>
<script type="text/javascript">
   		$(document).ready(function(){
		$("body div:last").remove();
		});
</script>

</head>
<%
String user_name=(String)session.getAttribute("userlog");
String pwd=(String)session.getAttribute("passlog");
String comp=(String)session.getAttribute("comp");
 if(pwd!=null)
 {
 %>
 <body onUnload="clearcheck(document.myfrm.cbmail);">
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
   <td align="center" class="head"><h3>Leave Info Mail To Employees<br><br></td>
	</tr></table>
  <%
  String fromdate=request.getParameter("fromdate");
  String todate=request.getParameter("todate");
  String query;
  session.setAttribute("fromdate",fromdate);
  session.setAttribute("todate",todate);
  
  %>
  <input type="hidden" value="<%=fromdate %>" id="fromdate"/>
  <input type="hidden" value="<%=todate%>" id="todate"/>
 <input type="hidden" value="<%=comp %>" id="compname"/>
	
 <form name="myfrm" action="searchformail1.jsp" onsubmit="return checkCheckBoxes(document.myfrm.CheckAll,document.myfrm.cbmail);">
  <table align="center" width="98%" class="tab10" border="0">

 
 
  
	<tr align="left"><td width="350"><br><font color="#CC0000">**</font><font color="#000066" face="Verdana, Arial, Helvetica, sans-serif" size="2"><strong>Click on Employee ID to view leave details.</strong></font>
	<br><br></td><td><font color="#FF0000" face="Verdana, Arial, Helvetica, sans-serif" size="2">${none}</font></td></tr>

	</table>
	<table width="98%" border="0" class="tab10"> <!--new table-->
	<tr><%session.removeAttribute("none");%>
	<td >
<table border="0" bordercolor="#D468F7"   align="center" class="tab1" width="50%" >
	
	<tr bgcolor="#A4C6C5">
	  <td width="55">
	  <input type="checkbox" name="CheckAll" value="Check All" onClick="checkedAll(document.myfrm.cbmail)"><font color="#573801" size="1">Select All</font></td>
<td align="center" >
	 <font color="#573801">
Emp ID.
</font>
	  </td>
	  
<td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font color="#573801">
Employee Name
</font>
</td>
</tr>
	<tr><td><input type="hidden" name="empid"></td></tr>
	<tbody class="data1">
	</tbody>
	
	 </table>
	 </td>
	 </tr>
	 
	  <tr><td align="center"><br><!--
  <a href="searchformail1.jsp" id="anchorcolor" title="Click Here To Send Bulk Mail" ><input type="button" value="Click Here To Send Bulk Mail" name="mail" onClick="return disa();"></a>-->
  <input type="submit" name="butt" value="Click Here To Send Mail" onClick="return disa();" class="buttonmail">
  </td></tr></table></form>
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
