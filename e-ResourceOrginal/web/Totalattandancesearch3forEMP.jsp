
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
<meta content="text/html;charset=utf-8" http-equiv="Content-Type">
<title>SVS Infomatics</title>
<link rel="shortcut icon" href="./images/11.gif" /> <link rel="icon" href="./images/11.gif" type="image/gif" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 10px;
	margin-right: 0px;
	margin-bottom: 0px;
}
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
 String ename=(String)session.getAttribute("ename");
 if(pwd!=null)
 {
 //~~~~~~~~~~~~~~~~`code to find user is RM or NOT
	int chekrm=0;
	Connection con=null;
	//DBConnection cc=new DBConnection();
	//con=cc.connection1();
	ConnectionUtils connectionUtils=new ConnectionUtils();
	
	
/*PreparedStatement prchekrm=con.prepareStatement("select * from employee where reportingto=?");
prchekrm.setString(1,ename);
ResultSet rschekrm=prchekrm.executeQuery();
while(rschekrm.next())
{
chekrm++;
}*/
 %>
<body ><!--background="background images for website/master70_background.jpg"-->
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
                <td id="session" align="right"><b>Welcome</b>&nbsp; <font color="#000000"><%=ename%></font></td>
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
				
				




				<% session.setAttribute("username",user_name);
							session.setAttribute("password",pwd);
							%>
<table class="tab10" width="98%"> <tr align="center">
   <td align="center" class="head"><h3>Total Attendance Report<br></td>
	</tr></table>

  <%
  String companyname=request.getParameter("company");
  String department=request.getParameter("department");
  String qualification=request.getParameter("qualification");
  String empname=request.getParameter("empname");
  String empno=request.getParameter("empno");
  String fromdate=request.getParameter("fromdate");
   String todate=request.getParameter("todate");
   //////System.out.println(empname);
      //////System.out.println(empno);
	  //////System.out.println(fromdate);
   ////////////////session for pass values to report//////////////////////////
   session.setAttribute("empname" , empname);
   session.setAttribute("empno" , empno);
   session.setAttribute("fromdate" , fromdate);
   session.setAttribute("todate" , todate);
  String query;

   //Connection conn=null;
	//CreateConnection cc=new CreateConnection();
	//conn=cc.connection1();
	
    ResultSet rs;
	PreparedStatement pstmt=null;
	
	 try
		{
			//////System.out.println("Totalattadancesearch3forEMP.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("Totalattadancesearch3forEMP.jsp::ConnectionPool----->>>>After Open --->>>>Test");
	   
  if((empno.equals("")) && (empname!="") )
	{
	////////System.out.println("company"+companyname);
	////////System.out.println("8");
	   query="select * from  employee where (name='"+empname+"') ";
	  // //////System.out.println("company"+companyname);
            pstmt=con.prepareStatement(query);
            rs=pstmt.executeQuery();
    }
	
		else if((empno!="") && (empname.equals("")))
	{
	////////System.out.println("company"+companyname);
	////////System.out.println("10");
	   query="select * from  employee where (empno='"+empno+"')";
	   ////////System.out.println("company"+companyname);
            pstmt=con.prepareStatement(query);
            rs=pstmt.executeQuery();
    }
	else if((empno.equals("")) && (empname.equals("")))
	{
	////////System.out.println("company"+companyname);
	////////System.out.println("10");
	   query="select * from  employee ";
	   ////////System.out.println("company"+companyname);
            pstmt=con.prepareStatement(query);
            rs=pstmt.executeQuery();
    }
	
		
else
  {
    query="select * from  employee where (name='"+empname+"') and (empno='"+empno+"') ";
	            pstmt=con.prepareStatement(query);

                        rs=pstmt.executeQuery();
}

////////System.out.println("company"+companyname);
////////System.out.println("dept"+department);
////////System.out.println("name"+name);
////////System.out.println("empno"+empno);
////////System.out.println("sex"+sex);
////////System.out.println("qualification"+qualification);


  // pstmt.setString(1,request.getParameter("startdate"));
   //pstmt.setString(2,request.getParameter("enddate"));
     // ResultSet rs1=pstmt1.executeQuery();

 %>
  
<table border="0" bordercolor="#D468F7"   align="center" class="tab1" width="98%" >
	
	<tr bgcolor="#A4C6C5">
	  
<td>
	 <font color="#573801">
Emp Code.
</font>
	  </td>
	  
<td>
<font color="#573801">
Employee Name
</font>
</td>



<td>
<font color="#573801">
RM
</font>
</td>
<td>
<font color="#573801">
HOD
</font>
</td>

<td>
<font color="#573801">
Designation
</font>
</td>
<td>
<font color="#573801">
Department
</font>
</td>

<td>
	 <font color="#573801">
Company
</font>
	  </td>
</tr>
	 <%  int c=0;
   while(rs.next())
     {
	 c++;
	 %>
	  
	   <tr   onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'" class="tr1">

	   
	   
		<td width="97">
      <a href="Totalattandance?empno=<%=rs.getString(1)%>" target="_blank"  id="anchorcolor" title="Click Here To View Report"><img src="images/report1.png" align="absmiddle">&nbsp;<%=rs.getString(1)%></a>
</td>

	    
	 <td width="140">
	   
      <%=rs.getString(2)%>
		
	   </td>
	   

	   
	 
	   

	   
	   <td width="140">
	   <%=rs.getString(10)%>
</td>
	   

	   
	   <td width="140">
<%=rs.getString(33)%>
</td>
	   
	 <td>
	   <%=rs.getString(8)%>
	   </td>
	   
<td>
	   <%=rs.getString(9)%>
</td>
	   
	<td>
	   
      <%=rs.getString(23)%>
		
	   </td>  
	   </tr>
	   
	<%} if(c==0)
	{
	out.println("<table class=tab10 width=992><tr align=center><td><font color=red size=4>No Data Found</font></td></tr>");
	}
	%>
	  </table>

    </td>
	<td><input type="hidden" name="empid"></td>
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
<%
}catch(Exception ex)
		{
		//////System.out.println(ex);
		}finally {
			try
			{
				//////System.out.println("Totalattadancesearch3forEMP.jsp::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("Totalattadancesearch3forEMP.jsp::ConnectionPool--After Close--->>>>Test");

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
