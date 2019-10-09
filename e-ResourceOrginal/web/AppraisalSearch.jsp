
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
		
		<script type="text/javascript" src="Js/AppraisalHideBoxes.js"></script>
		<script type="text/javascript" src="Js/AppraisalVallidation.js"></script>
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
	<%String comp=(String)session.getAttribute("comp"); %>
	<%if((userlog!=null) &&(passlog!=null)){
		session.setAttribute("user_name" , userlog);
   		session.setAttribute("pwd" , passlog);
		session.setAttribute("ename",ename);
	//	//////System.out.println("---------$$$$$$-------------"+userlog);
	//	//////System.out.println("---------******-------------"+passlog);
	//	//////System.out.println("---------######-------------"+ename);
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
			
			<table width="1004" border="0" cellspacing="0" cellpadding="0"
						align="center" bordercolor="#CCCCCC" rules="cols">
						<tr>
							<td width="1004" align="center">
								<img src="images/banner_img.gif" width="1004" height="10" />
							</td>
						</tr>
						<tr>
							<td>
							<jsp:include page="eresourcemenu.jsp" flush="true"></jsp:include>
							</td>
						</tr>
					</table>
					<table align="center">
					
						<form action="Appraisalsearching.jsp" name="hide" method="post" >
						<tr>
							<td>
								<font color="#000099"><h3>Search For Employee</h3></font>
							</td>
						</tr>
					</table>
					<table align="center" cellpadding="0" cellspacing="0" border="0">
						<tr>
							<td>
								<font><b>Name</b></font>
								<input type="text" name="name" onFocus="return hide2();" onkeypress="return alpha(event)">
							</td>
							<td width="2"></td>
							<td>
								<font><b>Emp ID</b></font>
							
								 <input type="text" name="empno" onFocus="return hide1();" onkeypress="return alphanumeric(event)">
							</td>
							<td width="2"></td>
							<td>
								<font><b>Gender</b></font>
							
								<select type="text" name="sex">
	  							<option></option>
								<option value="Male">Male</option>
								<option value="Female">FeMale</option>
								</select>

							</td>
						</tr>
						<tr height="10"></tr>
						<tr>
							<td><font><b>Qualification</b></font>
							

	
	
	
	<select type="text" name="qualification" id="qualification1">
				
				</select></font>
				
								
								
							</td>
							<td></td>
							<td>
								<font><b>Company</b></font>
							
	
					<select type="text" name="company" id="cplist">
								
								</select>
								

							
							</td>
							
							<td></td>
							<td>
							<font><b>Department</b></font>
							
							 <select type="text" name="department" id="deptlist">
											<option></option>
							
							  
							</select>
								
							</td>
						</tr>
					</table>
					<br/>
					<table align="center"><tr><td><input type="image" src="images/submit_btn.png" /></td></tr></table>
					
					
					<br>
	<br>
	<table align="center" width="990"><tr><td>
		<jsp:include page="Footer.jsp" flush="true" />
	</td></tr></table>
	</form>
	</body>
	<%}
 else
 {
	 response.sendRedirect("index");
 }%>

</html>
