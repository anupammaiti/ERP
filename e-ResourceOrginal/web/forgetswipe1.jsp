<%@ page contentType="text/html; charset=iso-8859-1" language="java"
	import="java.sql.*" errorPage=""%>
<%@ page import="com.svs.erp.Hr.db.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type"
			content="text/html; charset=iso-8859-1">
		<link type="text/css" href="menu.css" rel="stylesheet" />
		<script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="menu.js"></script>
    <script type="text/javascript" src="js/eResourceJs.js"></script>
		<link href="styles.css" rel="stylesheet" type="text/css" />
		<link href="CalendarControl.css" rel="stylesheet" type="text/css">
		<script src="CalendarControl.js" language="javascript">
</script>
		<!-- <script src="School.js" language="javascript"></script> -->
		<script type="text/javascript">
		$(document).ready(function(){
			//alert('Hello');
			//$('.forgetswipe').hide();
			
			var empno= $('#empno').val();
			var date=$('#date11').val();
			var comp=$('#comp').val();
			//alert('Employee No'+empno);
			//alert('Date'+date);
			//alert('Company'+comp);
			$.getJSON('ForgetSwipe',{'empno':empno,'date':date,'comp':comp},function(json){
			//	alert('Hello'+json.department);
				$('#name').val(json.name);
				$('#dept').val(json.department);
				$('#desig').val(json.designation);
				$('#rm').val(json.rm);
				$('#hod').val(json.hod);
				$('.intime').val(json.intime);
				$('.outtime').val(json.outtime);
				var count1=json.count;
				//alert('count'+count1);
				if(count==0){
					//alert('Hello');
					$('#result11').html("<h3>Data Not Found</h3>");
					//$('.forgetswipe').hide();
					
					
				}else{
					alert('Form will be displayed');
					//$('.forgetswipe').show();
				}
			});
		});
		</script>
		<!--Code to time picker-->
		<link rel="stylesheet" media="all" type="text/css"
			href="./timejs-css/jquery-ui-1.8.16.custom.css" />
		<script type="text/javascript" src="./timejs-css/jquery-1.6.4.min.js">
</script>
		<script type="text/javascript"
			src="./timejs-css/jquery-ui-1.8.16.custom.min.js">
</script>
		<script type="text/javascript"
			src="./timejs-css/jquery-ui-timepicker-addon.js">
</script>
		<script type="text/javascript">

$(function() {

	$('.example-container > pre').each(function(i) {
		eval($(this).text());
	});
});
</script>
		<!--time picker code end here-->
		<!--time picker code-->
		<style type="text/css">
p {
	margin: 10px 0;
}

pre {
	padding: 20px;
	background-color: #ffffcc;
	border: solid 1px #fff;
}

.wrapper {
	width: 980px;
	padding: 8px;
	margin: 0 auto;
	background-color: #DEECFD;
}

.wrapper1 {
	width: 980px;
	padding: 8px;
	margin: 0 auto;
	background-color: #DEECFD;
}

.example-container p {
	font-weight: bold;
}

.example-container dt {
	font-weight: bold;
	height: 20px;
}

.example-container dd {
	margin: -20px 0 10px 100px;
	border-bottom: solid 1px #fff;
}

.example-container input {
	width: 100px;
}

.clear {
	clear: both;
}

#ui-datepicker-div {
	font-size: 80%;
}

/* css for timepicker */
.ui-timepicker-div .ui-widget-header {
	margin-bottom: 8px;
	color: #CC6600;
}

.ui-timepicker-div dl {
	text-align: left;
}

.ui-timepicker-div dl dt {
	height: 20px;
}

.ui-timepicker-div dl dd {
	margin: -25px 10px 10px 65px;
}

.ui-timepicker-div td {
	font-size: 90%;
}

.ui-tpicker-grid-label {
	background: none;
	border: none;
	margin: 0;
	padding: 0;
}
</style>

		<link rel="shortcut icon" href="./images/11.gif" />
		<link rel="icon" href="./images/11.gif" type="image/gif" />
		<script type="text/javascript" src="totaltime1.js" />
