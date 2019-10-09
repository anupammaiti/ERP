<%

 //String username=(String)session.getAttribute("username");
  // String password=(String)session.getAttribute("password");
//String user_name=(String)session.getAttribute("userlog");
   //String un=null;
  // String pa=null;

	//String name=null;
	Connection con=null;
	Connection conn=null;
	try{//open
String userlog=null;
String passlog=null;
String ename=null;
////////System.out.println("name"+name);
userlog=(String)session.getAttribute("userlog");
passlog=(String)session.getAttribute("passlog");
ename=(String)session.getAttribute("ename");
//////System.out.println("** in specific......."+userlog+"........");
///////////////////////
if((userlog!=null) && (passlog!=null))
 {//ifopen
   session.setAttribute("user_name" , userlog);
   session.setAttribute("pwd" , passlog);
    session.setAttribute("ename",ename);
	//~~~~~~~~~~~~~~~~`code to find user is RM or NOT
	int chek=0;
	
	CreateConnection cc=new CreateConnection();
	con=cc.connection1();
	
PreparedStatement pr11=con.prepareStatement("select * from employee where reportingto=?");
pr11.setString(1,ename);
ResultSet rs11=pr11.executeQuery();
while(rs11.next())
{// while open
chek++;
}// while  close
	//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 %>
 	<%
	conn=cc.connection1();
	if(chek!=0)
				{// check if open 
				 
  

	
   
   String str="select * from  leavestatus where status='Open' and toempcode='"+userlog+"'";  
   Statement stmt=conn.createStatement();
   ResultSet rs=stmt.executeQuery(str);
   String fromdate;

   %>
   <%session.removeAttribute("response");%>
      <%session.removeAttribute("response1");%>
	  <%session.removeAttribute("response2");%>
 <%  
	 int c=0;
   while(rs.next())
     {  c++; // while open
	 %>
 <tr onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'" class="tr1">
	   
	   <td>
	  <a href="proratedforLeaveAuthe?Leave Approval Form For Employee&fromdate=<%=rs.getString(7)%>&todate=<%=rs.getString(8)%>&Code112=25548<%=rs.getString(3)%>&6885KVK<%=rs.getString(20)%>&empid=<%=rs.getString(3)%>" id="anchorcolor" title="Click Here To Approval Leave"><%=rs.getString(3)%></a>
	   </td>
	   
	   <td><%=rs.getString(1)%>
	   </td>
	   
	   <td><%=rs.getString(2)%>
	   </td>
	   
	   
	   
	   <td><%=rs.getString(4)%>
	   </td>
	   
	   <td><%=rs.getString(7)%>
	   </td>
	   
	   <td><%=rs.getString(8)%>
	   </td>
	   
	   <td><%=rs.getString(24)%>
	   </td>
	     <td><%if(rs.getString(5)!=null)
		 
		 {%>
		 
		 <%=rs.getString(5)%>
		 
		 <%}%>
	   </td>
	  
	   </tr>
	    
	<%}
	if(c==0)
	{
	out.println("<table width=992 class=tab10 border=0><tr align=center><td><font color=red size=2><i> No Leave requests to be approved</i></font></td></tr>");
	}%>
	
	  </table>

			<%	}
				else
				{
				%>
				
	 
				<%
				String str1="select * from  empabsent where authentication='AB' and  empid='"+userlog+"'";  
   Statement stmt1=conn.createStatement();
   ResultSet rab=stmt1.executeQuery(str1);
				int cab=0;
				while(rab.next())
				{
				cab++;
				
				%>
		 <tr onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'" class="tr1">
	   
	   <td>
	<a id="anchorcolor">  <%=rab.getString(1)%></a>
	   </td>
	   
	   <td><%=rab.getString(2)%>
	   </td>
	   
	   <td ><%=rab.getString(3)%>
	   </td>
	   
	   
	   
	   <td><%if(rab.getString(11)!=null){%><%=rab.getString(9)%><%}%>
	   </td>
	   
	   <td><%if(rab.getString(11)!=null){%><%=rab.getString(8)%><%}%>
	   </td>
	   
	   <td><%if(rab.getString(11)!=null){%><%=rab.getString(10)%><%}%>
	   </td>
	   
	   <td><%if(rab.getString(11)!=null){%><%=rab.getString(11)%><%}%>
	   </td>
	  
	   </tr>
	    
						
		<%}
		%></table>
		<%
		if(cab==0)
				{%>
		 <table width="97%" class="tab10">
		 <tr align="center"><td><font color="#CC3300" size="2">No Absent Days</font></td></tr>
 			</table>
		<%}//ifcab==0
		}//else
%>
 
 <!-- END of BODY for hradmin -->
 
  
 <%
 
  
 }



 else {
   request.setAttribute("errorMessage", "Invalid username or password");  %>
    <%@include file="index.jsp"%>
   <%
   }
 ////////////////////////////////////////////////
 }//try
 catch(SQLException se)
	{
	  se.printStackTrace();
	  
	}
	finally {
//if (rs != null) rs.close();
if (con != null) con.close();
if (conn != null) conn.close();
}
%>
