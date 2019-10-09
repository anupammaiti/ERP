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
<%
String user_name=(String)session.getAttribute("userlog");
String pwd=(String)session.getAttribute("passlog");
String comp=(String)session.getAttribute("comp");
 if(pwd!=null)
 {
 %>
<body>
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
					


					
			
  <%
  ResultSet rs=null;
  Connection conn=null;
  ConnectionUtils connectionUtils=new ConnectionUtils();
  try
		{
			//////System.out.println("search.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
			conn=connectionUtils.getDBConnection();
			//////System.out.println("search.jsp::ConnectionPool----->>>>After Open --->>>>Test");
  //Class.forName("com.mysql.jdbc.Driver");
   //Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrerp","root","root");
   String query="select * from  employee where  joiningdate between ? and ?";
   PreparedStatement pstmt=conn.prepareStatement(query);
  // pstmt.setString(1,request.getParameter("gender"));
  // pstmt.setString(2,request.getParameter("qualification"));
   pstmt.setString(1,request.getParameter("startdate"));
   pstmt.setString(2,request.getParameter("enddate"));
   String sdate=request.getParameter("startdate");
   String edate=request.getParameter("enddate");
 //  if(sdate.equals("") && edate.equals(""))
 //  {
  // out.println("<font color=red size=5>No Data Found</font>");
  // }
   
   rs=pstmt.executeQuery();
   //int rs1=pstmt1.executeQuery();
 
  
    %>
   
<table border="0" bordercolor="#D468F7"   align="center" class="tab1" width="98%" >
	<tr>
	  
<td width="190">
<font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
<b>Emp ID.</b>
</font>
	  </td>
	  
<td width="15%">
<font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
<b>Employee Name</b>
</font>
</td>


<td class="dob1">
<font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
<b>Date of Birth</b>
</font>
</td>

<td>
<font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
<b>Date Of Join</b>
</font>
</td>

<td>
<font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
<b>Designation</b>
</font>
</td>
<td>
<font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
<b>Department</b>
</font>
</td>
<td>
<font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
<b>RM</b>
</font>
</td>
 <td>
	 <font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
<b>HOD</b>
</font>
	  </td>
	  
	  <td width="500">
<font color="#573801" face="Verdana, Arial, Helvetica, sans-serif" size="2">
<b>Company</b>
</font>
</td>

</tr>
	 <%  int c=0;
   while(rs.next())
     { 
	 c++;
	  //////System.out.println("1"+rs.getString(1));
	 %>
	  
	   <tr   onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'" class="tr1">
	   
	   
		<td >
      <a href="Employeeinformation?empid=<%=rs.getString(1)%>" target="_blank" id="anchorcolor" title="Click Here To View Details"><img src="images/report1.png" align="absmiddle">&nbsp;<%=rs.getString(1)%></a>
</td>

	    
	 <td>
	   
      <%=rs.getString(2)%>
		
	   </td>
	 	   
<td>
	<%=rs.getString(5)%>
</td>
	   
	  
	   <td>
<%=rs.getString(7)%>
</td>
	   
	 <td>
	   <%=rs.getString(8)%>
	   </td>
	   
<td>
	   <%=rs.getString(9)%>
</td>
	   <td>
	   
      <%=rs.getString(10)%>
		
	   </td>
	   
	   <td>
	   
      <%=rs.getString(33)%>
		
	   </td>
	   
	   <td>
	   
      <%=rs.getString(23)%>
		
	   </td>
	    
	  
	   </tr>
	   
	<%}

	if(c==0)
	{
	out.println("<font color=red size=5>No Data Found");
	}%>
	  </table>

    </td>
	<td><input type="hidden" name="empid"/></td>
  </tr>
  <tr>
    <td align="center">
		<table width="98%"><br><br><tr id="svstr"><td align="right">&copy;Powered by <a href="http://www.svsinfomatics.com" target="_blank" id="svs"><font>SVSINFOMATICS</font></a></td></tr></table>
<table width="1012" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/page_rounded_bottom.jpg" width="1012" height="16" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
<%
}catch(Exception ex)
		{
			 //////System.out.println(ex);
		}finally {
			try
			{
				//////System.out.println("search.jsp::ConnectionPool--Before Close --->>>>Test");
				if (conn != null) connectionUtils.setDBClose();
				//////System.out.println("search.jsp::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}
		
 }
 else
 {
	 response.sendRedirect("index");
 }
 %>
</html>
