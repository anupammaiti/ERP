<!--
=================================================================
*eResourceDemo Application  Modify 2012/June/04		05:22PM			*				
*Copy Right By SVSINFOMATICS									*
*																*
=================================================================
-->
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.*"%>
<%@ page import="com.svs.erp.Hr.db.*"%> 
<html>
	<head>
		<title>Appraiser Form</title>
		<style type="text/css">
		#onlyread{
		background-color:#CCCCCC;
		}
		#welcome{
		padding:0 150 0 0;
		font:Arial, Helvetica, sans-serif;
		
		}

		
		</style>
	</head>
	<body>
	<%
	String userlog=null;
	String passlog=null;
	String ename=null;
	%>
	<%userlog=(String)session.getAttribute("userlog");%>
	<%passlog=(String)session.getAttribute("passlog");%>
	<%ename=(String)session.getAttribute("ename");%>

	<%
	
	String aPPraiseeId=request.getParameter("aPPraiseeId");
	//////System.out.println("FORMOLD------------>>>>>>"+aPPraiseeId);
	Connection con=null;
	Statement stmt,stmt1=null;
	PreparedStatement pstmt,pstmt1=null;
	ResultSet rs,rs1=null;
	//DataBaseConnection connection= new DataBaseConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();
	//////System.out.println("Test----------->>1");
	try{
				//////System.out.println("Test----------->>2");

		//con=connection.getDBConnection();
		con=connectionUtils.getDBConnection();
		stmt=con.createStatement();
				//////System.out.println("Test----------->>3");

		rs=stmt.executeQuery("select * from appraisee a LEFT JOIN appraiser b ON a.aPPraiseeId=b.aPPraiseeId where a.aPPraiseeId='"+aPPraiseeId+"'");
		//////System.out.println("Test----------->>4");
		
	%>
	<%/*
		con=connection.getDBConnection();
		stmt1=con.createStatement();
		rs1=stmt1.executeQuery("select * from appraiser where aPPraiseeId='"+aPPraiseeId+"'");
		//////System.out.println("RS1 Test--------------1");*/
	%>
	
	<table height="30">
			<tr>
				<td></td>
			</tr>
		</table>
		<table border="0">
			<tr align="center">
				<input type="hidden" value="<%=comp %>" id="companyid"/>
            <img alt="Logo" class="logo_image" alt="logo"/>
			</tr>
			<tr align="center">
				<td>
				<img src="images/e-resource.gif" width="200" height="50" />
				</td>
			</tr>
			
			
			</table>
			<div align="right" id="welcome"><font color="#000099"><b>Welcome:</b></font>&nbsp;&nbsp;<%=ename%></div>
			<table width="1010" height="15" cellpadding="0" cellspacing="0" bordercolor="#FF0000" border="0" align="center">
				<tr>
					<td></td>
				</tr>
			</table>
			<table width="1004" border="1" cellspacing="0" cellpadding="0"
						align="center" bordercolor="#CCCCCC" rules="cols">
						<tr>
							<td width="1004" align="center">
								<img src="images/banner_img.gif" width="1004" height="10" />
							</td>
						</tr>
						<tr>
							<td><jsp:include page="eresourcemenu.jsp" flush="true"></jsp:include></td>
						</tr>
					</table>
										

							

	<table align="center">
		<tr>
			<td>
			<center><h2>PERFORMANCE APPRAISER FORM </h2></center>
			</td>
		</tr>
	</table>
		
	<table align="center" width="900" border="0">
	<%while(rs.next()){%>
		<tr>
			<td>NAME OF THE APPRAISEE:</td>
			<td><input type="text" name="aPPraiseeName" value="<%=rs.getString(2)%>"></td>
		</tr>
		<tr>
			<td>EMPLOYEE NO. :</td>
			<td><input type="text" name="aPPraiseeId" value="<%=rs.getString(1)%>"></td>
			
		</tr>
		<tr>
			<td>GROUP / PROJECT :</td>
			<td><input type="text" name="grouPProject" value="<%=rs.getString(3)%>"></td>
		</tr>
		<tr>
			<td>PERIOD OF ASSESSMENT</td>
			<td></td>
			<td>FROM</td>
			<td><input type="text" name="assessmentFrom" value="<%=rs.getString(4)%>"></td>
			<td>TO</td>
			<td><input type="text" name="assessmentTo" value="<%=rs.getString(5)%>"></td>
		</tr>
		<tr>
			<td>NAME OF THE APPRAISER:</td>
			<td><input type="text" name="aPPraiserName" value="<%=rs.getString(7)%>"></td>
		</tr>
		<tr>
			<td>NAME OF THE REVIEWER:</td>
			<td><input type="text" name="reviewerName" value="<%=rs.getString(9)%>"></td>
		</tr>
	</table>
	<table align="center" width="900">
		<tr bgcolor="#7D9EC0">
			<td width="600">PRODUCTIVITY</td>
			<td width="100">DIMENSIONS</td>
			<td width="100">JUSTIFICATION</td>
			<td width="100">DIMENSIONS</td>
			<td width="100">COMMENTS</td>
		</tr>
		<!-- PRODUCTIVITY #1-->
		
		<tr bgcolor="#D6D6D6">
			<td><b>A)</b>Delivers programs / software within the time schedule</td>
			<td></td>
			<td><input type="text" name="P1" value="<%=rs.getString(10)%>" readonly="true" id="onlyread"></td>
			<td></td>
			<td><input type="text" name="AP1" value="<%=rs.getString(120)%>" readonly="true" id="onlyread" ></td>
		</tr>
		<!-- PRODUCTIVITY #2-->
		<tr>
			<td><b>B)</b>Analyze, debug and fix complex problems with in time</td>
			<td></td>

			<td><input type="text" name="P2" value="<%=rs.getString(11)%>" readonly="true" id="onlyread"></td>
			<td></td>
			<td><input type="text" name="AP2" value="<%=rs.getString(121)%>" readonly="true" id="onlyread" ></td>
		</tr>
		<!-- PRODUCTIVITY #3-->
		<tr bgcolor="#D6D6D6">
			<td><b>C)</b>Deliver work products with in the time schedule</td>
			<td></td>
			<td><input type="text" name="P3" value="<%=rs.getString(12)%>" readonly="true" id="onlyread"></td>
			<td></td>
			<td><input type="text" name="AP3" value="<%=rs.getString(122)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- PRODUCTIVITY #4-->
		<tr>
			<td><b>D)</b>Ability to provide technical guidance to the team</td>
			<td></td>
			<td><input type="text" name="P4" value="<%=rs.getString(13)%>" readonly="true" id="onlyread"></td>
			<td></td>
			<td><input type="text" name="AP4" value="<%=rs.getString(123)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- PRODUCTIVITY #5-->
		<tr bgcolor="#D6D6D6">
			<td><b>E)</b>Rework iterations per work product due to defects</td>
			<td></td>
			<td><input type="text" name="P5" value="<%=rs.getString(14)%>" readonly="true" id="onlyread"></td>
			<td></td>
			<td><input type="text" name="AP5" value="<%=rs.getString(124)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- PRODUCTIVITY #6-->
		<tr>
			<td><b>F)</b>Develop logical, functional design specifications</td>
			<td></td>
			<td><input type="text" name="P6" value="<%=rs.getString(15)%>" readonly="true" id="onlyread"></td>
			<td></td>
			<td><input type="text" name="AP6" value="<%=rs.getString(125)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- PRODUCTIVITY #7-->
		<tr bgcolor="#D6D6D6">
			<td><b>G)</b>Test, debug & modify programs written by others</td>
			<td></td>
			<td><input type="text" name="P7" value="<%=rs.getString(16)%>" readonly="true" id="onlyread"></td>
			<td></td>
			<td><input type="text" name="AP7" value="<%=rs.getString(126)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- PRODUCTIVITY #8-->
		<tr>
			<td><b>H)</b>Estimate time lines</td>
			<td></td>
			<td><input type="text" name="P8" value="<%=rs.getString(17)%>" readonly="true" id="onlyread"></td>
			<td></td>
			<td><input type="text" name="AP8" value="<%=rs.getString(127)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- PRODUCTIVITY #9-->
		<tr bgcolor="#D6D6D6">
			<td><b>I)</b>Plan / assign / monitor work of the team members</td>
			<td></td>
			<td><input type="text" name="P9" value="<%=rs.getString(18)%>" readonly="true" id="onlyread"></td>
			<td></td>
			<td><input type="text" name="AP9" value="<%=rs.getString(128)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- PRODUCTIVITY #10-->
		<tr>
			<td><b>J)</b>Schedule variance for allocated work with in acceptable limits <br>( No effect on project delivery)</td>
			<td></td>
			<td><input type="text" name="P10" value="<%=rs.getString(19)%>" readonly="true" id="onlyread"></td>
			<td></td>
			<td><input type="text" name="AP10" value="<%=rs.getString(129)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- PRODUCTIVITY #11-->
		<tr bgcolor="#D6D6D6">
			<td><b>K)</b>Anticipate & incorporate changes to systems & programs</td>
			<td></td>
			<td><input type="text" name="P11"  value="<%=rs.getString(20)%>" readonly="true" id="onlyread"></td>
			<td></td>
			<td><input type="text" name="AP11" value="<%=rs.getString(130)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- PRODUCTIVITY #12-->
		<tr>
			<td><b>L)</b>Review the code and provide feedback</td>
			<td>
			<input type="text" name="PD1" value="<%=rs.getString(21)%>" readonly="true" id="onlyread">
			</td>
			<td><input type="text" name="P12" value="<%=rs.getString(22)%>" readonly="true" id="onlyread"></td>
			<td>
				<input type="text" name="APD1" value="<%=rs.getString(131)%>" readonly="true" id="onlyread"/>
			</td>
			<td><input type="text" name="AP12" value="<%=rs.getString(132)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!--Submit Button-->
		<!--<tr bgcolor="#D6D6D6">
			<td></td>
			<td align="center"><input type="submit" name="submit" value="Submit" style="background:#7D9EC0;"></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>-->
	</table>
	<!--************************************************************************************************************************-->
	<hr style="color:#7D9EC0; ">
	<table align="center" width="900">
		<tr bgcolor="#7D9EC0">
			<td width="600">QUALITY</td>
			<td width="100">DIMENSIONS</td>
			<td width="100">JUSTIFICATION</td>
			<td width="100">DIMENSIONS</td>
			<td width="100">COMMENTS</td>
		</tr>
		<!-- QUALITY #1-->
		<tr bgcolor="#D6D6D6">
			<td><b>A)</b>Quality of modules or systems developed</td>
			<td></td>
			<td><input type="text" name="Q1" value="<%=rs.getString(23)%>" readonly="true" id="onlyread"></td>
			<td></td>
			<td><input type="text" name="AQ1" value="<%=rs.getString(133)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- QUALITY #2-->
		<tr>
			<td><b>B)</b>Quality of Test Plans, designs, proposals, documentations, presentations, etc.</td>
			<td></td>
			<td><input type="text" name="Q2"  value="<%=rs.getString(24)%>" readonly="true" id="onlyread"></td>
			<td></td>
			<td><input type="text" name="AQ2" value="<%=rs.getString(134)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- QUALITY #3-->
		<tr bgcolor="#D6D6D6">
			<td><b>C)</b>Ability to define problems, evaluate alternatives & suggest possible solutions	</td>
			<td></td>
			<td><input type="text" name="Q3" value="<%=rs.getString(25)%>" readonly="true" id="onlyread"></td>
			<td></td>
			<td><input type="text" name="AQ3" value="<%=rs.getString(135)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- QUALITY #4-->
		<tr>
			<td><b>D)</b>Ability to deliver structured documents as per standards</td>
			<td></td>
			<td><input type="text" name="Q4" value="<%=rs.getString(26)%>" readonly="true" id="onlyread"></td>
			<td></td>
			<td><input type="text" name="AQ4" value="<%=rs.getString(136)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- QUALITY #5-->
		<tr bgcolor="#D6D6D6">
			<td><b>E)</b>Deliver bug free programs / software	</td>
			<td></td>
			<td><input type="text" name="Q5" value="<%=rs.getString(27)%>" readonly="true" id="onlyread"></td>
			<td></td>
			<td><input type="text" name="AQ5" value="<%=rs.getString(137)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- QUALITY #6-->
		<tr>
			<td><b>F)</b>Develops structured and readable programs</td>
			<td></td>
			<td><input type="text" name="Q6" value="<%=rs.getString(28)%>" readonly="true" id="onlyread"></td>
			<td></td>
			<td><input type="text" name="AQ6" value="<%=rs.getString(138)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- QUALITY #7-->
		<tr bgcolor="#D6D6D6">
			<td><b>G)</b>Adherence to coding standards and applicable procedures</td>
			<td></td>
			<td><input type="text" name="Q7"  value="<%=rs.getString(29)%>" readonly="true" id="onlyread"></td>
			<td></td>
			<td><input type="text" name="AQ7" value="<%=rs.getString(139)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- QUALITY #8-->
		<tr>
			<td><b>H)</b>Adherence to project process as defined in VIMS</td>
			<td></td>
			<td><input type="text" name="Q8" value="<%=rs.getString(30)%>" readonly="true" id="onlyread"></td>
			<td></td>
			<td><input type="text" name="AQ8" value="<%=rs.getString(140)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- QUALITY #9-->
		<tr bgcolor="#D6D6D6">
			<td><b>I)</b>Deviations from Quality processes / procedures	</td>
			<td>
				<input type="text" name="QD1" value="<%=rs.getString(31)%>" readonly="true" id="onlyread">
			</td>
			<td><input type="text" name="Q9" value="<%=rs.getString(32)%>" readonly="true" id="onlyread" ></td>
			<td>
				<input type="text" name="AQD1" value="<%=rs.getString(141)%>" readonly="true" id="onlyread"/>
			</td>
			<td><input type="text" name="AQ9" value="<%=rs.getString(142)%>" readonly="true" id="onlyread"></td>
		</tr>
	</table>
	<!--************************************************************************************************************************-->
	<hr style="color:#7D9EC0; ">
		<table align="center" width="900">
		<tr bgcolor="#7D9EC0">
			<td width="600">JOB KNOWLEDGE</td>
			<td width="100">DIMENSIONS</td>
			<td width="100">JUSTIFICATION</td>
			<td width="100">DIMENSIONS</td>
			<td width="100">COMMENTS</td>
		</tr>
		<!-- JOB KNOWLEDGE #1-->
		<tr bgcolor="#D6D6D6">
			<td><b>A)</b>Knowledge of the application</td>
			<td></td>
			<td><input type="text" name="JK1"  value="<%=rs.getString(33)%>" readonly="true" id="onlyread"></td>
			<td></td>
			<td><input type="text" name="AJK1" value="<%=rs.getString(143)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- JOB KNOWLEDGE #2-->
		<tr>
			<td><b>B)</b>Knowledge of software environment</td>
			<td></td>
			<td><input type="text" name="JK2" value="<%=rs.getString(34)%>" readonly="true" id="onlyread"></td>
			<td></td>
			<td><input type="text" name="AJK2" value="<%=rs.getString(144)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- JOB KNOWLEDGE #3-->
		<tr bgcolor="#D6D6D6">
			<td><b>C)</b>Knowledge of structured methodologies for systems analysis & design</td>
			<td></td>
			<td><input type="text" name="JK3" value="<%=rs.getString(35)%>" readonly="true" id="onlyread"></td>
			<td></td>
			<td><input type="text" name="AJK3" value="<%=rs.getString(145)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- JOB KNOWLEDGE #4-->
		<tr>
			<td><b>D)</b>General awareness of technical developments in the industry</td>
			<td></td>
			<td><input type="text" name="JK4" value="<%=rs.getString(36)%>" readonly="true" id="onlyread"></td>
			<td></td>
			<td><input type="text" name="AJK4" value="<%=rs.getString(146)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- JOB KNOWLEDGE #5-->
		<tr bgcolor="#D6D6D6">
			<td><b>E)</b>Domain / Functional knowledge of the application</td>
			<td></td>
			<td><input type="text" name="JK5" value="<%=rs.getString(37)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AJK5" value="<%=rs.getString(147)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- JOB KNOWLEDGE #6-->
		<tr>
			<td><b>F)</b>Eagerness to acquire necessary technical knowledge, skills, and judgment to accomplish a result or to serve a customer’s needs effectively</td>
			<td></td>
			<td><input type="text" name="JK6" value="<%=rs.getString(38)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AJK6" value="<%=rs.getString(148)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- JOB KNOWLEDGE #7-->
		<tr bgcolor="#D6D6D6">
			<td><b>G)</b>Knowledge on environment software exposed during the assignment</td>
			<td>
				<input type="text" name="JKD1" value="<%=rs.getString(39)%>" readonly="true" id="onlyread">
			</td>
			<td><input type="text" name="JK7" value="<%=rs.getString(40)%>" readonly="true" id="onlyread"></td>
			<td>
				<input type="text" name="AJKD1" value="<%=rs.getString(149)%>" readonly="true" id="onlyread"/> 
			</td>
			<td><input type="text" name="AJK7" value="<%=rs.getString(150)%>" readonly="true" id="onlyread"></td>
		</tr>
	</table>
