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
<h4 align="center"><font color="#573801" face="verdana" size="3">Week Expense Report</font></h4>
<table align="center" width="800" bordercolor="#F0B269" bgcolor="#FADFC3" border="1">
<form action="weeklyexpensereportsubmit.jsp">
<tr>
 <td>
  <table align="center" border="1" bgcolor="#FADFC3" bordercolor="#F0B269" width="800">
   <tr>
    <td>
	 <font color="#573801" face="verdana" size="2">
	  <strong>Period Covered:</strong>	  </font>
	</td>
	<td>
	 <font color="#573801" face="verdana" size="2"><strong>FromDate:</strong></font>
	 <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("fromdate"));%>
	   </font>
	</td>
	 <td>
	  <font color="#573801" face="verdana" size="2"><strong>ToDate:</strong></font>
<font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("todate"));%>
	   </font>	 </td>
   </tr>
  </table>
 </td>
</tr>
<tr>
 <td>
  <table align="center" width="800" bordercolor="#F0B269" bgcolor="#FADFC3" border="1">
   <tr>
    <td>
	  <strong><font color="#573801" face="verdana" size="2">Name</font>
	  </strong></td>
	<td>
	  <strong><font color="#573801" face="verdana" size="2">Dept/Sales Office</font>
	  </strong></td>
	<td>
	  <strong><font color="#573801" face="verdana" size="2">Report Date</font>
	  </strong></td>
     <td>
	   <strong><font color="#573801" face="verdana" size="2">Date of Trip</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">From:</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">To:</font>
	   </strong></td>
   </tr>
   <tr>
      <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("name"));%>
	    </font>	  </td>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("deptoffice"));%>
	    </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("reportdate"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("dateoftrip"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("from"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("to"));%>
	     </font>	   </td>
   </tr>
   <tr>
    <td><font color="#573801" face="verdana" size="2"><strong>Business Purpose</strong></font></td>
    <td colspan="2" align="center"><font color="#573801" face="verdana" size="2">
      <%out.println(request.getParameter("businesspurpose"));%>
    </font>	</td>
	<td><font color="#573801" face="verdana" size="2"><strong>Account No.</strong></font> </td>
	<td colspan="2" align="center"><font color="#573801" face="verdana" size="2">
	  <%out.println(request.getParameter("accountno"));%>
	</font> </td>
	</tr>
   
  </table>
 </td>
</tr>
<tr>
 <td>
  <table align="center" width="800" border="1" bordercolor="#F0B269" bgcolor="#FADFC3">
    <tr>
	 <td>
	  
	 </td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   Date
	   </font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   Transport</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   Automobile Expences
	   </font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   Lodging
	   </font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   Meals
	   </font>
	   </strong></td>
	 <td>
	   <strong><font color="" face="verdana" size="2">
	   Entertainment
	   </font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   Misc
	   </font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   Total
	   </font>
	   </strong></td>
	</tr>
	<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	  
	    SUN
	   </font>
	   </strong></td>
	 <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("datesun"));%>
</font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("transportationsun"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("automobilesun"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("lodgingsun"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("mealssun"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("entertainmentsun"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("miscsun"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <strong>
	   <%
	     int transportsun=Integer.parseInt(request.getParameter("transportationsun"))+Integer.parseInt(request.getParameter("automobilesun"))+Integer.parseInt(request.getParameter("lodgingsun"))+Integer.parseInt(request.getParameter("mealssun"))+Integer.parseInt(request.getParameter("entertainmentsun"))+Integer.parseInt(request.getParameter("miscsun"));
	     
	   out.println(transportsun);%>
	   </strong>
	   </font>	
	   
	    </td>
	</tr>
	<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	  
	    MON
	   </font>
	   </strong></td>
	 <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("datemon"));%>
	    </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("transportationmon"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("automobilemon"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("lodgingmon"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("mealsmon"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("entertainmentmon"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("miscmon"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2"><strong>
	   <%
	     int transportmon=Integer.parseInt(request.getParameter("transportationmon"))+Integer.parseInt(request.getParameter("automobilemon"))+Integer.parseInt(request.getParameter("lodgingmon"))+Integer.parseInt(request.getParameter("mealsmon"))+Integer.parseInt(request.getParameter("entertainmentmon"))+Integer.parseInt(request.getParameter("miscmon"));
	     
	   out.println(transportmon);%>
	   </strong></font>	 </td>
	</tr>
    <tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	  
	    TUE
	   </font>
	   </strong></td>
	 <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("datetue"));%>
	    </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("transportationtue"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("automobiletue"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("lodgingtue"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("mealstue"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("entertainmenttue"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("misctue"));%>
</font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2"><strong>
	   <%
	     int transporttue=Integer.parseInt(request.getParameter("transportationtue"))+Integer.parseInt(request.getParameter("automobiletue"))+Integer.parseInt(request.getParameter("lodgingtue"))+Integer.parseInt(request.getParameter("mealstue"))+Integer.parseInt(request.getParameter("entertainmenttue"))+Integer.parseInt(request.getParameter("misctue"));
	     
	   out.println(transporttue);%>
	   </strong></font>	 </td>
	</tr>
<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	  
	    WED
	   </font>
	   </strong></td>
	 <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("datewed"));%>
	    </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("transportationwed"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("automobilewed"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("lodgingwed"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("mealswed"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("entertainmentwed"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("miscwed"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2"><strong>
	   <%
	     int transportwed=Integer.parseInt(request.getParameter("transportationwed"))+Integer.parseInt(request.getParameter("automobilewed"))+Integer.parseInt(request.getParameter("lodgingwed"))+Integer.parseInt(request.getParameter("mealswed"))+Integer.parseInt(request.getParameter("entertainmentwed"))+Integer.parseInt(request.getParameter("miscwed"));
	     
	   out.println(transportwed);%>
	   </strong></font>	 </td>
	</tr>
<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	  
	    THU
	   </font>
	   </strong></td>
	 <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("datethu"));%>
	    </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("transportationthu"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("automobilethu"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("lodgingthu"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("mealsthu"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("entertainmentthu"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("miscthu"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2"><strong>
	   <%
	     int transportthu=Integer.parseInt(request.getParameter("transportationthu"))+Integer.parseInt(request.getParameter("automobilethu"))+Integer.parseInt(request.getParameter("lodgingthu"))+Integer.parseInt(request.getParameter("mealsthu"))+Integer.parseInt(request.getParameter("entertainmentthu"))+Integer.parseInt(request.getParameter("miscthu"));
	     
	   out.println(transportthu);%>
	   </strong></font>	 </td>
	</tr>
<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	  
	    FRI
	   </font>
	   </strong></td>
	 <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("datefri"));%>
	    </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("transportationfri"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("automobilefri"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("lodgingfri"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("mealsfri"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("entertainmentfri"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("miscfri"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2"><strong>
	   <%
	     int transportfri=Integer.parseInt(request.getParameter("transportationfri"))+Integer.parseInt(request.getParameter("automobilefri"))+Integer.parseInt(request.getParameter("lodgingfri"))+Integer.parseInt(request.getParameter("mealsfri"))+Integer.parseInt(request.getParameter("entertainmentfri"))+Integer.parseInt(request.getParameter("miscfri"));
	     
	   out.println(transportfri);%>
	   </strong></font>	 </td>
	</tr>
<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	  
	    SAT
	   </font>
	   </strong></td>
	 <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("datesat"));%>
	    </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("transportationsat"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("automobilesat"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("lodgingsat"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("mealssat"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("entertainmentsat"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("miscsat"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2"><strong>
	   <%
	     int transportsat=Integer.parseInt(request.getParameter("transportationsat"))+Integer.parseInt(request.getParameter("automobilesat"))+Integer.parseInt(request.getParameter("lodgingsat"))+Integer.parseInt(request.getParameter("mealssat"))+Integer.parseInt(request.getParameter("entertainmentsat"))+Integer.parseInt(request.getParameter("miscsat"));
	     
	   out.println(transportsat);%>
	   </strong></font>	 </td>
	</tr>
   <tr>
    <td colspan="2">
	 <font color="#573801" face="verdana" size="2"><strong>Total</strong></font>
	</td>
	<td><font color="#573801" face="verdana" size="2"><strong>
	  <%
	     int transporttotal=Integer.parseInt(request.getParameter("transportationsun"))+Integer.parseInt(request.getParameter("transportationmon"))+Integer.parseInt(request.getParameter("transportationtue"))+Integer.parseInt(request.getParameter("transportationwed"))+Integer.parseInt(request.getParameter("transportationthu"))+Integer.parseInt(request.getParameter("transportationfri"))+Integer.parseInt(request.getParameter("transportationsat"));
	     
	   out.println(transporttotal);%>
	</strong></font></td>
	<td><font color="#573801" face="verdana" size="2"><strong>
	  <%
	     int automobiletotal=Integer.parseInt(request.getParameter("automobilesun"))+Integer.parseInt(request.getParameter("automobilemon"))+Integer.parseInt(request.getParameter("automobiletue"))+Integer.parseInt(request.getParameter("automobilewed"))+Integer.parseInt(request.getParameter("automobilethu"))+Integer.parseInt(request.getParameter("automobilefri"))+Integer.parseInt(request.getParameter("automobilesat"));
	     
	   out.println(automobiletotal);%>
	</strong></font></td>
	<td><font color="#573801" face="verdana" size="2"><strong>
	  <%
	     int lodgingtotal=Integer.parseInt(request.getParameter("lodgingsun"))+Integer.parseInt(request.getParameter("lodgingmon"))+Integer.parseInt(request.getParameter("lodgingtue"))+Integer.parseInt(request.getParameter("lodgingwed"))+Integer.parseInt(request.getParameter("lodgingthu"))+Integer.parseInt(request.getParameter("lodgingfri"))+Integer.parseInt(request.getParameter("lodgingsat"));
	     
	   out.println(lodgingtotal);%>
	</strong></font></td>
	<td><font color="#573801" face="verdana" size="2"><strong>
	  <%
	     int mealstotal=Integer.parseInt(request.getParameter("mealssun"))+Integer.parseInt(request.getParameter("mealsmon"))+Integer.parseInt(request.getParameter("mealstue"))+Integer.parseInt(request.getParameter("mealswed"))+Integer.parseInt(request.getParameter("mealsthu"))+Integer.parseInt(request.getParameter("mealsfri"))+Integer.parseInt(request.getParameter("mealssat"));
	     
	   out.println(mealstotal);%>
	</strong></font></td>
	<td><font color="#573801" face="verdana" size="2"><strong>
	  <%
	     int entertainmenttotal=Integer.parseInt(request.getParameter("entertainmentsun"))+Integer.parseInt(request.getParameter("entertainmentmon"))+Integer.parseInt(request.getParameter("entertainmenttue"))+Integer.parseInt(request.getParameter("entertainmentwed"))+Integer.parseInt(request.getParameter("entertainmentthu"))+Integer.parseInt(request.getParameter("entertainmentfri"))+Integer.parseInt(request.getParameter("entertainmentsat"));
	     
	   out.println(entertainmenttotal);%>
	</strong></font></td>
	<td><font color="#573801" face="verdana" size="2"><strong>
	  <%
	     int misctotal=Integer.parseInt(request.getParameter("miscsun"))+Integer.parseInt(request.getParameter("miscmon"))+Integer.parseInt(request.getParameter("misctue"))+Integer.parseInt(request.getParameter("miscwed"))+Integer.parseInt(request.getParameter("miscthu"))+Integer.parseInt(request.getParameter("miscfri"))+Integer.parseInt(request.getParameter("miscsat"));
	     
	   out.println(misctotal);%>
	</strong></font></td>
	<td><font color="#573801" face="verdana" size="2"><strong>
	<i>
	  <%
	     int grandtotal=transporttotal+automobiletotal+lodgingtotal+mealstotal+entertainmenttotal+transporttotal;
	     
	   out.println(grandtotal);%>
	   </i>
	</strong></font></td>
   </tr>
   <tr>
    <td colspan="9" align="center"><input type="image" src="images/submit.jpg"></td>
	</tr>
  </table>
 </td>
</tr>
</form>
</table>

</body>
</html>
