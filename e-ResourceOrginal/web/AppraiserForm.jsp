
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
		<title>Appriser Form</title>
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
	<%if((userlog!=null) &&(passlog!=null)){%>
	<%
		//////System.out.println("user"+userlog+"pass"+passlog+"employ name"+ename);
	%>

	<%
	String hide_appraiseeid=request.getParameter("hide_appraiseeid");		
		//////System.out.println("AppraiserForm.jsp::hide_appraiseeid:::----->>"+hide_appraiseeid);
	
	
	//String aPPraiseeId=request.getParameter("aPPraiseeId");
	////////System.out.println("AppraiserFrom.jsp:::FORMOLD------------>>>>>>"+aPPraiseeId);
	Connection con=null;
	Statement stmt=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	//DataBaseConnection connection= new DataBaseConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();
	////////System.out.println("AppraiserForm.jsp:::Test----------->>1");
	try{
			//con=connection.getDBConnection();
			con=connectionUtils.getDBConnection();
			stmt=con.createStatement();
			rs=stmt.executeQuery("select * from appraisee where aPPraiseeId='"+hide_appraiseeid+"'");

		
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
					<TR>
					<td><div><center><font color="#FF0000" size="2" face="Verdana, Arial, Helvetica, sans-serif"><b>${appraiser_Success}</b></font></center>
					<center><font color="#FF0000" size="2" face="Verdana, Arial, Helvetica, sans-serif"><b>${appraiser_Duplicate}</b></font></center></div></td>
					</TR>
					</table>

	<table align="center">
		<tr>
			<td>
			<center><h2>(SECTION-II) APPRAISER FORM</h2></center>
			</td>
		</tr>
	</table>
	<form action="Appraiser2" method="post">
	<%while(rs.next()){%>
	<table align="center" width="900" border="0">
	
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
		<%
			}//while Close
				}//try Close
				catch(Exception e){
				//////System.out.println("Exception Raised------->>>"+e);
				}
		%>
	</table>
		<br>
	<table align="center" border="0" width="900">
		<tr>
			<td><u>SIGNIFICANT ACHIEVEMENTS</u></td>
		</tr>
		<tr><td height="10"></td></tr>
		<tr bgcolor="#7D9EC0">
			<td>Outline some significant achievements of the appraisee during the assignment.</td>
		</tr>
		<tr>
			<td><textarea rows="2" cols="120" name="saatext"></textarea></td>
		</tr>
		<tr bgcolor="#7D9EC0">
			<td>Outline some significant failures, if any.</td>
		</tr>
		<tr>
			<td><textarea rows="2" cols="120" name="ossftext"></textarea></td>
		</tr>
		<!-------------------------------------------------------->
		<tr>
			<td><u>STRENGTHS/AREAS WHICH NEED IMPROVEMENT</u></td>
		</tr>
		<tr><td height="10"></td></tr>
		<tr bgcolor="#7D9EC0">
			<td>Specify the strengths of the appraisee (observed during assessment period)</td>
		</tr>
		<tr>
			<td><textarea rows="2" cols="120" name="appraiseeStrengths"></textarea></td>
		</tr>
		<tr bgcolor="#7D9EC0">
			<TD>Specify the areas which need improvement for current responsibilities:</TD>
		</tr>
		<tr>
			<td><textarea rows="2" cols="120" name="currentResponsibilites"></textarea></td>
		</tr>
		<tr bgcolor="#7D9EC0">
			<TD>To shoulder additional responsibilities:</TD>
		</tr>
		<tr>
			<td><textarea rows="3" cols="120" name="additionalResponsibilites"></textarea></td>
		</tr>
		<!-------------------------------------------------------->
		<tr>
			<td><u>INDIVIDUAL LEARNING PLAN</u></td>
		</tr>
		<tr>
			<td><textarea rows="2" cols="120" name="learningPlan"></textarea></td>
		</tr>
		<tr bgcolor="#7D9EC0">
			<td>Please specify individual training requirements for the year.</td>
		</tr>
		<tr>
			<td>
				<table width="800">
					<tr bgcolor="#D6D6D6">
						<td width="400">SELF</td>
						<td width="400">APPRAISER</td>
					</tr>
					<tr>
						<td><textarea rows="4" cols="50" name="selftext"></textarea></td>

						<td><textarea rows="4" cols="50" name="appraiser"></textarea></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr bgcolor="#7D9EC0">
			<td>This is the Individual Learning Plan (ILP) for the period ______________</td>
		</tr>
		<tr>
			<td><textarea rows="3" cols="120" name="ipl"></textarea></td>
		</tr>
		<tr><td height="10"></td></tr>
		<tr>
			<td>
				<table>
					<tr>
						
						<td><textarea rows="3" cols="20" name="AppraiseeSign"></textarea></td>
						<td width="380"></td>
						<td><textarea rows="3" cols="20" name="AppraiserSign"></textarea></td>
					</tr>
					<tr>
						
						<td><b>Appraisee’s Signature</b></td>
						<td></td>
						<td><b>Appraiser’s name & Signature</b></td>
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
		<tr><td height="10"></td></tr>
		<tr bgcolor="#7D9EC0">
			<td>COMMENTS OF THE APPRAISEE</td>
		</tr>
		<tr bgcolor="#D6D6D6">
			<td>I have read this documents and its contents have been discussed with me. My comments are:</td>
		</tr>
		<tr bgcolor="#D6D6D6">
			<td>I agree with review ratings and accept the comments raised and work on it to improve on the areas.</td>
		</tr>
		<tr>
			<td>
				<table>
					<tr>
						<td><textarea rows="3" cols="20" name="AppraiseeSign"></textarea></td>
						<td width="380"></td>
						<td><textarea rows="3" cols="20" name="AppraiserSign"></textarea></td>
					</tr>
					<tr>
						<td><b>Appraisee’s Signature</b></td>
						<td></td>
						<td><b>Appraiser’s Signature</b></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr><td height="10"></td></tr>
		<tr>
			<td>
				<table>
				<tr>
					<td><b>DATE :</b></td><td><input type="text" name="date2"></td>
				</tr>
				</table>
			</td>
		</tr>
	</table>
	<table align="center">
		<tr>
			<td align="center"><input type="submit" name="submit" value="Submit" style="background-color:#7D9EC0;"></td>
			<!--<td><INPUT TYPE="button" onClick="window.print()" value="Print"></td>-->
		</tr>
	</table>
	</form>
	<br>
	<br>
	<table align="center"  width="990"><tr><td>
		<jsp:include page="Footer.jsp" flush="true" />
	</td></tr></table>
	<%session.removeAttribute("appraiser_Success");
		session.removeAttribute("appraiser_Duplicate");%>
		<%}else{
			response.sendRedirect("index");
		}%>
	</body>
</html>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
