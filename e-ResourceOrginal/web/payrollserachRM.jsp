<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page  import="java.util.ArrayList" %>
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
</style></head>
<%
String user_name=(String)session.getAttribute("userlog");
String pwd=(String)session.getAttribute("passlog");
String comp=(String)session.getAttribute("comp");
 //////System.out.println("User in PaySlip"+user_name );
 if((user_name!=null)&&(pwd!=null))
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
					


<table class="tab10" width="98%"> <tr align="center">
   <td align="center" class="head"><h3>Payroll Report<br><br></td>
	</tr></table>
  <%
  String rm=request.getParameter("rm");
String hod=request.getParameter("hod");
  String fromdate=request.getParameter("fromdate");
   String todate=request.getParameter("todate");
   //////System.out.println("1........."+rm);
   //////System.out.println(hod);
   //////System.out.println(todate);
	//////System.out.println(fromdate);
   ////////////////session for pass values to report//////////////////////////
   //session.setAttribute("empname" , empname);
  // //////System.out.println(empname);
	session.setAttribute("rm" ,rm);
   session.setAttribute("fromdate" , fromdate);
   session.setAttribute("todate" , todate);
  session.setAttribute("hod" ,hod);
  Connection conn=null;
     //DBConnection cc=new DBConnection();
    ConnectionUtils connectionUtils=new ConnectionUtils();

     
  try{
  String query;
			//////System.out.println("payrollsearchRM.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
			conn=connectionUtils.getDBConnection();
			//////System.out.println("payrollsearchRM.jsp::ConnectionPool----->>>>After Open --->>>>Test");


	//conn=cc.connection1();
	
    ResultSet rs=null;
	PreparedStatement pstmt=null;
	
	   
  if((rm!=null) && (rm!="") && (hod.equals("")) )
	{
	////////System.out.println("company"+companyname);
	//////System.out.println("8");
	   query="select distinct empno,name,department,designation,reportingto,manager  from  employee where (reportingto='"+rm+"') and status='Active' order by empno";
	  // //////System.out.println("company"+companyname);
            pstmt=conn.prepareStatement(query);
			//pstmt.setString(1,fromdate);
		//	pstmt.setString(2,todate);
            rs=pstmt.executeQuery();
    }
	
 else if((hod!=null) && (hod!="") && (rm.equals("")) )
	{
	//////System.out.println("HOD"+hod);
	////////System.out.println("8");
	   query="select distinct empno,name,department,designation,reportingto,manager  from  employee where (manager='"+hod+"') and status='Active' order by empno";
	  // //////System.out.println("company"+companyname);
            pstmt=conn.prepareStatement(query);
		//	pstmt.setString(1,fromdate);
			//pstmt.setString(2,todate);
            rs=pstmt.executeQuery();
    }
		else if((rm.equals(""))&&(hod.equals("")))
		{
		query="select distinct empno,name,department,designation,reportingto,manager  from  employee where status='Active' order by empno";
	  //////System.out.println("for testing"+fromdate+"......."+todate);
	   //////System.out.println("for testing"+rm+"......."+hod);
            pstmt=conn.prepareStatement(query);
			//pstmt.setString(1,fromdate);
			//pstmt.setString(2,todate);
            rs=pstmt.executeQuery();
				
		}
		else
		{
		out.println("<font color=red size=4>No Data Found</font>");
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
  
<table border="0" bordercolor="#D468F7"   align="center" class="tab10" width="98%" >
	<tr bgcolor="#A4C6C5">
	  
<td>
	 <font color="#573801">
Emp ID.
</font>
	  </td>
	  
<td>
<font color="#573801">
Employee Name
</font>
</td>



<td>
<font color="#573801">
Department
</font>
</td>


<td>
<font color="#573801">
Designation
</font>
</td>
<td>
<font color="#573801">
Reporting To
</font>
</td>
<td>
<font color="#573801">
HOD
</font>
</td>

</tr>
	 <%  ArrayList<String> empno1 = new ArrayList<String>();
	 int c=0;
   while(rs.next())
     { 
	 c++;
        empno1.add(rs.getString(1));
		session.setAttribute("empno1",empno1);
		%>
	   
	   <tr   onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'" class="tr1">

	   
	   
		<td>
      <a href="payrollhr1" target="_blank"  id="anchorcolor" title="Click Here To View Details"><img src="images/report1.png" align="absmiddle" title="Click here for payslip display">&nbsp;<%=rs.getString(1)%></a>
</td>

	    
	 <td>
	   
    <a href="payroll_emp.jsp?id=<%=rs.getString(1)%>" id="anchorcolor"><%=rs.getString(2)%></a>
		
	   </td>
	   

	   
	 
	   

	   
	   <td>
	   <%=rs.getString(3)%>
</td>
	   

	   
	   <td>
	   <%if(rs.getString(4)!=null){%>
<%=rs.getString(4)%><%}%>
</td>
	   
	 <td>
	 <%if(rs.getString(5)!=null){%>
	   <%=rs.getString(5)%><%}%>
	   </td>
	   
<td>
<%if(rs.getString(6)!=null){%>
	   <%=rs.getString(6)%><%}%>
</td>
	   
	
	   </tr>
	   
	<%}
	if(c==0)
	{
	out.println("<table width=992 class=tab10><tr align=center><td><font color=red size=4>No Data Found</font></td></tr><table>");
	}
	}
	catch(Exception e)
	{
	//////System.out.println("Please Provide Input Otherwise It Should Not Work");
	}
	finally {
			try
			{
				//////System.out.println("payrollsearchRM.jsp::ConnectionPool--Before Close --->>>>Test");
				if (conn != null) connectionUtils.setDBClose();
				//////System.out.println("payrollsearchRM.jsp::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}
	%>
	  </table>

    </td>
	<td><input type="hidden" name="empid"/></td>
  </tr>
  <tr>
    <td align="center">
		<table width="98%" class="tab10"><tr id="svstr"><td align="right"><br><br>&copy;Powered by <a href="http://www.svsinfomatics.com" target="_blank" id="svs"><font>SVSINFOMATICS</font></a></td></tr></table>

	<table width="1012" border="0" cellspacing="0" cellpadding="0">
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
