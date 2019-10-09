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
		<title>Reviewer Form</title>
		<style type="text/css">
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
		//////System.out.println("ReviewerForm.jsp:: APPRAISEEID IS A --->>"+aPPraiseeId);
		Connection con=null;
		Statement stmt,stmt1=null;
		PreparedStatement pstmt,pstmt1=null;
		ResultSet rs,rs1=null;
		//DataBaseConnection connection= new DataBaseConnection();
		ConnectionUtils connectionUtils=new ConnectionUtils();
		try{
			//con=connection.getDBConnection();
			con=connectionUtils.getDBConnection();
			stmt=con.createStatement();
			rs=stmt.executeQuery("select * from appraisee where aPPraiseeId='"+aPPraiseeId+"'");

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
							<td><div><center><font color="#FF0000" size="2" face="Verdana, Arial, Helvetica, sans-serif"><b>${reviewer_Success}</b></font></center>
					<center><font color="#FF0000" size="2" face="Verdana, Arial, Helvetica, sans-serif"><b>${reviewer_Duplicate}</b></font></center></div></td>
						</tr>
					</table>

	<table align="center">
		<tr>
			<td>
			<center><h2>REVIEWER FORM</h2></center>
			</td>
		</tr>
	</table>
	<form action="ReviewerForm" method="post">
	<table align="center" width="1000" border="0">
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
	<%
		}//while close
	}// try close
	catch(Exception e){
	//////System.out.println("Exception Raised in ReviewerForm.jsp:::---->>>>"+e);
	}
	%>

	<table width="1000" align="center" border="0">
		<tr>
			<td><b>INSTRUCTIONS</b></td>
		</tr>
		<tr><td width="20"></td></tr>
	</table>
	<table width="1000" align="center">
		<tr bgcolor="#D6D6D6">
			<td><p align="justify">Please review sections 1 & 2 of the appraisal form and discuss the appraisal with the appraisee.  Summarise the discussions and give your comments on the appraisee’s performance and potential in this section.  This section is to be shown to the appraisee.</p></td>
		</tr>
	</table>
	<table width="1000" align="center">
		<tr bgcolor="#7D9EC0">
			<td>SUMMARY OF DISCUSSIONS WITH THE APPRAISEE</td>
		</tr>
		<tr>
			<td><textarea rows="2" cols="125" name="discussions_apse"></textarea></td>
		</tr>
		<tr bgcolor="#7D9EC0">
			<td>APPRAISEE’S ATTITUDE TOWARDS WORK AND THE ORGANIZATION</td>
		</tr>
		<tr>
			<td><textarea rows="2" cols="125" name="apse_attitude"></textarea></td>
		</tr>
		<tr bgcolor="#7D9EC0">
			<td>APPRAISEE’S COMPETENCE TO SHOULDER PRESENT RESPONSIBILITIES</td>
		</tr>
		<tr bgcolor="#D6D6D6">
			<td>
				<p>(If you feel the appraisee is not entirely capable of shouldering present responsibilities, mention the reasons and the inputs the appraisee requires to improve).</p>
			</td>
		</tr>
		<tr>
			<td><textarea rows="2" cols="125" name="apse_presentresp"></textarea></td>
		</tr>
		
		<tr bgcolor="#7D9EC0">
			<td>APPRAISEE’S COMPETENCE TO SHOULDER HIGHER RESPONSIBILITIES</td>
		</tr>
		<tr bgcolor="#D6D6D6">
			<td>
				<p>[Please comment on the appraisee’s ability and potential to shoulder higher responsibilities at present and in the future (mention the type of responsibilities and time frames). Also the input the appraisee will require to discharge the higher responsibilities mentioned].</p>
			</td>
		</tr>
		<tr>
			<td><textarea rows="2" cols="125" name="apse_highresp"></textarea></td>
		</tr>
		<tr bgcolor="#7D9EC0">
			<td>ANY OTHER COMMENTS/REMARKS:</td>
		</tr>
		<tr>
			<td><textarea rows="2" cols="125" name="comments_remarks"></textarea></td>
		</tr>
		<tr>
			<td>
				<table>
					<tr>
						<td><textarea rows="3" cols="20" name="ReviewerSign"></textarea></td>
						<td width="380"></td>
						<td><textarea rows="3" cols="20" name="AppraiseeSign"></textarea></td>
					</tr>
					<tr>
						<td><b>Reviewer’s Signature</b></td>
						<td></td>
						<td><b>Appraisee’s Signature</b></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr><td height="10"></td></tr>
		<tr>
			<td>
				<table>
				<tr>
					<td><b>DATE :</b></td><td><input type="text" name="date"></td>
				</tr>
				</table>
			</td>
		</tr>

	</table>
	<table align="center">
		<tr>
			<td align="center"><input type="submit" name="submit" value="Submit" style="background-color:#7D9EC0;"/></td>
			<td><INPUT TYPE="button" onClick="window.print()" value="Print"></td>
		</tr>	
	</table>
</form>
	<br>
	<br>
	<table align="center"  width="990"><tr><td>
		<jsp:include page="Footer.jsp" flush="true" />
</td></tr></table>
<%session.removeAttribute("reviewer_Success");
		session.removeAttribute("reviewer_Duplicate");%>
</body>
</html>