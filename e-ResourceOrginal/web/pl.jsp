<%@page import="java.sql.*"%>
<%@page import="com.svs.erp.Hr.db.*"%>
<html>
<head>



</head>

<body>

<%

Connection conn=null;
ConnectionUtils connectionUtils=new ConnectionUtils();

try{
			//////System.out.println("pl.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
			conn=connectionUtils.getDBConnection();
			//////System.out.println("pl.jsp::ConnectionPool----->>>>After Open --->>>>Test");	
//Class.forName("com.mysql.jdbc.Driver");
//Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrerp","root","root");
String str="select PLOPEN from leaveopen where empid=?";
//Statement pstmt=conn.createStatement();
PreparedStatement pstmt=conn.prepareStatement(str);
pstmt.setString(1,request.getParameter("q"));
ResultSet rs=pstmt.executeQuery();

int c=0;
double pl=0.0;
while(rs.next())
{c++;
//if(rs.next()==true)

 pl=rs.getDouble(1);

  
  }
  if(c!=0)
  {
   out.println(pl);
  //////System.out.println(pl);
  }
  else
  {
  out.println("0.0");
  }
  }
  catch(Exception e)
  {
  //////System.out.println("Error..........."+e);
 // //////System.out.println("123");
}finally {
			try
			{
				//////System.out.println("pl.jsp::ConnectionPool--Before Close --->>>>Test");
				if (conn != null) connectionUtils.setDBClose();
				//////System.out.println("pl.jsp::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}
%>


</body>
</html>