<!--************************************************************************************************************************-->
	<hr style="color:#7D9EC0; ">
	<table align="center" width="900">
		<tr bgcolor="#7D9EC0">
			<td width="600">JOB RESPONSIBILITIES</td>
			<td width="100">DIMENSIONS</td>
			<td width="100">JUSTIFICATION</td>
			<td width="100">DIMENSIONS</td>
			<td width="100">COMMENTS</td>
		</tr>
		<!-- JOB RESPONSIBILITIES#1-->
		<tr bgcolor="#D6D6D6">
			<td><b>A)</b>Efforts to meet deadlines & commitments</td>
			<td></td>
			<td><input type="text" name="JResp1" value="<%=rs.getString(41)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AJResp1" value="<%=rs.getString(151)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- JOB RESPONSIBILITIES #2-->
		<tr>
			<td><b>B)</b>Ability and attitude to cope with unexpected events</td>
			<td></td>
			<td><input type="text" name="JResp2" value="<%=rs.getString(42)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AJResp2" value="<%=rs.getString(152)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- JOB RESPONSIBILITIES#3-->
		<tr bgcolor="#D6D6D6">
			<td><b>C)</b>Regularity in keeping supervisors / clients informed of progress & problems</td>
			<td></td>
			<td><input type="text" name="JResp3" value="<%=rs.getString(43)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AJResp3" value="<%=rs.getString(153)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- JOB RESPONSIBILITIES #4-->
		<tr>
			<td><b>D)</b>Compliance to process / procedures</td>
			<td></td>
			<td><input type="text" name="JResp4" value="<%=rs.getString(44)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AJResp4" value="<%=rs.getString(154)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- JOB RESPONSIBILITIES #5-->
		<tr bgcolor="#D6D6D6">
			<td><b>E)</b>Ability to plan and organize work</td>
			<td></td>
			<td><input type="text" name="JResp5" value="<%=rs.getString(45)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AJResp5" value="<%=rs.getString(155)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- JOB RESPONSIBILITIES #6-->
		<tr>
			<td><b>F)</b>Learn from previous experiences and implement them in future</td>
			<td></td>
			<td><input type="text" name="JResp6" value="<%=rs.getString(46)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AJResp6" value="<%=rs.getString(156)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- JOB RESPONSIBILITIES #7-->
		<tr  bgcolor="#D6D6D6">
			<td><b>G)</b>Mentoring and coaching for  junior team members</td>
			<td></td>
			<td><input type="text" name="JResp7" value="<%=rs.getString(47)%>" readonly="true"  id="onlyread"></td>
			<td></td>
			<td><input type="text" name="AJResp7" value="<%=rs.getString(157)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- JOB RESPONSIBILITIES #8-->
		<tr>
			<td><b>H)</b>Implement configuration management on source code and documentation</td>
			<td></td>
			<td><input type="text" name="JResp8" value="<%=rs.getString(48)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AJResp8" value="<%=rs.getString(158)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- JOB RESPONSIBILITIES #9-->
		<tr  bgcolor="#D6D6D6">
			<td><b>I)</b>Timely escalation of issues to the superiors</td>
			<td></td>
			<td><input type="text" name="JResp9" value="<%=rs.getString(49)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AJResp9" value="<%=rs.getString(159)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- JOB RESPONSIBILITIES #10-->
		<tr>
			<td><b>J)</b>Monitor team and conduct review meetings</td>
			<td>
				<input type="text" name="JRespD1" value="<%=rs.getString(50)%>" readonly="true" id="onlyread">
			</td>
			<td><input type="text" name="JResp10" value="<%=rs.getString(51)%>" readonly="true"  id="onlyread"></td>
			<td>
				<input type="text" name="AJRespD1" value="<%=rs.getString(160)%>" readonly="true" id="onlyread"/>
 			</td>
			<td><input type="text" name="AJResp10" value="<%=rs.getString(161)%>" readonly="true" id="onlyread"></td>
		</tr>
	</table>
	<!--************************************************************************************************************************-->
	<hr style="color:#7D9EC0; ">
		<table align="center" width="900">
		<tr bgcolor="#7D9EC0">
			<td width="600">PROJECT MANAGEMENT</td>
			<td width="100">DIMENSIONS</td>
			<td width="100">JUSTIFICATION</td>
			<td width="100">DIMENSIONS</td>
			<td width="100">COMMENTS</td>
		</tr>
		<!-- PROJECT MANAGEMENT #1-->
		<tr bgcolor="#D6D6D6">
			<td><b>A)</b> Ability to estimate efforts & resources</td>
			<td></td>
			<td><input type="text" name="PM1" value="<%=rs.getString(52)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="APM1" value="<%=rs.getString(162)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- PROJECT MANAGEMENT  #2-->
		<tr>
			<td><b>B)</b> Ability to recognise priorities & plan project / work accordingly</td>
			<td></td>
			<td><input type="text" name="PM2" value="<%=rs.getString(53)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="APM2" value="<%=rs.getString(163)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- PROJECT MANAGEMENT  #3-->
		<tr  bgcolor="#D6D6D6">
			<td><b>C)</b> Ability to train & guide other members of the project team / users</td>
			<td></td>
			<td><input type="text" name="PM3" value="<%=rs.getString(54)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="APM3" value="<%=rs.getString(164)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- PROJECT MANAGEMENT  #4-->
		<tr>
			<td><b>D)</b> Ability to monitor progress of project & review resource requirements & utilisation</td>
			<td></td>
			<td><input type="text" name="PM4" value="<%=rs.getString(55)%>" readonly="true"  id="onlyread"></td>
			<td></td>
			<td><input type="text" name="APM4" value="<%=rs.getString(165)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- PROJECT MANAGEMENT  #5-->
		<tr  bgcolor="#D6D6D6">
			<td><b>E)</b> Ability to delegate, lead & motivate Module / project teams</td>
			<td></td>
			<td><input type="text" name="PM5" value="<%=rs.getString(56)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="APM5" value="<%=rs.getString(166)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- PROJECT MANAGEMENT  #6-->
		<tr>
			<td><b>F)</b> Adherence to quality process</td>
			<td></td>
			<td><input type="text" name="PM6" value="<%=rs.getString(57)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="APM6" value="<%=rs.getString(167)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- PROJECT MANAGEMENT  #7-->
		<tr bgcolor="#D6D6D6">
			<td><b>G)</b> Co-ordination with other groups</td>
			<td>
				<input type="text" name="PMD1" value="<%=rs.getString(58)%>" readonly="true" id="onlyread">
			</td>
			<td><input type="text" name="PM7" value="<%=rs.getString(59)%>" readonly="true" id="onlyread" ></td>
			<td>
				<input type="text" name="APMD1" value="<%=rs.getString(168)%>" readonly="true" id="onlyread"/>
			</td>
			<td><input type="text" name="APM7" value="<%=rs.getString(169)%>" readonly="true" id="onlyread"></td>
		</tr>
	</table>
	<!--************************************************************************************************************************-->
	<hr style="color:#7D9EC0; ">
		<table align="center" width="900">
		<tr bgcolor="#7D9EC0">
			<td width="600">COMMUNICATION ABILITIES</td>
			<td width="100">DIMENSIONS</td>
			<td width="100">JUSTIFICATION</td>
			<td width="100">DIMENSIONS</td>
			<td width="100">COMMENTS</td>
		</tr>
		<!-- COMMUNICATION ABILITIES #1-->
		<tr bgcolor="#D6D6D6">
			<td><b>A)</b>Ability to communicate information clearly, coherently and fluently</td>
			<td></td>
			<td><input type="text" name="CA1" value="<%=rs.getString(60)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="ACA1" value="<%=rs.getString(170)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- COMMUNICATION ABILITIES  #2-->
		<tr>
			<td><b>B)</b>Clarity and conciseness in written communications</td>
			<td></td>
			<td><input type="text" name="CA2" value="<%=rs.getString(61)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="ACA2" value="<%=rs.getString(171)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- COMMUNICATION ABILITIES  #3-->
		<tr  bgcolor="#D6D6D6">
			<td><b>C)</b>Listening capabilities</td>
			<td></td>
			<td><input type="text" name="CA3" value="<%=rs.getString(62)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="ACA3" value="<%=rs.getString(172)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- COMMUNICATION ABILITIES  #4-->
		<tr>
			<td><b>D)</b>Preparation & contributions in discussions</td>
			<td></td>
			<td><input type="text" name="CA4" value="<%=rs.getString(63)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="ACA4" value="<%=rs.getString(173)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- COMMUNICATION ABILITIES  #5-->
		<tr  bgcolor="#D6D6D6">
			<td><b>E)</b>E) Presentation skills</td>
			<td>
				<input type="text" name="CAD1" value="<%=rs.getString(64)%>" readonly="true" id="onlyread">
			</td>
			<td><input type="text" name="CA5" value="<%=rs.getString(65)%>" readonly="true" id="onlyread" ></td>
			<td>
				<input type="text" name="ACAD1" value="<%=rs.getString(174)%>" readonly="true" id="onlyread"/>
			</td>
			<td><input type="text" name="ACA5" value="<%=rs.getString(175)%>" readonly="true" id="onlyread"></td>
		</tr>
	</table>
	<!--************************************************************************************************************************-->
	<hr style="color:#7D9EC0; ">
	<table align="center" width="900">
		<tr bgcolor="#7D9EC0">
			<td width="600">PROCESS IMPLEMENTATION & IMPROVEMENT</td>
			<td width="100">DIMENSIONS</td>
			<td width="100">JUSTIFICATION</td>
			<td width="100">DIMENSIONS</td>
			<td width="100">COMMENTS</td>
		</tr>
		<!-- PROCESS IMPLEMENTATION & IMPROVEMENT #1-->
		<tr bgcolor="#D6D6D6">
			<td><b>A)</b>Strong Knowledge on VIMS - ValueLabs' Mission, vision statement, Quality policies, etc.</td>
			<td></td>
			<td><input type="text" name="PII1" value="<%=rs.getString(66)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="APII1" value="<%=rs.getString(176)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- PROCESS IMPLEMENTATION & IMPROVEMENT  #2-->
		<tr>
			<td><b>B)</b>Understanding of standard processes followed for Software Engineering and Project Management practices</td>
			<td></td>
			<td><input type="text" name="PII2" value="<%=rs.getString(67)%>" readonly="true" id="onlyread" ></td> 
			<td></td>
			<td><input type="text" name="APII2" value="<%=rs.getString(177)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- PROCESS IMPLEMENTATION & IMPROVEMENT #3-->
		<tr bgcolor="#D6D6D6">
			<td><b>C)</b>Strong Working Knowledge on the documents, templates, guidelines available for the above practices</td>
			<td></td>
			<td><input type="text" name="PII3" value="<%=rs.getString(68)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="APII3" value="<%=rs.getString(178)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- PROCESS IMPLEMENTATION & IMPROVEMENT  #4-->
		<tr>
			<td><b>D)</b>Ability to inherit best practices from VIMS to Client’s processes & vice-versa</td>
			<td></td>
			<td><input type="text" name="PII4" value="<%=rs.getString(69)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="APII4" value="<%=rs.getString(179)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- PROCESS IMPLEMENTATION & IMPROVEMENT #5-->
		<tr bgcolor="#D6D6D6">
			<td><b>E)</b>Understanding and adherence to IT Support, PMG, HR and Admin policies and practices</td>
			<td></td>
			<td><input type="text" name="PII5"  value="<%=rs.getString(70)%>" readonly="true" id="onlyread"></td>
			<td></td>
			<td><input type="text" name="APII5" value="<%=rs.getString(180)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- PROCESS IMPLEMENTATION & IMPROVEMENT #6-->
		<tr>
			<td><b>F)</b>Identify and analyse project metrics, define / refine Quality goals. Implement corrective and preventive actions to refine quality goals / metrics for projects</td>
			<td></td>
			<td><input type="text" name="PII6" readonly="true" value="<%=rs.getString(71)%>" id="onlyread"></td>
			<td></td>
			<td><input type="text" name="APII6" value="<%=rs.getString(181)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- PROCESS IMPLEMENTATION & IMPROVEMENT #7-->
		<tr  bgcolor="#D6D6D6">
			<td><b>G)</b>Identify potential risks in projects, devise proper risk management strategies to either mitigate risks / have appropriate contingencies</td>
			<td></td>
			<td><input type="text" name="PII7" value="<%=rs.getString(72)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="APII7" value="<%=rs.getString(182)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- PROCESS IMPLEMENTATION & IMPROVEMENT  #8-->
		<tr>
			<td><b>H)</b>Participation & performance in Audits as Auditor / Auditee</td>
			<td></td>
			<td><input type="text" name="PII8" value="<%=rs.getString(73)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="APII8" value="<%=rs.getString(183)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- PROCESS IMPLEMENTATION & IMPROVEMENT #9-->
		<tr  bgcolor="#D6D6D6">
			<td><b>I)</b>Keen eye to proactively identify process improvement opportunities</td>
			<td>
			<input type="text" name="PIID1" value="<%=rs.getString(74)%>" readonly="true" id="onlyread">
			</td>
			<td><input type="text" name="PII9"  value="<%=rs.getString(75)%>" readonly="true" id="onlyread"></td>
			<td>
			<input type="text" name="APIID1" value="<%=rs.getString(184)%>" readonly="true" id="onlyread"/>
			</td>
			<td><input type="text" name="APII9" value="<%=rs.getString(185)%>" readonly="true" id="onlyread"></td>
		</tr>
	</table>
	<!--********************************************************************************************************************-->
	<hr style="color:#7D9EC0; ">
	<table align="center" width="900">
		<tr bgcolor="#7D9EC0">
			<td width="600">DOCUMENTATION</td>
			<td width="100">DIMENSIONS</td>
			<td width="100">JUSTIFICATION</td>
			<td width="100">DIMENSIONS</td>
			<td width="100">COMMENTS</td>
		</tr>
	<!-- DOCUMENTATION  #1-->
		<tr>
			<td><b>A)</b>Ability to write structured documents like test plan, test strategies, automation approach, automation frame work.</td>
			<td></td>
			<td><input type="text" name="Docu1" value="<%=rs.getString(76)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="ADocu1" value="<%=rs.getString(186)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!--DOCUMENTATION #2-->
		<tr  bgcolor="#D6D6D6">
			<td><b>B)</b>Preparation of the required documents as per clients requirement (understanding documents, flow diagrams etc</td>
			<td>
			<input type="text" name="DocuD1" value="<%=rs.getString(77)%>" readonly="true" id="onlyread">
			</td>
			<td><input type="text" name="Docu2" value="<%=rs.getString(78)%>" readonly="true" id="onlyread" ></td>
			<td>
			<input type="text" name="ADocuD1" value="<%=rs.getString(187)%>" readonly="true" id="onlyread"/>
			</td>
			<td><input type="text" name="ADocu2" value="<%=rs.getString(188)%>" readonly="true" id="onlyread"></td>
		</tr>
	</table>
	<!--********************************************************************************************************************-->
	<hr style="color:#7D9EC0; ">
	<table align="center" width="900">
		<tr bgcolor="#7D9EC0">
			<td width="600">CLIENT INTERACTION</td>
			<td width="100">DIMENSIONS</td>
			<td width="100">JUSTIFICATION</td>
			<td width="100">DIMENSIONS</td>
			<td width="100">COMMENTS</td>
		</tr>
	<!-- CLIENT INTERACTION  #1-->
		<tr bgcolor="#D6D6D6">
			<td><b>A)</b>Ability to interact with clients (telecons, emails)</td>
			<td></td>
			<td><input type="text" name="CI1" value="<%=rs.getString(79)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="ACI1" value="<%=rs.getString(189)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- CLIENT INTERACTION  #2-->
		<tr>
			<td><b>B)</b>Ability to respond to clients queries / requirements</td>
			<td></td>
			<td><input type="text" name="CI2" value="<%=rs.getString(80)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="ACI2" value="<%=rs.getString(190)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- CLIENT INTERACTION  #3-->
		<tr bgcolor="#D6D6D6">
			<td><b>C)</b>Acceptability by the clients</td>
			<td></td>
			<td><input type="text" name="CI3" value="<%=rs.getString(81)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="ACI3" value="<%=rs.getString(191)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!--CLIENT INTERACTION #2-->
		<tr>
			<td><b>D)</b>No negative feedback from client</td>
			<td>
			<input type="text" name="CID1" value="<%=rs.getString(82)%>" readonly="true" id="onlyread">
			</td>
			<td><input type="text" name="CI4" value="<%=rs.getString(83)%>" readonly="true" id="onlyread" ></td>
			<td>
				<input type="text" name="ACID1"value="<%=rs.getString(192)%>" readonly="true" id="onlyread"/>
			</td>
			<td><input type="text" name="ACI4" value="<%=rs.getString(193)%>" readonly="true" id="onlyread"></td>
		</tr>
	</table>
	<!--********************************************************************************************************************-->
	<hr style="color:#7D9EC0; ">
	<table align="center" width="900">
		<tr bgcolor="#7D9EC0">
			<td width="600">HUMAN RELATIONS</td>
			<td width="100">DIMENSIONS</td>
			<td width="100">JUSTIFICATION</td>
			<td width="100">DIMENSIONS</td>
			<td width="100">COMMENTS</td>
		</tr>
	<!--HUMAN RELATIONS #1-->
		<tr bgcolor="#D6D6D6">
			<td><b>A)</b>Willingness to share experiences and knowledge with colleagues (presentations, seminars etc)</td>
			<td></td>
			<td><input type="text" name="HR1" value="<%=rs.getString(84)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AHR" value="<%=rs.getString(194)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- HUMAN RELATIONS  #2-->
		<tr >
			<td><b>B)</b>Ability to receive feedback and act on it</td>
			<td></td>
			<td><input type="text" name="HR2" value="<%=rs.getString(85)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AHR2" value="<%=rs.getString(195)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- HUMAN RELATIONS  #3-->
		<tr bgcolor="#D6D6D6">
			<td><b>C)</b>Effectiveness as a constructive team member</td>
			<td></td>
			<td><input type="text" name="HR3" value="<%=rs.getString(86)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AHR3" value="<%=rs.getString(196)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- HUMAN RELATIONS  #4-->
		<tr>
			<td><b>D)</b>Interact effectively with people rom varying projects, backgrounds, environments and cultures</td>
			<td></td>
			<td><input type="text" name="HR4" value="<%=rs.getString(87)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AHR4" value="<%=rs.getString(197)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- HUMAN RELATIONS  #5-->
		<tr bgcolor="#D6D6D6">
			<td><b>E)</b>Is being constantly reliable and dependable?</td>
			<td></td>
			<td><input type="text" name="HR5" value="<%=rs.getString(88)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AHR5" value="<%=rs.getString(198)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- HUMAN RELATIONS  #6-->
		<tr>
			<td><b>F)</b>Builds trusting relationships with the team members. Can be counted on to get the job done and done well every time.</td>
			<td></td>
			<td><input type="text" name="HR6" value="<%=rs.getString(89)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AHR6" value="<%=rs.getString(199)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- HUMAN RELATIONS  #7-->
		<tr bgcolor="#D6D6D6">
			<td><b>G)</b>Responding to change with a positive attitude and a willingness to learn new ways to accomplish work activities and objectives</td>
			<td></td>
			<td><input type="text" name="HR7" value="<%=rs.getString(90)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AHR7" value="<%=rs.getString(200)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- HUMAN RELATIONS  #8-->
		<tr>
			<td><b>H)</b>Ability to work and deliver desired results even in challenging situations (tight dead lines</td>
			<td></td>
			<td><input type="text" name="HR8" value="<%=rs.getString(91)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AHR8" value="<%=rs.getString(201)%>" readonly="true" id="onlyread"></td>
		</tr>

		<!--HUMAN RELATIONS #9-->
		<tr  bgcolor="#D6D6D6">
			<td><b>I)</b>Participation / organizing team events</td>
			<td>
			<input type="text" name="HRD1" value="<%=rs.getString(92)%>" readonly="true" id="onlyread">
			</td>
			<td><input type="text" name="HR9" value="<%=rs.getString(93)%>" readonly="true" id="onlyread" ></td>
			<td>
				<input type="text" name="AHRD1" value="<%=rs.getString(202)%>" readonly="true" id="onlyread"/>
			</td>
			<td><input type="text" name="AHR9" value="<%=rs.getString(203)%>" readonly="true" id="onlyread"></td>
		</tr>
	</table>
