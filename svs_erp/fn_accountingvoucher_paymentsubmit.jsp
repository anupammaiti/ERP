<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="contra" scope="application" class="com.Contraconnect" />
<jsp:useBean id="receipt" scope="application" class="com.Receiptconnect" />
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
<h4 align="center"><font color="#573801" face="verdana" size="3"> Payment Voucher </font></h4>

   <%
   
     String str2="insert into current_assets values(?,?,?)";
	PreparedStatement pstmt2=conn.prepareStatement(str2);
	pstmt2.setString(1,request.getParameter("accountfrom"));
	pstmt2.setString(2,request.getParameter("account"));
	pstmt2.setString(3,request.getParameter("amount"));
	pstmt2.executeUpdate();
     String str="insert into fn_accvoucher_payment (date1,account,particulars,amount,narration,id) values(?,?,?,?,?,?)";
	 PreparedStatement pstmt=conn.prepareStatement(str);
	// pstmt.setString(1,request.getParameter("no"));	
     pstmt.setString(1,request.getParameter("date1"));
	 pstmt.setString(2,request.getParameter("account"));
	 pstmt.setString(3,request.getParameter("accountfrom"));
	 pstmt.setString(4,request.getParameter("amount"));
	 pstmt.setString(5,request.getParameter("narration"));
	 pstmt.setString(6,request.getParameter("no"));
    pstmt.executeUpdate();
	
	 int recamount=0;
	 String str1="update current_assets set amount=? where toaccount=?";
	 PreparedStatement pstmt1=conn.prepareStatement(str1);
	 ResultSet rs=currentassets.connection();
	 out.println(request.getParameter("account"));
	 while(rs.next())
	 {
	  // out.println(rs.getString(5));
	 // out.println(rs.getString(2));
	  //out.println(request.getParameter("accountform"));
	  if(rs.getString(1).equals(request.getParameter("account")))
	  {
	   recamount=Integer.parseInt(rs.getString(3));
	   //out.println(recamount);
	   }
	 }
	 //out.println(request.getParameter("amount"));
	 int conamount=Integer.parseInt(request.getParameter("amount"));
	 pstmt1.setInt(1,recamount-conamount);
	 pstmt1.setString(2,request.getParameter("account"));
	 pstmt1.executeUpdate();
	 
	/* int recamount=0;
	 String str1="update fn_accvoucher_reciept set amount=? where account=?";
	 PreparedStatement pstmt1=conn.prepareStatement(str1);
	 int conamount=Integer.parseInt(request.getParameter("amount"));
	 ResultSet rs=receipt.connection();
	 String cashaccount="";
	 while(rs.next())
	 {
	   out.println(rs.getString(3));
	   cashaccount=rs.getString(3);
	   if(cashaccount.equalsIgnoreCase("cash"))
	   {
	     recamount=Integer.parseInt(rs.getString(5));
		 out.println(rs.getString(5));
	   }
	 }
	// out.println(recamount);
	// out.println(conamount);
	 out.println(request.getParameter("accountfrom"));
	 pstmt1.setFloat(1,recamount-conamount);
	 pstmt1.setString(2,request.getParameter("accountfrom"));
     pstmt.executeUpdate();
	 */
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