</script>
		<script type="text/javascript" src="totaltime2.js" />
</script>
		<meta http-equiv="Content-Type"
			content="text/html; charset=iso-8859-1">
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
.t1 {
	border: 0;
	background-color: "#FADFC3";
	border-color: "#FADFC3";
}
</style>
		<script language="javascript">
function clear1() {
	document.frminout.first.value = "";
	document.frminout.last.value = "";
}
function clear() {
	document.frminout.last.value = "";
}
function total1() {
	var stime = parseInt(document.getElementById('time').value);
	var etime = parseInt(document.getElementById('time1').value);
	//var stime = starttime.getHours();
	//var etime = endtime.getHours();
	if (etime < stime) {
		alert("Please give correct time");
		return false;

	}
	var h1 = document.getElementById('tothrs2').value;
	//alert("ttttttttttt"+h1);
	document.getElementById('tothrs').value = h1;
}

///////////////////////////////////// code to get total time
function valid() {

	if (document.frminout.first.value == ""
			|| document.frminout.first.value == "HH:MM:SS") {
		alert("Please Enter In Time");
		document.frminout.first.focus();
		document.frminout.first.style.background = "pink";
		return false;
	}

	if (document.frminout.last.value == ""
			|| document.frminout.last.value == "HH:MM:SS") {
		alert("Please Enter Out Time");
		document.frminout.last.focus();
		document.frminout.last.style.background = "pink";
		return false;
	}

	if (document.frminout.tothrs.value == ""
			|| document.frminout.tothrs.value == "null") {
		alert("Please Enter Correct In Time/Out Time To Get Total Time");
		document.frminout.tothrs.focus();
		document.frminout.tothrs.style.background = "pink";
		return false;
	}
}

function timediff1() {

}
</script>
<script type="text/javascript">
   		$(document).ready(function(){
		$("body div:last").remove();
		});
