<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="currentassets" scope="application" class="com.Cuttentassetsconnect" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>

<body background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<%

 Class.forName("com.mysql.jdbc.Driver");
 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
%>
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
<h4 align="center"><font color="#573801" face="verdana" size="3"> Sales Voucher </font></h4>
<%
 /*String str2="insert into current_assets values(?,?,?)";
	PreparedStatement pstmt2=conn.prepareStatement(str2);
	pstmt2.setString(1,request.getParameter("salesaccount"));
	pstmt2.setString(2,request.getParameter("account"));
	pstmt2.setString(3,request.getParameter("amount"));
	pstmt2.executeUpdate();*/
 String str="insert into fn_accvoucher_sales (refno, date1, partyaccname,salesledger,nameofitem,quantity,rate,units,amount,id) values(?,?,?,?,?,?,?,?,?,?)";
  PreparedStatement pstmt=conn.prepareStatement(str);
  pstmt.setString(1,request.getParameter("refno"));
  pstmt.setString(2,request.getParameter("date1"));
  pstmt.setString(3,request.getParameter("account"));
  pstmt.setString(4,request.getParameter("salesaccount"));
  pstmt.setString(5,request.getParameter("stockitem"));
  pstmt.setString(6,request.getParameter("quantity"));
  pstmt.setString(7,request.getParameter("rate"));
  pstmt.setString(8,request.getParameter("units"));
  pstmt.setString(9,session.getAttribute("amount").toString());
  pstmt.setString(10,request.getParameter("no"));
  pstmt.executeUpdate();
  
  
  
  
  
  int recamount=0;
	 String str1="update current_assets set amount=? where toaccount=?";
	 PreparedStatement pstmt1=conn.prepareStatement(str1);
	 ResultSet rs=currentassets.connection();
	 out.println(request.getParameter("account"));
	 while(rs.next())
	 {
	  
	  if(rs.getString(1).equals(request.getParameter("account")))
	  {
	   recamount=Integer.parseInt(rs.getString(3));
	   out.println(recamount);
	   }
	 }
	 out.println(session.getAttribute("amount"));
	 int conamount=Integer.parseInt(session.getAttribute("amount").toString());
	 pstmt1.setInt(1,recamount+conamount);
	 pstmt1.setString(2,request.getParameter("account"));
	 pstmt1.executeUpdate();
	 
  
  
  
%>
 <div align="center">
   <font color="#573801" face="verdana" size="2">
    Successfully Posted</font>
  </div>
  <div align="center">
 <form action="fn_accountingvouchers.jsp">
  <input type="image" src="images/back.jpg">
 </form>
 <form action="specific.jsp">
  <input type="hidden" name="username" value="fn_pranam">
  <input type="hidden" name="password" value="fn_pranam">
  <input type="image" src="images/home.jpg">
 </form>
</div>
</body>
</html>
