<%@page import="java.sql.*"%>
<%@page import="com.svs.erp.Hr.db.*"%>

<html>
<head>



</head>

<body>

<%


try{

//Class.forName("com.mysql.jdbc.Driver");
//Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrerp","root","root");
Connection conn=null;
ConnectionUtils connectionUtils=new ConnectionUtils();
////////System.out.println("cljsp::ConnectionPool----->>>>Before Open --->>>>Test");
conn=connectionUtils.getDBConnection();
////////System.out.println("cl.jsp::ConnectionPool----->>>>After Open --->>>>Test");

String str="select CLOPEN from leaveopen where empid=?";
//Statement pstmt=conn.createStatement();
PreparedStatement pstmt=conn.prepareStatement(str);
pstmt.setString(1,request.getParameter("q"));
ResultSet rs=pstmt.executeQuery();

int c=0;
double cl=0.0;
while(rs.next())
{c++;
//if(rs.next()==true)

 cl=rs.getDouble(1);

  
  }
  if(c!=0)
  {
   out.println(cl);
  ////////System.out.println(cl);
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
				ConnectionUtils connectionUtils=new ConnectionUtils();
				Connection conn=connectionUtils.getDBConnection();
	//			//////System.out.println("cl.jsp::ConnectionPool--Before Close --->>>>Test");
				if (conn != null) connectionUtils.setDBClose();
		//		//////System.out.println("cl.jsp::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}
%>


</body>
</html>
