<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>
</head>

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
<h4 align="center"><font color="#573801" face="verdana" size="3">Base Currency &amp; Company Information </font></h4>
<form action="fn_createcompanysubmit1.jsp">
<table align="center" width="800" bgcolor="#FADFC3" bordercolor="#F0B269" border="1">
 <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Base Currency Symbol
	</font>
   </td>
   <td>
    <input type="text" name="basecurrencysymbol" value=<%=request.getParameter("currency")%>>
   </td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 	FormalName
	</font>
   </td>
   <td>
     <input type="text" name="formalname" value="Indian Rupees">
   </td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Number Of Decimal Places
	</font>
   </td>
   <td>
    <input type="text" name="numberofdecimalplaces" value="2">
   </td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Symbol for Decimal Portion
	</font>
   </td> 
   <td>
    <input type="text" name="symbolfordecimalportion" value="paise">
   </td>
  </tr>
  <tr>
  <td width="392">
   <font color="#573801" face="verdana" size="2">
    Name
   </font>
  </td>
  <td width="392">
   <input type="text" name="companyname" value="<%=request.getParameter("companyname")%>">
   
  </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Mailing Name
   </font>
  </td>
  <td>
   <input type="text" name="mailingname" value=<%=request.getParameter("mailingname")%>>
  </td>
  
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Address
   </font>
  </td>
  <td>
    <input type="text" name="address" value=<%=request.getParameter("mailingname")%>>
  </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    Statutory Commpliances  for
   </font>
  </td>
  <td>
   <input type="text" name="statutory" value=<%=request.getParameter("statutory")%>>
  </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
    State
   </font>
   </td>
   <td>
    <input type="text" name="state" value=<%=request.getParameter("state")%>> 
   </td>
 </tr>
 <tr>
  <td>
   <font color="#573801" face="verdana" size="2">
     PIN Code
   </font>
  </td>
  <td>
   <input type="text" name="pincode" value=<%=request.getParameter("pincode")%>>
  </td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="Verdana" size="2">
	  Telephone Number
	</font>
   </td>
   <td>
    <input type="text" name="telephonenumber" value=<%=request.getParameter("telephonenumber")%>>
   </td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 E-Mail
	</font>
   </td>
   <td>
     <input type="text" name="email" value=<%=request.getParameter("email")%>>
   </td>
  </tr>
  <tr>
   <td>
     <font color="#573801" face="verdana" size="2">
	   Currency Symbol
	 </font>
    </td>
	<td>
	 <input type="text" name="currency" value=<%=request.getParameter("currency")%>>
	</td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Maintain
	</font>
   </td>
   <td>
   <input type="text" name="maintain" value=<%=request.getParameter("maintain")%>>
   
   </td>
   
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	  Finalcial Year from
	</font>
	
	
   </td>
   <td>
    <input type="text" name="finacialyearfrom" value=<%=request.getParameter("finacialyearfrom")%>>
   </td>
  </tr>
  <tr>
   <td>
    <font color="#573801" face="verdana" size="2">
	 Books Beginning from
	</font>
    </td>
	<td>
	 <input type="text" name="booksbeginningfrom" value=<%=request.getParameter("booksbeginningfrom")%>>
	</td>
  </tr>
  <tr>
   <td colspan="2" align="center">
     <input type="image" src="images/submit.jpg">
   </td>
  </tr>
</table>
</form>
</body>
</html>
