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
<link rel="shortcut icon" href="./images/11.gif" /> <link rel="icon" href="./images/11.gif" type="image/gif" />


<meta content="text/html;charset=utf-8" http-equiv="Content-Type">
<title>SVS Infomatics</title>

<style type="text/css">

body {
	margin-left: 0px;
	margin-top: 10px;
	margin-right: 0px;
	margin-bottom: 0px;
}


.t1
{
border:0;
background-color:"#FADFC3";
border-color:"#FADFC3";
}
</style></head>

<body>

<!----------code to processimage--------------->


<script type="text/javascript">
   		$(document).ready(function(){
		$("body div:last").remove();
		});
</script>
<!----------------------------ends here----------------->
<table align="center">
<tr>
<td>
</td></tr></table>
<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->


<%

String user_name=(String)session.getAttribute("userlog");
String pwd=(String)session.getAttribute("passlog");
String comp=(String)session.getAttribute("comp");
//////System.out.println(user_name);
boolean flag=true;
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
<!-- Content Started. -->
					<h3>Company PaySlip</h3>
					<form action="CompanyPaySlipBO" method="post">
					<table align="center" cellpadding="0" cellspacing="0" class="tab10">
					
			<tr align="center">
			
				<td align="center">

					
					<table align="center" class="tab10">
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
								Basic Salary 
							</td>
							<td>
								<input type="text" name="basic"/>
								
							</td>
						</tr>
						<tr>
							<td>
							HRA
							</td>
							<td>
								<input type="text" name="hra"/>
								
							</td>
						</tr>
						<tr>
							<td>
							PF
							</td>
							<td>
								<input type="text" name="pf"/>
								
							</td>
						</tr>
						<tr>
							<td>
								Conveyance
							</td>
							<td>
								<input type="text" name="conv"/>
								
							</td>
						</tr>	
						
						<tr>
							<td>
								DA
							</td>
							<td>
							<input type="text" name="da"/>
							
							</td>
						</tr>
					</table>
					
					<table align="center" class="y" class="tab10">
					<caption><b>IncomeTax Slab Structure</caption>
	
					<tr><td align="center" colspan="4"><b>For Men</b></td></tr>
					<tr>
						<th><b>Slab</b></th>
						<th><b>Inclusive</b></th>
						<th><b>Exclusive</b></th>
						<th><b>%</b></th></tr>
						
						<tr> <td align="center"> <b>slab1</b></td>
						 <td>
						 <input type="text" name="mis1"/>
						 
						 </td>
						 <td>
						 <input type="text" name="mie1"/>
						 </td>
						 <td>
						 <input type="text" name="mip1"/>
						 </td> 
						 </tr>

						<tr> <td align="center"> <b>slab2</b></td> 
						<td>
						<input type="text" name="mis2"/>
						</td>
						<td>
						<input type="text" name="mie2"/>
						</td> 
						<td>
						<input type="text" name="mip2"/>
						</td> 
						</tr>

						<tr> <td align="center"><b>slab3</b></td>
						 <td>
						 <input type="text" name="mis3"/>
						 </td> 
						 <td>
						 <input type="text" name="mie3"/>
						 </td> 
						 <td>
						 <input type="text" name="mip3"/>
						 </td> 
						</tr>

						<tr><td align="center"><b> slab4</b></td> 
						<td>
						<input type="text" name="mis4"/>
						</td> 
						<td>
						<input type="text" name="mie4"/>
						</td>
						 <td>
						 <input type="text" name="mip4"/>
						 </td>
					   </tr>


						<tr><td align="center" colspan="4"><b>For Women<b></td></tr>
						
						<tr> <td align="center"> <b>slab1</b></td>
						<td>
						<input type="text" name="fis1"/>
						</td> 
						<td>
						<input type="text" name="fie1"/>
						</td> 
						<td>
						<input type="text" name="fip1"/>
						</td>
						</tr>

						<tr> <td align="center"><b> slab2</b></td> 
						<td>
						<input type="text" name="fis2"/>
						</td> 
						<td>
						<input type="text" name="fie2"/>
						</td> 
						<td>
						<input type="text" name="fip2"/>
						</td>
						</tr>

						<tr> <td align="center"><b> slab3</b></td> 
						<td>
						<input type="text" name="fis3"/>
						</td> 
						<td>
						<input type="text" name="fie3"/>
						</td> 
						<td>
						<input type="text" name="fip3"/>
						</td>
						 </tr>

						<tr> <td align="center"> <b>slab4</b></td> 
						<td>
						<input type="text" name="fis4"/>
						</td> 
						<td>
						<input type="text" name="fie4"/>
						</td> 
						<td>
						<input type="text" name="fip4"/>
						</td> 
						</tr>
                          
                        <tr><td colspan="4" align="center">
                          <input type="image" src="images/submit_btn.png"/>
                          </td></tr>
						</table>
						</td></tr>
					</table>
					
</form>					
					
					
					
<!-- Content Ended  -->
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
<%
  
         
 }
 else
 {
	 response.sendRedirect("index");
 }
 %>
</body>

</html>