</script>
	</head>

	<body>
		<%
			String user_name = (String) session.getAttribute("userlog");
			String pwd = (String) session.getAttribute("passlog");
			String comp=(String)session.getAttribute("comp");
			if (pwd != null) {
		%>
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




								<table class="tab10" width="98%">
									<tr align="center">
										<td align="center" class="head">
											<h3>
												Data Update Form(In case of FS)
												<br>
												<br>
												<br>
												<br>
												<br>
												<br>
										</td>
									</tr>
								</table>

								<%
									String empno = request.getParameter("empno");
										String date1 = request.getParameter("date");
								%>
								<input type="hidden" name="date" value="<%=date1%>" id="date11"/>
								<input type="hidden" name="empno" value="<%=empno%>" id="empno" readonly="true"/>
								<div id="result11"></div>
								<form action="forgetswipe" name="frminout" method="post" onSubmit="return valid();" class="forgetswipe">
								<table border="0" bordercolor="#D468F7" align="center"	class="tab10" width="98%">
									
										<input type="hidden" name="date" value="<%=date1%>" id="date11">
										<tr>
											<td width="60" align="left">
												<strong><font color="#000066" size="2"
													face="Verdana">Emp No</font> </strong>
											</td>
											<td>
												<input type="text" name="empno" value="<%=empno%>" id="empno" readonly="true"/>
											</td>
											<%
													Connection con = null;
													PreparedStatement ps = null;
													ResultSet rs = null;
													//DBConnection conn = new DBConnection();
													ConnectionUtils connectionUtils=new ConnectionUtils();
													
													int c = 0;
													try {
														//////System.out.println("forgetswipe1.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
														con=connectionUtils.getDBConnection();
														//////System.out.println("forgetswipe1.jsp::ConnectionPool----->>>>After Open --->>>>Test");
														
														ps = con.prepareStatement("select * from empabsent where empid=? and date=?");
														ps.setString(1, empno);
														ps.setString(2, date1);
														rs = ps.executeQuery();

														while (rs.next()) {
															c++;
											%>


											<td>
												<strong><font color="#000066" size="2"
													face="Verdana">Name</font> </strong><font color="#006600" size="4">
											</td>
											<td>
												<input type="text" name="empname" id="name" />
												</font>
											</td>
											<td width="30">
												<font color="#006600" size="4"><strong><font
														color="#000066" size="2" face="Verdana">Department</font>
												</strong>
											</td>
											<td>
												<input type="text" name="department" id="dept"/>
												</font>
											</td>
											<td>
												<font color="#006600" size="4"><strong><font
														color="#000066" size="2" face="Verdana">Designation</font>
												</strong>
											</td>
											<td>
												<input type="text" name="designation" id="desig"/>
												</font>
											</td>
										</tr>
										<tr>
											<td>
											</td>
											<td>
											</td>
											<td align="left">
												<font color="#006600" size="4"><strong><font
														color="#000066" size="2" face="Verdana">RM</font> </strong>
											</td>
											<td>
												<input type="text" name="RM"  id="rm"/>
												</font>
											</td>

											<td>
												<font color="#006600" size="4"><strong><font
														color="#000066" size="2" face="Verdana">HOD</font> </strong>
											</td>
											<td>
												<input type="text" name="HOD"  id="hod"/>
												
											</td>

										</tr>
								</table>
								<!-- ============= time picker -->
								<div class="wrapper">
									<div class="example-container">
										<div>

											<font color="#006600" size="4"><strong><font
													color="#000066" size="2" face="Verdana">In Time</font> </strong> <input
													type="text" name="first" id="time" size="10"
													 class="intime"
													onChange="return shownames2(this.value,last.value);">
											</font>
										</div>
										<pre style="display: none">
</pre>
									</div>
								</div>
								<!-- ============= time picker code ends -->
								<!-- ============= time picker -->
								<div class="wrapper1">
									<div class="example-container">
										<div>

											<font color="#006600" size="4"><strong><font
													color="#000066" size="2" face="Verdana">Out Time</font> </strong> <input
													type="text" name="last" id="time1" size="10"
													 class="outtime"
													onChange="return shownames1(this.value,first.value);">
											</font>
										</div>
										<pre style="display: none">

	</pre>
									</div>
								</div>
								<!-- ============= time picker code ends -->

								<div class="wrapper1">
									<font color="#006600" size="4"><strong><font
											color="#000066" size="2" face="Verdana">Total Time</font> </strong> <input
											type="readonly" name="tothrs" id='tothrs' size="13"
											readonly="true" onClick="total1();"> </font>
								</div>
								<div id="txtHint3"></div>

								<table border="0" bordercolor="#D468F7" align="center"
									bgcolor="#DEECFD" width="98%">
									<tr align="center">
										<td colspan="3">
											<font color="#FF3300" size="2">(Click on totaltime
												field to get total time)</font>
										</td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td align="center">
											<input type="image" src="images/submit_btn.png"
												onMouseOver="total1();">
										</td>
										<td></td>
									</tr>
									<%
										}

											} catch (Exception e) {
												//////System.out.println("Exception raised" + e);
											}finally {
			try
			{
				//////System.out.println("forgetswipe.jsp::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("forgetswipe.jsp::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}
											if (c == 0) {
												
											out.println("</tr><table width=992 calss='tab10'><tr  align=center bgcolor='#DEECFD'><td width=1000><font color=red face=Verdana>No Data Found For "+ empno + "</td></tr>");
											out.println("<tr align=center  width=980 bgcolor='#DEECFD'><td><a href=forgetswipe.jsp><input type=button value=back class=back></a></td></table><table class=tab10 width=980>");
											}
									%>
									
								</table>
								</form>
								<tr>
									<td align="center">
										<!--<table width="98%" class="tab10">
											<tr id="svstr">
												<td align="right">
													<br>
													<br>
													&copy;Powered by
													<a href="http://www.svsinfomatics.com" target="_blank"
														id="svs"><font>SVSINFOMATICS</font> </a>
												</td>
											</tr>
										</table>-->
										<br>
										<jsp:include page="Footer.jsp" flush="true"></jsp:include>

										<table width="1012" border="0" cellspacing="0" cellpadding="0">
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
	</body>
	<%
		} else {
			response.sendRedirect("index");
		}
	%>
</html>