<!--********************************************************************************************************************-->
	<hr style="color:#7D9EC0; ">
	<table align="center" width="900">
		<tr bgcolor="#7D9EC0">
			<td width="600">ORGANIZATIONAL RESPONSIBILITIES</td>
			<td width="100">DIMENSIONS</td>
			<td width="100">JUSTIFICATION</td>
			<td width="100">DIMENSIONS</td>
			<td width="100">COMMENTS</td>
		</tr>
	<!--ORGANIZATIONAL RESPONSIBILITIES #1-->
		<tr bgcolor="#D6D6D6">
			<td><b>A)</b>Ability to discuss grievances with a sense of responsibility and maturity</td>
			<td></td>
			<td><input type="text" name="OR1" value="<%=rs.getString(94)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AOR1" value="<%=rs.getString(204)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!--ORGANIZATIONAL RESPONSIBILITIES  #2-->
		<tr >
			<td><b>B)</b>Cost consciousness</td>
			<td></td>
			<td><input type="text" name="OR2" value="<%=rs.getString(95)%>" readonly="true" id="onlyread"></td>
			<td></td>
			<td><input type="text" name="AOR2" value="<%=rs.getString(205)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- ORGANIZATIONAL RESPONSIBILITIES  #3-->
		<tr bgcolor="#D6D6D6">
			<td><b>C)</b>Participating in the recruitment process</td>
			<td></td>
			<td><input type="text" name="OR3" value="<%=rs.getString(96)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AOR3" value="<%=rs.getString(206)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- ORGANIZATIONAL RESPONSIBILITIES  #4-->
		<tr>
			<td><b>D)</b>Participation / conduct training programs</td>
			<td></td>
			<td><input type="text" name="OR4" value="<%=rs.getString(97)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AOR4" value="<%=rs.getString(207)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!--ORGANIZATIONAL RESPONSIBILITIES #5-->
		<tr bgcolor="#D6D6D6">
			<td><b>E)</b>Discipline - adherence to organization’s rules & regulations (timings, dress code etc.)</td>
			<td></td>
			<td><input type="text" name="OR5" value="<%=rs.getString(98)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AOR5" value="<%=rs.getString(208)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- ORGANIZATIONAL RESPONSIBILITIES #6-->
		<tr>
			<td><b>F)</b>Ability to discuss grievances with a sense of responsibility & maturity</td>
			<td></td>
			<td><input type="text" name="OR6" value="<%=rs.getString(99)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AOR6" value="<%=rs.getString(209)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- ORGANIZATIONAL RESPONSIBILITIES #7-->
		<tr bgcolor="#D6D6D6">
			<td><b>G)</b>Adherence to organizational procedures</td>
			<td></td>
			<td><input type="text" name="OR7" value="<%=rs.getString(100)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AOR7" value="<%=rs.getString(210)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- ORGANIZATIONAL RESPONSIBILITIES #8-->
		<tr>
			<td><b>H)</b>Contribution in process improvement initiatives</td>
			<td></td>
			<td><input type="text" name="OR8" value="<%=rs.getString(101)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AOR8" value="<%=rs.getString(211)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- ORGANIZATIONAL RESPONSIBILITIES #9-->
		<tr bgcolor="#D6D6D6">
			<td><b>I)</b>Conducting proactive sessions to teams / knowledge sharing</td>
			<td></td>
			<td><input type="text" name="OR9" value="<%=rs.getString(102)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AOR9" value="<%=rs.getString(212)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- ORGANIZATIONAL RESPONSIBILITIES #10-->
		<tr>
			<td><b>J)</b>Participating in organizational events (Annual day etc)</td>
			<td></td>
			<td><input type="text" name="OR10" value="<%=rs.getString(103)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AOR10" value="<%=rs.getString(213)%>" readonly="true" id="onlyread"></td>
		</tr>
		<!-- ORGANIZATIONAL RESPONSIBILITIES #11-->
		<tr bgcolor="#D6D6D6">
			<td><b>K)</b>Following  VIMS Procedures and Standards</td>
			<td></td>
			<td><input type="text" name="OR11" value="<%=rs.getString(104)%>" readonly="true" id="onlyread" ></td>
			<td></td>
			<td><input type="text" name="AOR11" value="<%=rs.getString(214)%>" readonly="true" id="onlyread"></td>
		</tr>


		<!--ORGANIZATIONAL RESPONSIBILITIES #12-->
		<tr>
			<td><b>L)</b>Representing organization external events ( Seminars, presentations, conferences, Sports meets etc)</td>
			<td>
			<input type="text" name="ORD1" value="<%=rs.getString(105)%>" readonly="true" id="onlyread">
 			</td>
			<td><input type="text" name="OR12" value="<%=rs.getString(106)%>" readonly="true" id="onlyread" ></td>
			<td>
				<input type="text" name="AORD1" value="<%=rs.getString(215)%>" readonly="true" id="onlyread"/>
			</td>
			<td><input type="text" name="AOR12" value="<%=rs.getString(216)%>" readonly="true" id="onlyread"></td>
		</tr>
	</table>
	<br>
	<table align="center" border="0" width="900" bordercolor="#FF0000">
		<tr>
			<td align="center" width="430"><b><font color="#7D9EC0" >Average</font></b></td>
			<td width="100"><input type="text" name="Average" size="13" value="<%=rs.getString(107)%>" id="onlyread" readonly="true"></td>
			<td width="100"></td>
			<td width="100"><input type="text" name="AAverage" size="13" value="<%=rs.getString(217)%>" readonly="true" id="onlyread"></td>
			<td width="100"></td>
		</tr>
		<tr>
			<td align="center"><b><font color="#7D9EC0" >Total Score</font></b></td>
			<td><input type="text" name="TotalScore" size="13" value="<%=rs.getString(108)%>" id="onlyread" readonly="true"></td>
			<td></td>
			<td><input type="text" name="ATotalScore" size="13" value="<%=rs.getString(218)%>" readonly="true" id="onlyread"></td>
			<td></td>
		</tr>
		<tr>
			<td align="center"><b><font color="#7D9EC0" >Overall Rating</font></b></td>
			<td><input type="text" name="OverallRating" size="13" value="<%=rs.getString(109)%>" id="onlyread" readonly="true"></td>
			<td></td>
			<td><input type="text" name="AOverallRating" size="13" value="<%=rs.getString(219)%>" readonly="true" id="onlyread"></td>
			<td></td>
		</tr>
		<tr>
			<td align="center"><b><font color="#7D9EC0" >Overall Grade</font></b></td>
			<td><input type="text" name="OverallGrade" size="13" value="<%=rs.getString(110)%>" id="onlyread" readonly="true"></td>
			<td></td>
			<td><input type="text" name="AOverallGrade" size="13" value="<%=rs.getString(220)%>" readonly="true" id="onlyread"></td>
			<td></td>
		</tr>
	</table>
	
	
	
	<br>
	<form action="ReviewerForm.jsp?aPPraiseeId=<%=rs.getString(1)%>" method="post">
	<table align="center">
		<tr>
			<input type="hidden" name="hide_appraiseeid1" value="<%=rs.getString(1)%>"/>
			<td align="center"><input type="submit" name="submit" value="Reviewer Form" style="background-color:#7D9EC0;"/></td>
		</tr>
	</table>
	
	</form>
	<%}// rs while close
	
	%>
	<%
		
			}//try close
			catch(Exception e){
			//////System.out.println("Exception Raised in AppraisalFormOld.jsp---->>>"+e);
			}
			
			/*finally {
			try
			{
				if (con != null) ;
			} catch (SQLException e)
			{
				//////System.out.println("Exception"+e);
			}
		}*/
	%>

	<br>
	<br>
	<table align="center"  width="990"><tr><td>
		<jsp:include page="Footer.jsp" flush="true" />
	</td></tr></table>
		</body>
</html>