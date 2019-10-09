
<!--
=================================================================
*eResource Application  Modify 2012/June/04						*				
*Copy Right By SVSINFOMATICS									*
*																*
=================================================================
-->

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
<link href="CalendarControl.css" rel="stylesheet" type="text/css">
<script src="CalendarControl.js" language="javascript"></script>
<script src="School.js" language="javascript"></script>
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
</style></head>
<script type="text/javascript">
   		$(document).ready(function(){
		$("body div:last").remove();
		});
</script>
<script type="text/javascript">
$(document).ready(function(){
	//alert('Hello');
	var comp=$('#comp').val();
	$.get('LeaveApprovalList',{comp:comp},function(data){
		//alert('Leave approval'+data);
		$('#data1').html(data);
	});
});
</script>
     
<% 
 String user_name=(String)session.getAttribute("userlog");
String pwd=(String)session.getAttribute("passlog");
String comp=(String)session.getAttribute("comp");

String ename=(String)session.getAttribute("ename");
 //////System.out.println(user_name);
 if((user_name!=null)&&(pwd!=null)){
	 %>

<body >
<input type="hidden" value="<%=comp %>" id="comp"/>
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
		
					
					
					
							

   <table class="tab10" width="98%"><tr><td><font color="#FF0000" face="Verdana, Arial, Helvetica, sans-serif" >${response}</font></td></tr>
   <tr><td><font color="#FF0000" face="Verdana, Arial, Helvetica, sans-serif" >${response1}&nbsp;${response2}</font></td></tr></table>
   <%session.removeAttribute("response");%>
      <%session.removeAttribute("response1");%>
	  <%session.removeAttribute("response2");%>
<table border="0" bordercolor="#D468F7"   align="center" class="tab10" width="98%">
<tr align="center">
   <td align="center"  colspan="8"><h3><font color="#000066">Leave Requests To Be Approved </font></h3></td>
	</tr>
	<tr>
	  <td><strong>
	  <font color="#000066">
	   Emp ID
	   </font>
	   </strong>
	   </td>
	   <td>
	   <strong><font color="#000066">
	   Emp Name
	   </font>
	   </strong>
	   </td>
	   <td><strong><font color="#000066">
	   Company.
	   </font></strong>
	   </td>
	   <td><strong><font color="#000066">
	   Designation
	   </font></strong>
	   </td>
	    <td><strong><font color="#000066">
	   From Date
	   </font></strong>
	   </td>
	    <td><strong><font color="#000066">
	   To Date
	   </font></strong>
	   </td>
	   <td><strong><font color="#000066">
	   Leave Type
	   </font></strong>
	   </td>
	   <td><strong><font color="#000066">
	   Purpose of leave
	   </font></strong>
	   </td></tr>
	 <tbody id="data1"></tbody>


	
	  </table>
</form>	  
</td>
</tr>
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
<br>
<%
 }
 else
 {
	 response.sendRedirect("index");
 }
 %>
</html>
