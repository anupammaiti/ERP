<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<%@ page import="java.sql.PreparedStatement"  %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="com.svs.ensign.resort.helper.C_ResortHelper" %>
<%!
public int nullIntconv(String str)
{   
    int conv=0;
    if(str==null)
    {
        str="0";
    }
    else if((str.trim()).equals("null"))
    {
        str="0";
    }
    else if(str.equals(""))
    {
        str="0";
    }
    try{
        conv=Integer.parseInt(str);
    }
    catch(Exception e)
    {
    }
    return conv;
}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resort</title>
<script type="text/javascript" src="js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="js/resort_js.js"></script>
<link rel="stylesheet" href="css/resort_styles.css"/>
<%

    Connection conn = null;
	C_ResortHelper resort_helper=new C_ResortHelper();
	conn=resort_helper.connection1();

    ResultSet rsPagination = null;
    ResultSet rsRowCnt = null;
    
    PreparedStatement psPagination=null;
    PreparedStatement psRowCnt=null;
    
    int iShowRows=10;  // Number of records show on per page
    int iTotalSearchRecords=10;  // Number of pages index shown
    
    int iTotalRows=nullIntconv(request.getParameter("iTotalRows"));
    int iTotalPages=nullIntconv(request.getParameter("iTotalPages"));
    int iPageNo=nullIntconv(request.getParameter("iPageNo"));
    int cPageNo=nullIntconv(request.getParameter("cPageNo"));
    
    int iStartResultNo=0;
    int iEndResultNo=0;
    
    if(iPageNo==0)
    {
        iPageNo=0;
    }
    else{
        iPageNo=Math.abs((iPageNo-1)*iShowRows);
    }
    

    
    String sqlPagination="SELECT SQL_CALC_FOUND_ROWS * FROM tl_guest_user order by guest_id limit "+iPageNo+","+iShowRows+"";

    psPagination=conn.prepareStatement(sqlPagination);
    rsPagination=psPagination.executeQuery();
    
    //// this will count total number of rows
     String sqlRowCnt="SELECT FOUND_ROWS() as cnt";
     psRowCnt=conn.prepareStatement(sqlRowCnt);
     rsRowCnt=psRowCnt.executeQuery();
     
     if(rsRowCnt.next())
      {
         iTotalRows=rsRowCnt.getInt("cnt");
      }%>
