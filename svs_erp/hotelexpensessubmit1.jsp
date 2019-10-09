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
<h4 align="center"><font color="#573801" face="verdana" size="3">Hotel Expenses</font></h4>
<%
 Class.forName("com.mysql.jdbc.Driver");
 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
 String str="insert into hotel_Expenses values(?,?,?,?,?,?,?,?,?,?,?,?)";
 PreparedStatement pstmt=conn.prepareStatement(str);
 pstmt.setString(1,request.getParameter("employeename"));
  pstmt.setString(2,request.getParameter("phone"));
  pstmt.setString(3,request.getParameter("location"));
  pstmt.setString(4,request.getParameter("approvedby"));
  pstmt.setString(5,request.getParameter("date1"));
  pstmt.setString(6,request.getParameter("noofdays"));
  pstmt.setString(7,request.getParameter("hotelname"));
  pstmt.setString(8,request.getParameter("hotellocation"));
  pstmt.setString(9,request.getParameter("amountperday"));
   int noofdays1=Integer.parseInt(request.getParameter("noofdays"));
		   int amountperday1=Integer.parseInt(request.getParameter("amountperday"));
		   int total1=noofdays1*amountperday1;
  pstmt.setInt(10,total1);
    pstmt.setString(11,request.getParameter("dept"));
	pstmt.setString(12,request.getParameter("day"));

  
  
	
	pstmt.executeUpdate();

%>


<table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
<form action="specific.jsp">
  <tr>
  <td>
   <table align="center" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
    <tr>
	 <td width="127">
	  <font color="#573801" face="verdana" size="2"><strong>Employee Name</strong></font>
	 </td>
	 <td width="24">
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("employeename"));%>
	   </font>	 </td>
	 <td width="97">
	  <font color="#573801" face="verdana" size="2"><strong>phone</strong></font>
	 </td>
	 <td width="37">
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("phone"));%>
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
	   Approved By</font>
	   </strong></td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("approvedby"));%>
	   </font>	 </td>
	</tr>
	<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   Dept</font>
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
	   <td width="78">
	    <strong><font color="#573801" face="verdana" size="2">Day</font>
	    </strong></td>
	  <td>
	    <strong><font color="#573801" face="verdana" size="2">No.Of Days</font>
	    </strong></td>
	  <td>
	  	  <strong><font color="#573801" face="verdana" size="2">Hotel name</font>

	      </strong></td>
	   <td>
	  	  <strong><font color="#573801" face="verdana" size="2">Hotel Location</font>

	      </strong></td>
	   <td width="115">
	     <strong><font color="#573801" face="verdana" size="2">Amount per Day </font>
	     </strong></td>
		 <td width="115">
	     <strong><font color="#573801" face="verdana" size="2">Total Amount </font>
	     </strong></td>
	 </tr>
	 <tr>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("date1"));%>
	    </font>	   </td>
	   
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("day"));%>
	    </font>	   </td>
	  
	 
	  
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%
		   out.println(request.getParameter("noofdays"));
		 %>
	     </font>	   </td>
		 <td>
	     <font color="#573801" face="verdana" size="2">
	     <%
		   out.println(request.getParameter("hotelname"));
		 %>
	     </font>	   </td>
		 <td>
	     <font color="#573801" face="verdana" size="2">
	     <%
		   out.println(request.getParameter("hotellocation"));
		 %>
	     </font>	   </td>
		 <td>
	     <font color="#573801" face="verdana" size="2">
	     <%
		   out.println(request.getParameter("amountperday"));
		 %>
	     </font>	   </td>
		 <td>
	     <font color="#573801" face="verdana" size="2">
	     <%
		   int noofdays=Integer.parseInt(request.getParameter("noofdays"));
		   int amountperday=Integer.parseInt(request.getParameter("amountperday"));
		   int total=noofdays*amountperday;
		   out.println(total);
		 %>
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
