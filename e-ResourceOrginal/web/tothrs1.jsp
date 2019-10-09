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
String totq=request.getParameter("q");
		String at[]=totq.split(",");
		//////System.out.println("Helper Starting:"+totq);
	String q1=null;
		String q2=null;
		//////System.out.println("tothrs1.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
			conn=connectionUtils.getDBConnection();
			//////System.out.println("tothrs1.jsp::ConnectionPool----->>>>After Open --->>>>Test");

//Class.forName("com.mysql.jdbc.Driver");
//Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrerp","root","root");


			
		////////System.out.println(at);
		q1=at[0].trim();
		q2=at[1].trim();
		
		////////System.out.println("first"+q1+"...........second"+q2);
		PreparedStatement pstmt=conn.prepareStatement("select TIMEDIFF(?,?) from dual");
		pstmt.setString(1,q1);
		pstmt.setString(2,q2);
		ResultSet rs=pstmt.executeQuery();
	
		while(rs.next()){
		%>
<input type="hidden"  size="10" id='tothrs1'  value="<%out.println(rs.getString(1));%>" /> 
<%  //out.println(rs.getString(1));
}
}
catch(Exception e)
{
//////System.out.println("Please Give Correct Time........");
}finally {
			try
			{
				//////System.out.println("tothrs1.jsp::ConnectionPool--Before Close --->>>>Test");
				if (conn != null) connectionUtils.setDBClose();
				//////System.out.println("tothrs1.jsp::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}

%>


</body>
</html>
