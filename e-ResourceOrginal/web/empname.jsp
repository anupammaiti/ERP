<%@page import="java.sql.*"%>
<%@ page import="com.svs.erp.Hr.db.*"%>

<html>
	<head>


		<title>SVS</title>
	</head>

	<body>

		<%
			//Class.forName("com.mysql.jdbc.Driver");
			//Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrerp","root","root");
			Connection conn = null;
			ConnectionUtils connectionUtils = new ConnectionUtils();

			try {
				
				//////System.out.println("empname.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
				conn = connectionUtils.getDBConnection();
				//////System.out.println("empname.jsp::ConnectionPool----->>>>After Open --->>>>Test");
				String str = "select name from employee where empno=?";
				//////System.out.println("Hod name.. is,~~~~~~~~~~,,"+ request.getParameter("q1"));
						

				PreparedStatement pstmt = conn.prepareStatement(str);
				pstmt.setString(1, request.getParameter("q1"));

				ResultSet rs = pstmt.executeQuery();

				int c = 0;
				String name, id;
				int cl, sl, pl, lop;

				while (rs.next()) {
					c++;
					//////System.out.println("EMP NAme.. is,,,,,,,,,"
							+ request.getParameter("q1"));
					//name=rs.getString(1);
					id = rs.getString(1);
					//////System.out.println(".EMP...........Name............" + id);
					out.println(id);
				}
			

			if (c == 0) {
				out.println("<font color=red>Emp. not found</font>");
			}
			
			} catch (Exception e) {
				//////System.out.println("Exception" + e);
			} finally {
				try {
					System.out
							.println("empname.jsp::ConnectionPool--Before Close --->>>>Test");
					if (conn != null)
						connectionUtils.setDBClose();
					System.out
							.println("empname.jsp::ConnectionPool--After Close--->>>>Test");

				} catch (SQLException e) {
					//logger.error("The statement cannot be closed.", e);
					//////System.out.println("Exception" + e);
				}
			}
		%>


	</body>
</html>
