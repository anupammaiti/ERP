
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
		<title>Appraisal Form</title>
		<style type="text/css">
		body{
		#background-image:url(images/step1.gif);}
		#welcome{
		padding:0 150 0 0;
		font:Arial, Helvetica, sans-serif;
		}
		
		
		</style>
		<link rel="stylesheet" href="MenuBarStyle.css" type="text/css"/>

	</head>
	
	<body>
	
	<%
	String userlog=null;
	String passlog=null;
	String ename=null;
	%>
	<%userlog=(String)session.getAttribute("userlog");%>
	<%passlog=(String)session.getAttribute("passlog");%>
	<%ename=(String)session.getAttribute("ename");
	if((userlog!=null) &&(passlog!=null)){
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
					
					<%
						Connection con=null;
						Statement stmt=null;
						PreparedStatement pstmt=null;
						ResultSet rs=null;
						//DataBaseConnection connection= new DataBaseConnection();
						ConnectionUtils connectionUtils=new ConnectionUtils();

						try{
						
						con=connectionUtils.getDBConnection();
						stmt=con.createStatement();
						//rs=stmt.executeQuery("select * from employee where empno="+userlog);
						pstmt=con.prepareStatement("select * from appraisee where aPPraiserName=?");
						pstmt.setString(1,ename);
					//	//////System.out.println("AppraiseeFormList.jsp:::--------->>>"+ename);
						rs=pstmt.executeQuery();
					//	//////System.out.println("Appraisee details show in AppraiseeFormList.jsp");
						
					%>
					<div><center><font color="#FF0000" size="3" face="Verdana, Arial, Helvetica, sans-serif"><b>${success}</b></font></center>
					<!--<center><font color="#FF0000" size="3" face="Verdana, Arial, Helvetica, sans-serif"><b>${appraiser_Success}</b></font></center>-->
					<center><font color="#FF0000" size="3" face="Verdana, Arial, Helvetica, sans-serif"><b>${appraiser_Duplicate}</b></font></center>
					</div>
					<div>   
					<br>
					<table width="900" align="center" border="5" bordercolor="#7D9EC0" cellpadding="0" cellspacing="0">
						<tr bgcolor="#FF9999">
							<td><font color="#000000"><b>Appraisee Name</b></font></td>
							<td><font color="#000000"><b>Appraisee Id</b></font></td>
							<td><font color="#000000"><b>Group/Project</b></font></td>
							<td><font color="#000000"><b>Appraiser Name</b></font></td>
							<td><font color="#000000"><b>Reviewer Name</b></font></td>
						</tr>
						
						<tr>
						<%
						 int c=0;
						while(rs.next()){
						c++;
						%>
							<td><%=rs.getString(2)%></td>
							<td><a href="AppraiserFormOld.jsp?aPPraiseeId=<%=rs.getString(1)%>" title="Click Here"><%=rs.getString(1)%></a></td>
							<td><%=rs.getString(3)%></td>
							<td><%=rs.getString(7)%></td>
							<td><%=rs.getString(9)%></td>
							
						</tr>
						<%
					}
					if(c==0){
					out.println("<table align='center'><tr><td><font color=red size=5>No Appraisal Data Found</font><tr></table>");
					
						}
					}catch(Exception e){
						//////System.out.println("Exception Raised in AppraiseeFormList.jsp"+e);
						}
					%>

					</table>
										</div>
&nbsp;
<%
session.removeAttribute("success");
//session.removeAttribute("appraiser_Success");
session.removeAttribute("appraiser_Duplicate");
%>
<br>
	<br>
	<table align="center"  width="990"><tr><td>
		<jsp:include page="Footer.jsp" flush="true" />
	</td></tr></table>
	<%}else{
		response.sendRedirect("index");
		}%>
	
		</body>
</html>