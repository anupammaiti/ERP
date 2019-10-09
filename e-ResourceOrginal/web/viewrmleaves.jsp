<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@page import="com.svs.erp.Hr.db.*"%>
<link href="CalendarControl.css" rel="stylesheet" type="text/css">
<script src="CalendarControl.js" language="javascript"></script>

<link href="styles.css" rel="stylesheet" type="text/css" />
<%
String userlog=null;
userlog=(String)session.getAttribute("userlog");
Connection con=null;
Statement st;
PreparedStatement pr;
ResultSet rs;
ConnectionUtils connectionUtils=new ConnectionUtils();


try
{
int count=0;
//////System.out.println("viewrmleaves.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("viewrmleaves.jsp::ConnectionPool----->>>>After Open --->>>>Test");
//Class.forName("com.mysql.jdbc.Driver");
//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"hrerp","root","root");	
%>
<table border="0" bordercolor="#D468F7"   align="center"  width="98%">
				
				<tr align="center">
  				 <td align="center"  colspan="7" id="ablist"><h4><font color="#000066">List of Absent Days </font></h4></td>
				</tr>
				<tr>
	  			<td><strong>
	   			<font color="#000066">
	   Emp ID
	   </font>
	   </strong>
	   </td>
	   <td>
	   <strong>
	   <font color="#000066">
	   Emp Name
	   </font>
	   </strong>
	   </td>
	     <td><strong>
	   <font color="#000066">
	   Date of Absent
	   </font></strong>
	   </td>
	    <td><strong>
	   <font color="#000066">
	   Designation
	   </font></strong>
	   </td>
	     <td><strong>
	   <font color="#000066">
	   Department
	   </font></strong>
	   </td>
	     <td><strong>
	   <font color="#000066">
	   RM
	   </font></strong>
	   </td>
	     <td><strong>
	   <font color="#000066">
	   HOD
	   </font></strong>
	   </td>
		</tr>
				<%
				String str1="select * from  empabsent where authentication='AB' and  empid='"+userlog+"'";  
   Statement stmt1=con.createStatement();
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
	   
	   
	   
	   <td><%=rab.getString(9)%>
	   </td>
	   
	   <td><%=rab.getString(8)%>
	   </td>
	   
	   <td><%=rab.getString(10)%>
	   </td>
	   
	   <td><%=rab.getString(11)%>
	   </td>
	  
	   </tr>
	    
						
		<%}
		%></table>
		<%
		if(cab==0)
				{%>
		 <table width="97%" >
		 <tr align="center"><td><font color="#CC3300" size="2">No Absent Days</font></td></tr>
 			</table>
		<%}//ifcab==0
	
}
catch(Exception e)
{
e.printStackTrace();
}
finally {
			try
			{
				//////System.out.println("viewrmleaves.jsp::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("viewrmleaves.jsp::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}

%>
