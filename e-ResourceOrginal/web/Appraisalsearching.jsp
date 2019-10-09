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
	<%if((userlog!=null) &&(passlog!=null)){
		session.setAttribute("user_name" , userlog);
   		session.setAttribute("pwd" , passlog);
		session.setAttribute("ename",ename);
		////////System.out.println("---------$$$$$$-------------"+userlog);
		////////System.out.println("---------******-------------"+passlog);
		////////System.out.println("---------######-------------"+ename);
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
  String companyname=request.getParameter("company");
  String department=request.getParameter("department");
  String qualification=request.getParameter("qualification");
  String name=request.getParameter("name");
  String empno=request.getParameter("empno");
  String sex=request.getParameter("sex");
  String query;
////////System.out.println("company"+companyname);
////////System.out.println("dept"+department);
////////System.out.println("name"+name);
////////System.out.println("empno"+empno);
////////System.out.println("sex"+sex);
////////System.out.println("qualification"+qualification);
	Connection conn=null;
	//ConnectionUtils connectionUtils=new ConnectionUtils();
		//DataBaseConnection connection= new DataBaseConnection();
		ConnectionUtils connectionUtils=new ConnectionUtils();
	//con=cc.connection1();
	//conn=connection.getDBConnection();

    ResultSet rs;
	PreparedStatement pstmt=null;
	try{
			//conn=connection.getDBConnection();
			conn=connectionUtils.getDBConnection();
			
/*------Employee Searching -------*/	
 if(name!=null && (empno==null) && (department==null) && (sex==null) && (companyname==null))
	{
	//////System.out.println("************4");
	   query="select * from  employee where name like '"+name+"%'";
	 
            pstmt=conn.prepareStatement(query);
            rs=pstmt.executeQuery();
    }
	
	else if(empno!=null && (name==null)&& (department==null)&& (sex==null) && (companyname==null))
	{
	//////System.out.println("******5");
	   query="select * from  employee where empno='"+empno+"'";
	        pstmt=conn.prepareStatement(query);
            rs=pstmt.executeQuery();
    }
else if((qualification!="") && (empno.equals(""))&& (department.equals("")) && (sex.equals("")) && (companyname.equals(""))&& (name.equals("")))
	{
	//////System.out.println("***********Only Quali");
	   query="select * from  employee where qualification='"+qualification+"'";
	        pstmt=conn.prepareStatement(query);
            rs=pstmt.executeQuery();
    }
   
  else if((qualification!="") && (empno.equals(""))&& (department.equals("")) && (sex!="") && (companyname.equals(""))&& (name.equals("")))
	{
	//////System.out.println("********8qua and sex"+sex+"and"+qualification);
	  query="select * from  employee where (qualification='"+qualification+"') && (sex='"+sex+"')";
	       pstmt=conn.prepareStatement(query);
            rs=pstmt.executeQuery();
    }
	
else if(qualification.equals("") && (empno.equals(""))&& (department.equals("")) && (sex!="") && (companyname.equals(""))&& (name.equals("")))
	{
	//////System.out.println("**********only Gender");
	   query="select * from  employee where sex='"+sex+"'";
	          pstmt=conn.prepareStatement(query);
            rs=pstmt.executeQuery();
    }

	else if((qualification.equals("")) && (department.equals("")) && (sex.equals("")) && (empno.equals("")) && (name.equals("")) && (companyname!=""))
	{
	//////System.out.println("Only company"+companyname);
	   query="select * from  employee where companyname='"+companyname+"'";
	           pstmt=conn.prepareStatement(query);
            rs=pstmt.executeQuery();
    }
	
	else if((qualification!="") && (department.equals("")) && (sex!="") && (empno.equals("")) && (name.equals("")) && (companyname!=""))
	{
	//////System.out.println("*****company,Quali,Gender"+companyname+qualification+sex);
	//////System.out.println("9");
	   query="select * from  employee where (qualification='"+qualification+"') && (companyname='"+companyname+"') && (sex='"+sex+"')";
	        pstmt=conn.prepareStatement(query);
            rs=pstmt.executeQuery();
    }
	
	else if((qualification.equals("")) && (department!="") && (companyname.equals("")) && (empno.equals("")) && (name.equals("")) && (sex.equals("")))
	{
	//////System.out.println("*******DEPT only");
	//////System.out.println("10");
	   query="select * from  employee where department='"+department+"'";
            pstmt=conn.prepareStatement(query);
            rs=pstmt.executeQuery();
    }

	else if((qualification!="") && (department!="") && (companyname!="") && (empno.equals("")) && (name.equals("")) && (sex!=""))
	{
	//////System.out.println("********Q,D,C,S");
	   query="select * from  employee where (department='"+department+"') && (companyname='"+companyname+"') &&(sex='"+sex+"') && (qualification='"+qualification+"')";
            pstmt=conn.prepareStatement(query);
            rs=pstmt.executeQuery();
    }

	else if((qualification!="") && (department!="") && (companyname!="") && (empno.equals("")) && (name.equals("")) && (sex.equals("")))
	{
	//////System.out.println("Q,C,D only");
   query="select * from  employee where (qualification='"+qualification+"') && (department='"+department+"') && (companyname='"+companyname+"')";
	        pstmt=conn.prepareStatement(query);
            rs=pstmt.executeQuery();
    }

	else if((qualification!="") && (department.equals("")) && (companyname!="") && (empno.equals("")) && (name.equals("")) && (sex.equals("")))
	{
	//////System.out.println("Q,C only");
	   query="select * from  employee where (companyname='"+companyname+"') && (qualification='"+qualification+"')";
	            pstmt=conn.prepareStatement(query);
            rs=pstmt.executeQuery();
    }
	
	else if((qualification.equals("")) && (department!="") && (companyname.equals("")) && (empno.equals("")) && (name.equals("")) && (sex!=""))
	{
	//////System.out.println("Dept,Sex");
	  query="select * from  employee where (sex='"+sex+"') && (department='"+department+"')";
	      pstmt=conn.prepareStatement(query);
            rs=pstmt.executeQuery();
    }

	else if((qualification.equals("")) && (department.equals(""))&& (sex!="") && (name.equals("")) && (companyname!="") && (empno.equals("")))
	{
	//////System.out.println("*******company and sex");
	   query="select * from  employee where (companyname='"+companyname+"') && (sex='"+sex+"')";
            pstmt=conn.prepareStatement(query);
            rs=pstmt.executeQuery();
    }
	
	else if((qualification!="") && (department!="")&& (sex.equals("")) && (name.equals("")) && (companyname.equals("")) && (empno.equals("")))
	{
	//////System.out.println("*************Q,D only");
	   query="select * from  employee where (qualification='"+qualification+"') && (department='"+department+"')";
            pstmt=conn.prepareStatement(query);
            rs=pstmt.executeQuery();
    }
			
	else if((qualification.equals("")) && (department!="")&& (sex.equals("")) && (name.equals("")) && (companyname!="") && (empno.equals("")))
	{
	//////System.out.println("***************company,dept only");
	   query="select * from  employee where (companyname='"+companyname+"') && (department='"+department+"')";
            pstmt=conn.prepareStatement(query);
            rs=pstmt.executeQuery();
    }
	else if((qualification.equals("")) && (department!="")&& (sex!="") && (name.equals("")) && (companyname!="") && (empno.equals("")))
	{
	//////System.out.println("***************company,dept only");
	   query="select * from  employee where (companyname='"+companyname+"') && (sex='"+sex+"')&& (department='"+department+"')";
            pstmt=conn.prepareStatement(query);
            rs=pstmt.executeQuery();
    }
	
	else if((qualification.equals("")) && (department.equals(""))&& (sex.equals("")) && (name.equals("")) && (companyname.equals("")) && (empno.equals("")))
	{
	//////System.out.println("company"+companyname);
	//////System.out.println("18");
	   query="select * from  employee ";
	   //////System.out.println("All............"+companyname);
            pstmt=conn.prepareStatement(query);
            rs=pstmt.executeQuery();
    }
	
	
else
  {
    query="select * from  employee where (name='"+name+"') | (qualification='"+qualification+"') | (sex='"+sex+"') | (empno='"+empno+"') | (department='"+department+"') | (companyname='"+companyname+"')";
	            pstmt=conn.prepareStatement(query);
//////System.out.println("else");
out.println("<font color=red size=5>No Data Found</font>");
                        rs=pstmt.executeQuery();
}
 %>
  <br>
<table border="1"   align="center" class="tab10" width="90%" >
	<tr bgcolor="#7CD383">
	<td>
	 <font color="">
<strong>Emp ID</strong>
</font>
	  </td>
<td width="15%" align="center">
<font color=" " >
<strong>Employee Name</strong>
</font>
</td>
<td align="center">
<font color=" " >
<strong>Gender</strong>
</font>
</td>


<td align="center">
<font color=" " >
<strong>Designation</strong>
</font>
</td>
<td align="center">
<font color=" " >
<strong>Department</strong>
</font>
</td>
<td align="center">
<font color=" " >
<strong>Qualification</strong>
</font>
</td>
<td align="center">
<font color=" ">
<strong>RM</strong>
</font>
</td>
<td align="center">
<font color=" ">
<strong>HOD</strong>
</font>
</td>
<td width="200" align="center">
	 <font color="">
<strong>Company Name</strong>
</font>
	  </td>

</tr>
	 <%  int c=0;
   while(rs.next())
     { c++;
	 %>
	  
	   <tr   onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'" class="tr1">

	   
	   
		<td>
      <a href="AppraiseeFormView.jsp?aPPraiseeId=<%=rs.getString(1)%>" id="anchorcolor" title="Click Here To View Appraiser Details">&nbsp;<%=rs.getString(1)%></a>
</td>

	    
		 <td>
     	 <%=rs.getString(2)%>
	 	 </td>
	   	<td>
	      <font  >
	  		<%=rs.getString(6)%>
	  	 </font>
	   </td>
	   <td>
	      <font size="2">
<%=rs.getString(8)%>
</font>
</td>
	 <td>
	    <font  >
	   <%=rs.getString(9)%>
	   </font>
	   </td>
	   
<td>   <font  >
	   <%=rs.getString(24)%>
	   </font>
</td>
<td>
	      <font  >
      <%=rs.getString(10)%>
		</font>
	   </td>
	   
	   <td>
	      <font  >
      <%=rs.getString(33)%>
		</font>
	   </td>
	   <td>
	   <font  >
      <%=rs.getString(23)%>
		</font>
	   </td>  
	
	   </tr>
	   
	<%}
	if(c==0)
	{
	out.println("<table align='center'><tr><td><font color=red size=5>No Data Found</font><tr></table>");
	//out.println("<font color=red size=5>No Data Found");
	}%>
	  </table>

    </td>
	<td><input type="hidden" name="empid"/></td>
  </tr>
  <tr>
    <td align="center">

	<table width="1012" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><!--<img src="images/page_rounded_bottom.jpg" width="1012" height="16" />--></td>
      </tr>
    </table></td>
  </tr>
</table>
<br>
	<br>
	<table align="center"  width="990"><tr><td>
		<jsp:include page="Footer.jsp" flush="true" />
	</td></tr></table>

	
	</body>
<%
}catch(Exception ex)
		{
		 //////System.out.println(ex);
		}/*finally {
			try
			{
				//////System.out.println("search3.jsp::ConnectionPool--Before Close --->>>>Test");
				if (conn != null) connectionUtils.setDBClose();
				//////System.out.println("search3.jsp::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}*/
		
 }
 else
 {
	 response.sendRedirect("index_a.jsp");
 }
 %>
</html>
