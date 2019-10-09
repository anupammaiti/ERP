<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>



<% 
boolean admin_check = false;
boolean fn_check = false;
if(session.getAttribute("user_name").toString().equals("admin_account") & "admin_account".equals(session.getAttribute("pwd").toString()) )
{
	admin_check = true;
}
else if(session.getAttribute("user_name").toString().equals("fn_account") & "fn_account".equals(session.getAttribute("pwd").toString()) )
{
	fn_check = true;
}
%>

<%
if(admin_check || fn_check)
{

 %>
 
<body background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
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
<% // out.println(request.getParameter("vochername"));
   // out.println(request.getParameter("abbr"));
//	out.println(request.getParameter("vochernumbering"));
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
   String str="update vocherdata set name=?,abbr=?,numberingmethod=?,useadvconfiguration=?,useeffectivedates=?,usecommonnarrition=?,narrationsforeachentry=?,nameofclass=? where typeofvocher=?";
   PreparedStatement pstmt=conn.prepareStatement(str);
   pstmt.setString(1,request.getParameter("vochername"));
   pstmt.setString(2,request.getParameter("abbr"));
   pstmt.setString(3,request.getParameter("vochernumbering"));
   pstmt.setString(4,request.getParameter("advconfiguration"));
   pstmt.setString(5,request.getParameter("useeffectivedates"));
   pstmt.setString(6,request.getParameter("usecommonnarration"));
   pstmt.setString(7,request.getParameter("narrationsforeachentry"));
   pstmt.setString(8,request.getParameter("nameofclass"));
   pstmt.setString(9,request.getParameter("vochertype"));
  //  out.println("ajay");
   pstmt.executeUpdate();
   

%>
<table align="center" width="800">
<tr>
<td align="center" colspan="2">
<font color="#573801" face="verdana" size="3">
 <strong>Successfully Updated</strong></font>
</td>
</tr>
<tr>
<td width="396" align="right">
<% if(admin_check){ %>
<form action="kvk_finance_main.jsp" method="post">
<% } %>

<% if(fn_check){ %>
<form action="account_operator.jsp" method="post">
<% } %>

 <input type="image" src="images/home.jpg" width="100" height="33">
</form>
</td>
<td width="392" align="left">
<form action="fn_voucher_info.jsp">

 <input type="image" src="images/back.jpg" width="100" height="33">
</form>
</td>
</tr>
</table>

<% } %>
</body>
</html>
