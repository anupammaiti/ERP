<%@page import="java.sql.*"%>
<%@page import="com.svs.erp.Hr.db.*"%>
<html>
<head>


<title>SVS</title>
</head>

<body>

<%
Connection conn=null;
ConnectionUtils connectionUtils=new ConnectionUtils();


try
		{
			//////System.out.println("leavedetails.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
			conn=connectionUtils.getDBConnection();
			//////System.out.println("leavedetails.jsp::ConnectionPool----->>>>After Open --->>>>Test");
//Class.forName("com.mysql.jdbc.Driver");
//Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrerp","root","root");
String str="select empid,first,last,tothrs,leavetype,odtime from empinout1 where empid=? and date=?";


PreparedStatement pstmt=conn.prepareStatement(str);
pstmt.setString(1,request.getParameter("r"));
pstmt.setString(2,request.getParameter("q"));
//pstmt.setString(3,request.getParameter("q"));

//////System.out.println(".........."+request.getParameter("r")+"......."+request.getParameter("q")+"...........");

ResultSet rs=pstmt.executeQuery();

int remain=0,grandleaves=0;
/* rs1.afterLast();
			   while(rs1.previous())//last record
			   {
grandleaves=rs1.getInt(1);
remain=rs1.getInt(2);
break;
}*/
//rs1.close();
String name,id;
int cl,sl,pl,lop;
int c=0;
out.println("<html><table border=1 align=center ><tr><td>EMP ID.</td><td>In Time</td><td>Out Time</td><td>Tot Hrs</td><td>Leave Type</td><td>Time</td></tr>");
while(rs.next())
{
//////System.out.println(".........value is,,,,,,,,,"+request.getParameter("q"));
  //name=rs.getString(1);
  id=rs.getString(1);
  //////System.out.println("..."+id);
  //remain=rs.getInt(11);
  //cl=rs.getInt(2);
 // sl=rs.getInt(3);
 // pl=rs.getInt(4);
 // lop=rs.getInt(5);
  //grandleaves=rs.getInt(6);
  c++;
  out.println("<tr><td>"+id+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td>");
}
if(c==0)
{
out.println("<tr><td colspan=6 align=center><font color=red> No Data Found </font></td>");
out.println("</tr></table></html>");
}
out.println("</tr></table></html>");
}catch(Exception ex)

{

out.println("Exception"+ex);

}finally {
			try
			{
				//////System.out.println("leavedetails.jsp::ConnectionPool--Before Close --->>>>Test");
				if (conn != null) connectionUtils.setDBClose();
				//////System.out.println("leavedetails.jsp::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}
%>


</body>
</html>
