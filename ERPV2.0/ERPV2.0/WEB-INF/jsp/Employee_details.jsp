<%@ page contentType="text/html; charset=iso-8859-1" language="java"%>
<%@ page import="java.sql.* " errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
<link rel="stylesheet" href="css/erp.css"/>

<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/erpjs.js"></script>


</head>
<body background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table align="center"><tr>
 <td width="800"><img src="images/banner.jpg" width="1000"></td></tr></table>

 <a href="employee_information_form.jsp"><img src="images/back.jpg"></img></a>
<font color="#573801" size="2" face="verdana"><center><strong>Employee Details</strong></center></font>
<table border="1" align="center">
<%
String sid=request.getParameter("empno");
Connection con;
Statement st;
ResultSet rs=null;
%>
<%
try{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"kvk","root","root");
st=con.createStatement();
rs=st.executeQuery("select * from employee where empno like"+sid+"");
while(rs.next()){%>
<tr>	<td>Empno</td><td><%=rs.getString("empno")%></td></tr>
<tr>   <td>name</td><td><%=rs.getString(2)%></td>  </tr>
<tr>    <td>nameihris</td><td><%=rs.getString(3)%></td>  </tr>
<tr>    <td>fathername</td><td><%=rs.getString(4)%></td>  </tr>
<tr>    <td>dob</td><td><%=rs.getString(5)%></td>  </tr>
<tr>    <td>sex</td><td><%=rs.getString(6)%></td>  </tr>
<tr>    <td>joiningdate</td><td><%=rs.getString(7)%></td>  </tr>
<tr>    <td>designation</td><td><%=rs.getString(8)%></td>  </tr>
<tr>    <td>department</td><td><%=rs.getString(9)%></td>  </tr>
<tr>    <td>reportingto</td><td><%=rs.getString(10)%></td>  </tr>
<tr>    <td>joblevel</td><td><%=rs.getString(11)%></td>  </tr>
<tr>    <td>location</td><td><%=rs.getString(12)%></td>  </tr>
<tr>    <td>entrymanner</td><td><%=rs.getString(13)%></td>  </tr>
<tr>    <td>nomination</td><td><%=rs.getString(14)%></td>  </tr>
<tr>    <td>birthplace</td><td><%=rs.getString(15)%></td>  </tr>
<tr>    <td>maritalstatus</td><td><%=rs.getString(16)%></td>  </tr>
<tr>    <td>marriagedate</td><td><%=rs.getString(17)%></td>  </tr>
<tr>    <td>religion</td><td><%=rs.getString(18)%></td>  </tr>
<tr>    <td>pannumber</td><td><%=rs.getString(19)%></td>  </tr>
<tr>    <td>passportnumber</td><td><%=rs.getString(20)%></td>  </tr>
<tr>    <td>issuedateandplace</td><td><%=rs.getString(21)%></td>  </tr>
<tr>    <td>validity</td><td><%=rs.getString(22)%></td>  </tr>
<tr>    <td>companyname</td><td><%=rs.getString(23)%></td>  </tr>
<tr>    <td>qualification</td><td><%=rs.getString(24)%></td>  </tr>
</table>
<%}%>
<%
}

catch(Exception e)
{
System.out.println(e.getMessage());
}

%>

</body>
</html>
