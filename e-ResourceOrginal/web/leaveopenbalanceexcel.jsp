<%@ page  language="java" import="java.sql.*" errorPage="" %>

<%@page import="com.svs.erp.Hr.db.*"%>
<%@ page contentType="application/vnd.ms-excel" %>
<html>
<head>
<title>Inserting data in Excel Sheet Using JSP</title>
</head>
<body>

<%
//response.setHeader("Content-type","application/xls");
//response.setHeader("Content-disposition","inline; filename=nombre.csv");
//response.setHeader("Pragma", "no-cache");  
Connection con=null;
ConnectionUtils connectionUtils=new ConnectionUtils();

try{
String query="select e.empno,e.name,min(l.bcl)as bcl,min(l.bsl)as bsl,min(l.bpl)as bpl from employee e LEFT JOIN leaveapplications l  on e.empno=l.empid  group by e.empid order by e.empno";

	//DBConnection cc=new DBConnection();
	//con=cc.connection1();
	//////System.out.println("leaveopenbalanceexcel.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
	con=connectionUtils.getDBConnection();
	//////System.out.println("leaveopenbalanceexcel.jsp::ConnectionPool----->>>>After Open --->>>>Test");
	
PreparedStatement prchekrm=con.prepareStatement(query);
//prchekrm.setString(1,ename);
ResultSet rs11=prchekrm.executeQuery();

%>
<table>
  <tr><th colspan="4"><b>KVK Details</b></th></tr>
 <tr>
  <th>Name</th>
  <th>Designation </th>
  <th>Contact Number</th>
  <th>Email Id</th>
  <th>Email Id</th>
  </tr>
  <%
  while(rs11.next())
  {%>
  <tr>
  <td><%rs11.getString(1);%></td>
  <td><%rs11.getString(2);%></td>
  <td><%rs11.getString(3);%></td>
  <td><%rs11.getString(4);%></td>
   <td><%rs11.getString(5);%></td>
  </tr>
  <%
  }
  }
  catch(Exception e)
  {
  //////System.out.println(e);
  }finally {
			try
			{
				//////System.out.println("leaveopenbalanceexcel.jsp::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("leaveopenbalanceexcel.jsp::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}
  
  %>
  </table>
</body>
</html>
<%
/*
 HSSFWorkbook wb = new HSSFWorkbook();
 HSSFSheet sheet = wb.createSheet("new sheet");
 int c=0;
 while(rs11.next())
{
c++;
 HSSFRow row = sheet.createRow((short)c);
 HSSFCell cell = row.createCell((short)c);
 cell.setCellValue(rs11.getString(1));
 row.createCell((short)1).setCellValue(rs11.getString(2));
 row.createCell((short)2).setCellValue(rs11.getString(3));
 row.createCell((short)3).setCellValue(rs11.getString(4));
  row.createCell((short)3).setCellValue(rs11.getString(5));
  //////System.out.println(",,,,,,,"+rs11.getString(1)+",,,,,,,"+c);
  }
  FileOutputStream fileOut = new FileOutputStream
("c:\\excel\\createCell.xls");
  wb.write(fileOut);
  fileOut.close(); 
  }catch ( Exception ex ){ 
  } 
*/
 
%>





