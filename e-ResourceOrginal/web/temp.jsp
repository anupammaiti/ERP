<%@ page import="org.apache.poi.hssf.usermodel.HSSFSheet"%>
<%@ page import="org.apache.poi.hssf.usermodel.HSSFWorkbook"%>
<%@ page import="org.apache.poi.hssf.usermodel.HSSFCell"%>
<%@ page import="org.apache.poi.hssf.usermodel.HSSFRow"%>
<%@ page import="java.io.*" %>
<%@ page  language="java" import="java.sql.*" errorPage="" %>

<%@page import="com.svs.erp.Hr.db.*"%>
<%
Connection con=null;
ConnectionUtils connectionUtils=new ConnectionUtils();

try{
String query="select e.empno,e.name,min(l.bcl)as bcl,min(l.bsl)as bsl,min(l.bpl)as bpl from employee e LEFT JOIN leaveapplications l  on e.empno=l.empid  group by e.empid order by e.empno";

	//DBConnection cc=new DBConnection();
	//con=cc.connection1();
			//////System.out.println("temp.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("temp.jsp::ConnectionPool----->>>>After Open --->>>>Test");
	
PreparedStatement prchekrm=con.prepareStatement(query);
//prchekrm.setString(1,ename);
ResultSet rs11=prchekrm.executeQuery();%>
<%

HSSFWorkbook wb = new HSSFWorkbook();
HSSFSheet sheet = wb.createSheet("new sheet");
int c=0;
while(rs11.next())
{ c++;
HSSFRow row = sheet.createRow((short)c);
HSSFCell cell = row.createCell((short)0);
cell.setCellValue(1);
row.createCell((short)1).setCellValue(1.2);
row.createCell((short)2).setCellValue("amkit Kumar ");
row.createCell((short)3).setCellValue(true);
}
FileOutputStream fileOut = new FileOutputStream("c:\\ss.xls");
wb.write(fileOut);
fileOut.close(); 
}catch ( Exception ex ){ 
} finally {
			try
			{
				//////System.out.println("temp.jsp::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("temp.jsp::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}
%>