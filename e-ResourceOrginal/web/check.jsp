<%@page import="java.sql.*"%>
<%@page import="com.svs.hrerp.db.*"%>

<html>
<head></head>

<body>

<%
try{
boolean found;

//Class.forName("com.mysql.jdbc.Driver");
//Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrerp","root","root");
Connection conn=null;
ConnectionUtils connectionUtils=new ConnectionUtils();
////////System.out.println("check.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
conn=connectionUtils.getDBConnection();
////////System.out.println("check.jsp::ConnectionPool----->>>>After Open --->>>>Test");

String str="select empno from employee where empno=?";
//Statement pstmt=conn.createStatement();
PreparedStatement pstmt=conn.prepareStatement(str);
pstmt.setString(1,request.getParameter("q"));
ResultSet rs=pstmt.executeQuery();
String s=request.getParameter("q");
boolean flag=false;
while(rs.next())
{
String eno=rs.getString(1);
if(eno.equals(s));
{
flag=true;
}
}
 %>

 <%
 if(flag)
 {
 out.println("EmployeeIDexist");
//String  s1="Employee ID exist";
// out.println("<input type=text value="+s1+"name=res id=res>");
 %>
 
 <%}
 else
 {
  out.println("Creating new ID");
  }
 %>
 
 <%
 }
 catch(Exception e)
 {
 //////System.out.println("Exception raised"+e);
 }finally {
			try
			{	
				ConnectionUtils connectionUtils=new ConnectionUtils();
				Connection conn=connectionUtils.getDBConnection();
	//			//////System.out.println("check.jsp::ConnectionPool--Before Close --->>>>Test");
				if (conn != null) connectionUtils.setDBClose();
		//		//////System.out.println("check.jsp::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}
 
 %>





</body>
</html>
