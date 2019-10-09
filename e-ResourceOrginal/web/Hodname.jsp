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


//Class.forName("com.mysql.jdbc.Driver");
//Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrerp","root","root");
try
{

//////System.out.println("Hodname.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
conn=connectionUtils.getDBConnection();
//////System.out.println("Hodname.jsp::ConnectionPool----->>>>After Open --->>>>Test");


String str="select name from employee where empno=?";
//////System.out.println("Hod name.. is,~~~~~~~~~~,,"+request.getParameter("q1"));


PreparedStatement pstmt=conn.prepareStatement(str);
pstmt.setString(1,request.getParameter("q1"));




ResultSet rs=pstmt.executeQuery();

int c=0;
String name,id;
int cl,sl,pl,lop;

while(rs.next())
{
c++;
//////System.out.println("Hod name.. is,,,,,,,,,"+request.getParameter("q1"));
  //name=rs.getString(1);
  id=rs.getString(1);
  //////System.out.println(".HOD...........Name............"+id);
  out.println(id);
}
if(c==0)
{
 out.println("Hod not found");
}
}
catch(Exception e)
{
e.printStackTrace();
}finally {
			try
			{
				//////System.out.println("Hodname.jsp::ConnectionPool--Before Close --->>>>Test");
			
				if (conn != null)connectionUtils.setDBClose();
				
				//////System.out.println("Hodname.jsp::ConnectionPool--After Close--->>>>Test");
			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}
%>


</body>
</html>