</head>
<body>
	<div class="project_title">
		<img src="images/svs_logo.gif" alt="logo" id="logo"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span id="proj_title">RESORT MANAGEMENT</span>
	</div>

	<div class="main_screen" align="center">
		<div class="menu" align="left">	
			<jsp:include page="admin_header.jsp" flush="true"></jsp:include>
		</div>
		<div class="content" align="center">
		<fieldset>
			<legend>Guest Details</legend>
			
			<form name="frm">
			<input type="hidden" name="iPageNo" value="<%=iPageNo%>">
			<input type="hidden" name="cPageNo" value="<%=cPageNo%>">
			<input type="hidden" name="iShowRows" value="<%=iShowRows%>">
			   
		<table class="tab1"  align="center" border="1" id="page_nation_table">
					<tr class="column_header">
					<td>
						S No
					</td>
					<td>
						Guest Name
					</td>
					<td>
						Villa Type
					</td>
					<td>
						Mobile No
					</td>
					<td>
						Status
					</td>
					<td>
						 Manager
					</td>
					<td>
						Tele Caller
					</td>
					<td>
						Agent 
					</td>
					<td>
						Driver
					</td>
				</tr>
		<tr align="center">
			</tr>
			<%int count=0;
			while(rsPagination.next()){
			count++;
			  ////System.out.println(count+".............count");
			%>
				  
				   <tr onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'" class="tr1">
				   	<td align="center">
			      		<a href="rep_GuestDetails.res?id=<%=rsPagination.getString(1)%>" title="Click for Report" target="_blank"><%=count%></a>
					</td>

				    
				 <td  align="left">
				   
			      <%=rsPagination.getString("guest_name")%><%=rsPagination.getString("guest_last_name") %>
					
				   </td>
					<td>
					<%=rsPagination.getString("villa_type")%>
					</td>	   
			 		<td>	
			 			<%=rsPagination.getString("mobileno")%>
			 		</td>
			 		<td>
			 			<%=rsPagination.getString("status")%>
			 		</td>
			 		<td>
			 			<%=rsPagination.getString("designation")%>
			 		</td>
			 		<td>
			 			<%=rsPagination.getString("refered1")%>
			 		</td>
			 		<td>
			 			<%=rsPagination.getString("agent_name")%>
			 		</td>
			 		<td>
			 			<%=rsPagination.getString("driver_name")%>
			 		</td>
				   </tr>
				   
				<% 
			 }
			 %>
			<%
			  //// calculate next record start record  and end record 
			        try{
			            if(iTotalRows<(iPageNo+iShowRows))
			            {
			                iEndResultNo=iTotalRows;
			            }
			            else
			            {
			                iEndResultNo=(iPageNo+iShowRows);
			            }
			           
			            iStartResultNo=(iPageNo+1);
			            iTotalPages=((int)(Math.ceil((double)iTotalRows/iShowRows)));
			        
			        }
			        catch(Exception e)
			        {
			            e.printStackTrace();
			        }

			%>
			</table>
			<table align="right">
			<tr>
			<td class="t1"></td><td class="t1"></td>
			<td class="t1"  >
			<div>
			<%
			        //// index of pages 
			        
			        int i=0;
			        int cPage=0;
			        if(iTotalRows!=0)
			        {
			        cPage=((int)(Math.ceil((double)iEndResultNo/(iTotalSearchRecords*iShowRows))));
			        
			        int prePageNo=(cPage*iTotalSearchRecords)-((iTotalSearchRecords-1)+iTotalSearchRecords);
			        if((cPage*iTotalSearchRecords)-(iTotalSearchRecords)>0)
			        {
			         %>
			          <a href="view_guest_users.res?iPageNo=<%=prePageNo%>&cPageNo=<%=prePageNo%>"> << Previous </a>
			         <%
			        }
			        
			        for(i=((cPage*iTotalSearchRecords)-(iTotalSearchRecords-1));i<=(cPage*iTotalSearchRecords);i++)
			        {
			          if(i==((iPageNo/iShowRows)+1))
			          {
			          %>
			           <a href="view_guest_users.res?iPageNo=<%=i%>" style="cursor:pointer;color: red"> Previous <b><%=i%></b></a>
			          <%
			          }
			          else if(i<=iTotalPages)
			          {
			          %>
			           <a href="view_guest_users.res?iPageNo=<%=i%>" class="text"><%=i%></a>
			          <% 
			          }
			        }
			        if(iTotalPages>iTotalSearchRecords && i<iTotalPages)
			        {
			         %>
			         <a href="view_guest_users.res?iPageNo=<%=i%>&cPageNo=<%=i%>" class="text"> >> Next</a> 
			         <%
			        }
			        }
			      %>
			<b>Rows <%=iStartResultNo%>-<%=iEndResultNo%></b>
			</div>
			</td>
			<td></td><td></td><td></td>
			</tr>

			</table>
			</form>
			<br/>
			<b>Note:</b>List of guest how many are alloted and how many are not.
		</fieldset>
		
			
		
		</div>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>
	
	
	
</body>
</html>
<%
    try{
         if(psPagination!=null){
             psPagination.close();
         }
         if(rsPagination!=null){
             rsPagination.close();
         }
         
         if(psRowCnt!=null){
             psRowCnt.close();
         }
         if(rsRowCnt!=null){
             rsRowCnt.close();
         }
         
         if(conn!=null){
          conn.close();
         }
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
%>