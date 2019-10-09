<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page  import="java.util.ArrayList" %>
<%@ page  import="java.util.StringTokenizer" %>
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
<script type="text/javascript" >
$(document).ready(function(){
	//alert('Hai');
	var empnumber=$('#empnumber').val();
	var fromdate=$('#fromdate').val();
	var todate=$('#todate').val();
	
	//alert('empnumber'+empnumber);
	$.get('Mail2',{'empnumber':empnumber,'fromdate':fromdate,'todate':todate},function(data){
		//alert('Data is\t'+data);
		$('.data1').html(data);
	});
});
</script>
<meta content="text/html;charset=utf-8" http-equiv="Content-Type">
<title>SVS Infomatics</title>
<link rel="shortcut icon" href="./images/11.gif" /> <link rel="icon" href="./images/11.gif" type="image/gif" />
<script>
// show image while send mail
 </script>
 <script type="text/javascript" src="scriptforall.js"></script>
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

<script language="javascript">
function create()
{
var agree=confirm("Are You Sure To Send Mail"); 
if (agree)
{
document.getElementById('maintable').style.display="none";
document.getElementById('loadingImage').style.display="block";
	return true ;
	
	}
else
{
	return false ;
	
}
		
}

</script>

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
 String empnumber=session.getAttribute("empnumber").toString();
 //////System.out.println("Session Value............"+empnumber);
 String fromdate=(String)session.getAttribute("fromdate");
 String todate=(String)session.getAttribute("todate");
	 %>
	 
	 
<body >
<!----------------------------ends here----------------->
<table align="center">
<tr>
<td><img id="loadingImage" src="images/mail.gif" style=" display:none" width="300" height="300" align="absmiddle"/>
</td></tr></table>
<input type="hidden" value="<%=empnumber%>" id="empnumber"/>
<input type="hidden" value="<%=fromdate %>" id="fromdate"/>
<input type="hidden" value="<%=todate %>" id="todate"/>
<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
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
					
		  <form action="SendMail"  name="frmmail" method="post" onsubmit="return create(this)">
		  <input type="hidden" name="from" value="leaveadmin@kvkenergy.com">
		  <input type="hidden" name="pass" value="leaveadmin123">
		  <input type="hidden" name="sub" value="Leave Details">
		<table class="tab10" width="98%" border="0"> <tr align="center"><td colspan="2"><font color="#9900CC" face="Verdana, Arial, Helvetica, sans-serif" size="2"><b>To send mail to below listed employees, click on Send Mail button. </b></font>
		  <br><br></td></tr>
		  <tr><td><table align="center">
		  <tr align="center"><td align="right" width="100"><font color="#993366"><strong>Emp ID.</strong></font></td><td align="left" width="250">&nbsp;&nbsp;<font color="#993366"><strong>Emp Name</strong></font></td><td align="left">&nbsp;&nbsp;<font color="#993366"><strong>Email ID.</strong></font></td></tr>
		  <tbody class="data1">
		  </tbody>
		   
		   <tr>
		    <td align="center" colspan="2"><br>
			 <input type="submit" value="Send Mail" class="submit" onClick="showImage();">
			</td>
		   </tr>
		  </form>
		<tr bgcolor="#A4C6C5">
		<td colspan="2"><font color="#CC0000">*</font><font color="#000066" face="Verdana, Arial, Helvetica, sans-serif" size="2">Please wait after click on send mail button until get acknowledge. </font>
		</td>
		</tr>
				</table></td></tr>				   		
		   
	 	  </table>
	 
</td>
</tr>
<tr>
    <td align="center">
					<table width="98%" class="tab10"><tr id="svstr"><td align="right" > <br><br>&copy;Powered by <a href="http://www.svsinfomatics.com" target="_blank" id="svs"><font>SVSINFOMATICS</font></a></td></tr></table>
<table width="1012" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/page_rounded_bottom.jpg" width="1012" height="16" /></td>
      </tr>
    </table></td>
  </tr>

</table>
  
</body>

</html>
