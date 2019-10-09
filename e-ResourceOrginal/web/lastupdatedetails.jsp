<%@page import="java.sql.*"%>
<%@ page import="com.svs.erp.Hr.db.*"%>

<html>
<head>


<title>SVS</title>
</head>

<body>

<%

Connection conn=null;
ConnectionUtils connectionUtils=new ConnectionUtils();

try{

//Class.forName("com.mysql.jdbc.Driver");
//Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrerp","root","root");

//////System.out.println("lastupdatedetails.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
conn=connectionUtils.getDBConnection();
//////System.out.println("lastupdatedetails.jsp::ConnectionPool----->>>>After Open --->>>>Test");

String str="select date from empinout";
//Statement pstmt=conn.createStatement();
PreparedStatement pstmt=conn.prepareStatement(str);
//pstmt.setString(1,request.getParameter("q"));
ResultSet rs=pstmt.executeQuery();

boolean s=rs.last();
if(s==true)
{
  out.println("<font color=red>Employee Details Uploaded Until </font> "+rs.getString(1));
  }
  else
  {
  out.println("<font color=red>No Records Found </font>");
  }
  }
  catch(Exception e)
  {
  //////System.out.println("Error"+e);
 // //////System.out.println("123");
}finally {
			try
			{
				//////System.out.println("lastupdatedetails.jsp::ConnectionPool--Before Close --->>>>Test");
				if (conn != null) connectionUtils.setDBClose();
				//////System.out.println("lastupdatedetails.jsp::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}
%>


</body>
</html>
