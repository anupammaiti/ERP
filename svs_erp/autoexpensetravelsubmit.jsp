<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>

<body background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="804" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/banner.jpg" width="800"></td>
  </tr>
  
</table>
  <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td background="images/after_main.jpg" height="41" align="center"><strong><font color="#573801" size="3" face="verdana">Welcome To Finance Department</font>      <font size="3" face="verdana">
      <!--<img src="images/after_main.jpg">-->
    </font></strong>    	</td>
  </tr>
</table>
<h4 align="center"><font color="#573801" face="verdana" size="3">Auto Expense Travel Form</font></h4>
<%
 Class.forName("com.mysql.jdbc.Driver");
 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
 String str="insert into travel_expenses values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
 PreparedStatement pstmt=conn.prepareStatement(str);
 pstmt.setString(1,request.getParameter("date"));
  pstmt.setString(2,request.getParameter("employeename"));
  pstmt.setString(3,request.getParameter("completedby"));
  pstmt.setString(4,request.getParameter("location"));
  pstmt.setString(5,request.getParameter("auditedby"));
  pstmt.setString(6,request.getParameter("address"));
  pstmt.setString(7,request.getParameter("purposeoftrip"));
   pstmt.setString(8,request.getParameter("city"));
   pstmt.setString(9,request.getParameter("approvedby")); 
   pstmt.setString(10,request.getParameter("state"));
	pstmt.setString(11,request.getParameter("zip"));
	pstmt.setString(12,request.getParameter("phone"));
	pstmt.setString(13,request.getParameter("date1"));
	pstmt.setString(14,request.getParameter("travelfrom")); 
	pstmt.setString(15,request.getParameter("totalmileage"));
	pstmt.setString(16,request.getParameter("rate"));
	float mileage1=Float.parseFloat(request.getParameter("totalmileage"));
		   		   float rate1=Float.parseFloat(request.getParameter("rate"));
                 float amount1=mileage1*rate1;
	pstmt.setFloat(17,amount1);
	pstmt.setString(18,request.getParameter("dept"));
	pstmt.setString(19,request.getParameter("day"));

	pstmt.executeUpdate();

%>


<table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
<form action="specific.jsp">
 <tr>
  <td>
   <table width="800" align="center" bordercolor="#F0B269" bgcolor="#FADFC3">
   <tr>
   <td width="366" align="right">
   <font color="#573801" face="verdana" size="2"><strong>Date:</strong></font>
    </td>
	<td width="422">
	  <font color="#573801" face="verdana" size="2">
	  <%out.println(request.getParameter("date"));%>
	  </font>	</td>
	  <td width="366" align="right">
   <font color="#573801" face="verdana" size="2"><strong>Day:</strong></font>
    </td>
	  <td width="422">
	  <font color="#573801" face="verdana" size="2">
	  <%out.println(request.getParameter("day"));%>
	  </font>	</td>
	</tr>
   </table>
  </td>
   </tr>
 <tr>
  <td>
   <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
    <tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Employee Name</font>
	   </strong></td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("employeename"));%>
	   </font>	 </td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Completed By</font>
	   </strong></td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("completedby"));%>
	   </font>	 </td>
	</tr>
	<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   Location
	   </font>
	   </strong></td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("location"));%>
	   </font>	 </td>
	 
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   Audited By
	   </font>
	   </strong></td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("auditedby"));%>
	   </font>	 </td>
	</tr>
	<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   Address
	   </font>
	   </strong></td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("address"));%>
	   </font>	 </td>
	 
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   Purpose of Trip
	   </font>
	   </strong></td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("purposeoftrip"));%>
	   </font>	 </td>
	</tr>
	<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   City
	   </font>
	   </strong></td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("city"));%>
	   </font>	 </td>
	 
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   Approved By
	   </font>
	   </strong></td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("approvedby"));%>
	   </font>	 </td>
	</tr>
	<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   State
	   </font>
	   </strong></td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("state"));%>
	   </font>	 </td>
	 
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   Zip
	   </font>
	   </strong></td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("zip"));%>
	   </font>	 </td>
	</tr>
	<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   Phone
	   </font>
	   </strong></td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("phone"));%>
	   </font>	 </td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   Dept
	   </font>
	   </strong></td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("dept"));%>
	   </font>	 </td>
	 
	</tr>
   </table>
  </td>
  </tr>
  <tr>
   <td>
    <table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
	 <tr>
	  <td width="78">
	    <strong><font color="#573801" face="verdana" size="2">Date</font>
	    </strong></td>
	  <td width="107">
	    <strong><font color="#573801" face="verdana" size="2">Travel From</font>
	    </strong></td>
	  <td width="132">
	    <strong><font color="#573801" face="verdana" size="2">Odometer Start</font>
        </strong></td>
	   <td width="120">
	     <strong><font color="#573801" face="verdana" size="2">Odometer End</font>
	     </strong></td>
	   <td width="120">
	     <strong><font color="#573801" face="verdana" size="2">Total Mileage</font>
	     </strong></td>
	   <td width="82">
	     <strong><font color="#573801" face="verdana" size="2">Rate/Mile</font>
	     </strong></td>
	   <td width="115">
	     <strong><font color="#573801" face="verdana" size="2">Amount Due</font>
	     </strong></td>
	 </tr>
	 <tr>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("date1"));%>
	    </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("travelfrom"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("odometerstart"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("odometerend"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("totalmileage"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("rate"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%
		   float mileage=Float.parseFloat(request.getParameter("totalmileage"));
		   		   float rate=Float.parseFloat(request.getParameter("rate"));
                 float amount=mileage*rate;
		 out.println(amount);%>
	     </font>	   </td>
	 </tr>
	 <tr>
	  <td colspan="7" align="center">	     <input type="hidden" name="username" value="fn_pranam">
            <input type="hidden" name="password" value="fn_pranam">
	  	    <input type="image" src="images/home.jpg"></td>
	  </tr>
	</table>
   </td>
  </tr>
  </form>
</table>
</body>
</html>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>

<body>

</body>
</html>
