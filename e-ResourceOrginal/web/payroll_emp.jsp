<!--
=================================================================
*eResourceDemo Application  Modify 2012/June/04		05:22PM			*				
*Copy Right By SVSINFOMATICS									*
*																*
=================================================================
-->

<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@page import="java.sql.*"%>
<%@page import="com.svs.erp.Hr.db.ConnectionUtils"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link type="text/css" href="menu.css" rel="stylesheet" />
<!--code to confirmation of close window-->
<!-- <script language="javascript">

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
<script>
function closeIt()
{
  return "Any string value here forces a dialog box to \n" + 
         "appear before closing the window.";
}
window.close = closeIt;
</script>
------------------------------popup box code--------------------
<style>
		@import "./Assets/LightFace.css";
	</style>
 --><!-- 	<link rel="stylesheet" href="../Assets/lightface.css" />
	<script src="./Source/mootools.js"></script>
	<script src="./Source/LightFace.js"></script>
	<script src="./Source/LightFace.js"></script>
	<script src="./Source/LightFace.IFrame.js"></script>
	<script src="./Source/iframeab.js"></script>
	<script src="./Source/LightFace.Image.js"></script>
	<script src="./Source/LightFace.Request.js"></script> -->
	
<!--------------------------------close here------------------------------->
<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="js/eResourceJs.js"></script>
    <script type="text/javascript" src="menu.js"></script>
<link href="styles.css" rel="stylesheet" type="text/css" />
<link href="CalendarControl.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="./images/svsicon.ico" /> 
<script src="CalendarControl.js" language="javascript"></script>
<link rel="shortcut icon" href="./images/11.gif" /> 
<link rel="icon" href="./images/11.gif" type="image/gif" />

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
 //////System.out.println("User in PaySlip"+user_name );
 if((user_name!=null)&&(pwd!=null))
 {
	 %>
<body onload="paySlipCalculation()" ><!--background="background images for website/master70_background.jpg"-->
<table align="center" width="100%">
<tr>
<td>

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
			 	<!--<table width="721" border="0" cellspacing="0" cellpadding="0">
                <td id="session" align="right"><b>Welcome</b>&nbsp; <font color="#000000"></font></td>
				</table>-->
			</td>
            </tr>
			<!--<tr>
            <td height="50" align="right" valign="middle">
				<!--<table width="570" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="10"></td>
                    <td width="701" align="left" valign="middle">
					
					
					</td>
                    <td width="10" align="right"></td>
                  </tr>
                </table>
			</td>
			</tr>-->
			
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
				<jsp:include flush="true" page="eresourcemenu.jsp"></jsp:include>
				</td></tr></table>
				
				

<!-- END of code for page display with menus-->
	 	<center>PaySlip</center>
	 	<%
	 	Connection con;
	 	PreparedStatement pr;
	 	Statement st;
	 	ResultSet rs;
	 	ConnectionUtils conn=new ConnectionUtils();
	 	try{
	 		String username=user_name;
	 		con=conn.getDBConnection();
	 		pr=con.prepareStatement("select * from employee where empno=?");
	 		pr.setString(1,username);
	 		rs=pr.executeQuery();
	 		while(rs.next()){%>
	 			
	 	
	 	
	 	
	 	
	 <table class="tab10"> 
  <tr>
	<td>
		<label>EmpId:</label></td><td><input type="text"name="empid" value="<%=rs.getString(1) %>" id="empid"/>
	</td>
	<td>
		<label>Bank A/c No:</label></td><td><input type="text" name="bankaccount" value="<%=rs.getString(28)%>" />
	</td>
	<td>
		<label>PF No:</label></td><td><input type="text" name="pfno" value="<%=rs.getString(29)%>"/>
	</td>
</tr>
<tr>
	<td>
		<label>Employee Name</label></td><td><input type="text" name="empname" value="<%=rs.getString(2)%>"/>
	</td>
	<td>
		<label>Department</label></td><td><input type="text" name="deprtment" value="<%=rs.getString(9)%>"/>
	</td>
	<td>
		<label>Pan Number</label></td><td><input type="text" name="pannumber" value="<%=rs.getString(18)%>"/>
	</td>
</tr>
<tr>
	<td>
		<label>Designation</label></td><td><input type="text" name="designation" value="<%=rs.getString(8)%>"/>
	</td>
	<td>
		<label>Paid Days</label></td><td><input name="paiddays" type="text" id="paiddays"/>
	</td>
</tr>
</table>
	<%}
	 	}catch(Exception e){
	 		e.printStackTrace();
	 	}%>
<hr/>
</td>
</tr>

<tr>
	<td>

	
				
					
					
							<table class="tab10" align="center">
							<tr><td>Allowance</td><td>Actuals</td><td>Deductions</td><td>Amount</td></tr>
								<tr>
									<td>
											<label>Basic</label></td><td><input type="text"name="basic"  id="basic"/>
											
									</td>
									<td>
											<label>PF</label></td><td><input name="hra" type="text" id="pf"/>
											
									</td>
									</tr>
									<tr>
									<td>
										<label>HRA</label></td><td><input name="hra" type="text" id="hra"/>
									</td>
									<td>
										<label>PT</label></td><td><input type="text" name="pt" id="pt"/>
									</td>
								</tr>
								<tr>
									<td>
									<label>Conveyance</label></td><td><input type="text" name="conv" id="conv"/>
									</td>
									<td>
										<label>IncomeTax</label></td><td><input type="text" name="incometax"  id="it"/>
									</td>
								
								</tr>
														
								<tr>
								<td>
								DA
								</td>
								
								<td>
									<input type="text" name="da"  id="da"/>
								</td>
									
								<td>
									Loan
								</td>
								<td>
									<input type="text" name="loan" id="loan"/>
								</td>
								</tr>
								<tr>
								<td>
									<label>Special Allowance</label></td><td><input type="text" name="speicalallogation" id="sa"/>
								</td>
								<td>
									<label>Other Deductions</label></td><td><input name="otherded" type="text" id="othded"/>
								</td>
								</tr>
								<tr>
									<td>
										Medical 
									</td>
									<td>
										<input type="text" name="medical" id="medical"/>
									</td>
								</tr>
								<tr>
									<td>
										Child Education 
									</td>
									<td>
										<input name="childeducation" id="ched" type="text"/> 
									</td>
								</tr>
								
								<tr>
									<td><label>Gross Salary</label></td><td><input type="text" name="grass" id="gs"/> </td><td><label>Total Deduction</label></td><td><input type="text" name="totalded" id="totded"/> </td>								</tr>
							</table><hr/>
							<table class="tab10" align="center">
								<tr>
									<td>
										<label>Net Amount</label></td><td><input type="text" name="netamount" id="net"/>
									</td>
									<td><label>Payment By Bank</label></td><td><input type="text" name="payment" id="fialsalary"/> </td>
									
								</tr>
								<tr><td></td></tr>


							</table><hr/>	
	</td>
</tr>
</table>

 

</td>
</tr>
<tr>
    <td align="center">
	<br>
	<!--<table width="98%" class="tab10"><tr id="svstr"><td align="right"><br><br>&copy;Powered by <a href="http://www.svsinfomatics.com" target="_blank" id="svs"><font>SVSINFOMATICS</font></a></td></tr></table>-->
	<jsp:include page="Footer.jsp" flush="true"/>
	<table width="912" border="0" cellspacing="0" cellpadding="0">
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
