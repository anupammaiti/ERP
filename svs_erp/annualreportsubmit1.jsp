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
<h4 align="center"><font color="#573801" face="verdana" size="3">Annual Expense Report</font></h4>
<table align="center" width="800" bgcolor="#FADFC3" bordercolor="#F0B269">
<form action="annualreportsubmit.jsp">
<tr>
 <td>
  <table align="center" width="800" bordercolor="#F0B269" bgcolor="#FADFC3" border="1">
    <tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">Year</font>
	 </td>
	 <td>
       <font color="#573801" face="verdana" size="2">
	 <%out.println(request.getParameter("year"));%>
	 </font>	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">Sales Person</font>
	  </td>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("salesperson"));%>
	    </font>	  </td>
	</tr>
	<tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">Address</font>
	  </td>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("address"));%>
	    </font>	  </td>
	 
	</tr>
	<tr>
	
	 <td>
	  <font color="#573801" face="verdana" size="2">City</font>
	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("city"));%>
	   </font>	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">State</font>
	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("state"));%>
	   </font>	 </td>
	</tr>
  
  </table>
  
 </td>
</tr>
 <tr>
  <td>
   <table align="center" width="800" border="1" bgcolor="#FADFC3" bordercolor="#F0B269">
    <tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">Territory</font>
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">Region/Zone</font>
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">Product/Group</font>
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">Prepared By</font>
	 </td> 
	</tr>
	<tr>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("territory"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("region"));%>
	   </font>	  </td>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("product"));%>
	    </font>	  </td>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("praparedby"));%>
	    </font>	 
		 </td>
	</tr>
   
   </table>
  </td>
 </tr>
 <tr>
  <td>
   <table align="center" width="800" border="1"  bordercolor="#F0B269" bgcolor="#FADFC3">
    <tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Month</font>
	   </strong></td> 
	 <td>
	   <strong><font color="#573801" face="Verdana" size="2">Phone</font>
	   </strong></td>
	<td>
	  <strong><font color="#573801" face="verdana" size="2">Meals</font>
	  </strong></td>
	<td>
	  <strong><font color="#573801" face="verdana" size="2">Travel</font>
	  </strong></td>
	<td>
	  <strong><font color="#573801" face="Verdana" size="2">Hotel</font>
	  </strong></td>
	<td>
	  <strong><font color="#573801" face="verdana" size="2">Enter</font>
	  </strong></td>
	<td>
	  <strong><font color="#573801" face="verdana" size="2">Misc.</font>
	  </strong></td>
	<td>
	  <strong><font color="#573801" face="verdana" size="2">Total</font>
	  </strong></td>
	</tr>   
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">January</font>
	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("phonejan"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("mealsjan"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("traveljan"));%>
	   </font>	  </td>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("hoteljan"));%>
	    </font>	  </td>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("enterjan"));%>
	    </font>	  </td>
	  
	  <td>
        <font color="#573801" face="verdana" size="2">
        <%out.println(request.getParameter("miscjan"));%>
        </font>	  </td>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%
		  int phonejan=Integer.parseInt(request.getParameter("phonejan"));
		  int mealsjan=Integer.parseInt(request.getParameter("mealsjan"));
		  int traveljan=Integer.parseInt(request.getParameter("traveljan"));
		  int hoteljan=Integer.parseInt(request.getParameter("hoteljan"));
		  int enterjan=Integer.parseInt(request.getParameter("enterjan"));
		  int miscjan=Integer.parseInt(request.getParameter("miscjan"));
		out.println(phonejan+mealsjan+traveljan+hoteljan+enterjan+miscjan);
		
		%>
	    </font>	  </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">February</font>
	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("phonefeb"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("mealsfeb"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("travelfeb"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("hotelfeb"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("enterfeb"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("miscfeb"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%
		  int phonefeb=Integer.parseInt(request.getParameter("phonefeb"));
		  int mealsfeb=Integer.parseInt(request.getParameter("mealsfeb"));
		  int travelfeb=Integer.parseInt(request.getParameter("travelfeb"));
		  int hotelfeb=Integer.parseInt(request.getParameter("hotelfeb"));
		  int enterfeb=Integer.parseInt(request.getParameter("enterfeb"));
		  int miscfeb=Integer.parseInt(request.getParameter("miscfeb"));
		out.println(phonefeb+mealsfeb+travelfeb+hotelfeb+enterfeb+miscfeb);
		
		%>
	   </font>	 </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">March</font>
	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("phonemar"));%>
	   </font>	  </td>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("mealsmar"));%>
	    </font>	  </td>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("travelmar"));%>
	    </font>	  </td>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("hotelmar"));%>
	    </font>	  </td>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("entermar"));%>
	    </font>	  </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("miscmar"));%>
	   </font>	 </td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%
		  int phonemar=Integer.parseInt(request.getParameter("phonemar"));
		  int mealsmar=Integer.parseInt(request.getParameter("mealsmar"));
		  int travelmar=Integer.parseInt(request.getParameter("travelmar"));
		  int hotelmar=Integer.parseInt(request.getParameter("hotelmar"));
		  int entermar=Integer.parseInt(request.getParameter("entermar"));
		  int miscmar=Integer.parseInt(request.getParameter("miscmar"));
		out.println(phonemar+mealsmar+travelmar+hotelmar+entermar+miscmar);
		
		%>
	   </font>	 </td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2"><strong>1st Quarter Total</strong></font>
	 </td>
	 <td>
	 </td>
	 <td>
	 </td>
	 <td>
	 </td>
	 <td></td>
	 <td></td>
	 <td></td>
	 <td></td>
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">April</font>
	  </td>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("phoneapr"));%>
	    </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("mealsapr"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("travelapr"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("hotelapr"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("enterapr"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%out.println(request.getParameter("miscapr"));%>
	     </font>	   </td>
	   <td>
	     <font color="#573801" face="verdana" size="2">
	     <%
		  int phoneapr=Integer.parseInt(request.getParameter("phoneapr"));
		  int mealsapr=Integer.parseInt(request.getParameter("mealsapr"));
		  int travelapr=Integer.parseInt(request.getParameter("travelapr"));
		  int hotelapr=Integer.parseInt(request.getParameter("hotelapr"));
		  int enterapr=Integer.parseInt(request.getParameter("enterapr"));
		  int miscapr=Integer.parseInt(request.getParameter("miscapr"));
		out.println(phoneapr+mealsapr+travelapr+hotelapr+enterapr+miscapr);
		
		%>
	     </font>	   </td>
	   	</tr>
		<tr>
		 <td>
		  <font color="#573801" face="verdana" size="2">May</font>
		 </td>
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("phonemay"));%>
		   </font>		 </td>
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("mealsmay"));%>
		   </font>		 </td>
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("travelmay"));%>
		   </font>		 </td>
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("hotelmay"));%>
		   </font>		 </td>
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("entermay"));%>
		   </font>		 </td>
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("miscmay"));%>
		   </font>		  </td>
		  <td>
		    <font color="#573801" face="verdana" size="2">
		    <%
		  int phonemay=Integer.parseInt(request.getParameter("phonemay"));
		  int mealsmay=Integer.parseInt(request.getParameter("mealsmay"));
		  int travelmay=Integer.parseInt(request.getParameter("travelmay"));
		  int hotelmay=Integer.parseInt(request.getParameter("hotelmay"));
		  int entermay=Integer.parseInt(request.getParameter("entermay"));
		  int miscmay=Integer.parseInt(request.getParameter("miscmay"));
		out.println(phonemay+mealsmay+travelmay+hotelmay+entermay+miscmay);
		
		%>
		    </font>		  </td>
		</tr>
		<tr>
		 <td>
		  <font color="#573801" face="verdana" size="2">June</font>
		 </td>
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("phonejune"));%>
		   </font>		 </td>
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("melasjune"));%>
		   </font>		 </td>
		  <td>
		    <font color="#573801" face="verdana" size="2">
		    <%out.println(request.getParameter("traveljune"));%>
		    </font>		 </td> 
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("hoteljune"));%>
		   </font>		 </td>
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("enterjune"));%>
		   </font>		  </td>
		  <td>
		    <font color="#573801" face="verdana" size="2">
		    <%out.println(request.getParameter("miscjune"));%>
		    </font>		  </td>
		  <td>
		    <font color="#573801" face="verdana" size="2">
		    <%
		  int phonejune=Integer.parseInt(request.getParameter("phonejune"));
		  int mealsjune=Integer.parseInt(request.getParameter("mealsjune"));
		  int traveljune=Integer.parseInt(request.getParameter("traveljune"));
		  int hoteljune=Integer.parseInt(request.getParameter("hoteljune"));
		  int enterjune=Integer.parseInt(request.getParameter("enterjune"));
		  int miscjune=Integer.parseInt(request.getParameter("miscjune"));
		out.println(phonejune+mealsjune+traveljune+hoteljune+enterjune+miscjune);
		   %>
		    </font>		  </td>
		</tr>
		<tr>
		 <td>
		  <font color="#573801" face="verdana" size="2"><strong>2nd Quarter Total</strong></font>
		 </td>
		 <td></td>
		 <td></td>
		 <td></td>
		 <td></td>
		 <td></td>
		 <td></td>
		 <td></td>
		</tr>
		<tr>
		 <td>
		  <font color="#573801" face="verdana" size="2">July</font>
		 </td>
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("phonejuly"));%>
		   </font>		 </td>
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("mealsjuly"));%>
		   </font>		 </td>
		  <td>
		    <font color="#573801" face="verdana" size="2">
		    <%out.println(request.getParameter("traveljuly"));%>
		    </font>		 </td> 
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("hoteljuly"));%>
		   </font>		 </td>
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("enterjuly"));%>
		   </font>		  </td>
		  <td>
		    <font color="#573801" face="verdana" size="2">
		    <%out.println(request.getParameter("miscjuly"));%>
		    </font>		  </td>
		  <td>
		    <font color="#573801" face="verdana" size="2">
		    <%
		  int phonejuly=Integer.parseInt(request.getParameter("phonejuly"));
		  int mealsjuly=Integer.parseInt(request.getParameter("mealsjuly"));
		  int traveljuly=Integer.parseInt(request.getParameter("traveljuly"));
		  int hoteljuly=Integer.parseInt(request.getParameter("hoteljuly"));
		  int enterjuly=Integer.parseInt(request.getParameter("enterjuly"));
		  int miscjuly=Integer.parseInt(request.getParameter("miscjuly"));
		out.println(phonejuly+mealsjuly+traveljuly+hoteljuly+enterjuly+miscjuly);
		
		%>
		    </font>		  </td>
		</tr>
		<tr>
		 <td>
		  <font color="#573801" face="verdana" size="2">August</font>
		 </td>
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("phoneaugust"));%>
		   </font>		 </td>
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("mealsaugust"));%>
		   </font>		 </td>
		  <td>
		    <font color="#573801" face="verdana" size="2">
		    <%out.println(request.getParameter("travelaugust"));%>
		    </font>		 </td> 
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("hotelaugust"));%>
		   </font>		 </td>
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("enteraugust"));%>
		   </font>		  </td>
		  <td>
		    <font color="#573801" face="verdana" size="2">
		    <%out.println(request.getParameter("miscaugust"));%>
		    </font>		  </td>
		  <td>
		    <font color="#573801" face="verdana" size="2">
		    <%
		  int phoneaugust=Integer.parseInt(request.getParameter("phoneaugust"));
		  int mealsaugust=Integer.parseInt(request.getParameter("mealsaugust"));
		  int travelaugust=Integer.parseInt(request.getParameter("travelaugust"));
		  int hotelaugust=Integer.parseInt(request.getParameter("hotelaugust"));
		  int enteraugust=Integer.parseInt(request.getParameter("enteraugust"));
		  int miscaugust=Integer.parseInt(request.getParameter("miscaugust"));
		out.println(phoneaugust+mealsaugust+travelaugust+hotelaugust+enteraugust+miscaugust);
		
		%>
		    </font>		  </td>
		</tr>
       <tr>
		 <td>
		  <font color="#573801" face="verdana" size="2">September</font>
		 </td>
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("phoneseptember"));%>
		   </font>		 </td>
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("mealsseptember"));%>
		   </font>		 </td>
		  <td>
		    <font color="#573801" face="verdana" size="2">
		    <%out.println(request.getParameter("travelseptember"));%>
		    </font>		 </td> 
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("hotelseptember"));%>
		   </font>		 </td>
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("enterseptember"));%>
		   </font>		  </td>
		  <td>
		    <font color="#573801" face="verdana" size="2">
		    <%out.println(request.getParameter("miscseptember"));%>
		    </font>		  </td>
		  <td>
		    <font color="#573801" face="verdana" size="2">
		    <%
		  int phoneseptember=Integer.parseInt(request.getParameter("phoneseptember"));
		  int mealsseptember=Integer.parseInt(request.getParameter("mealsseptember"));
		  int travelseptember=Integer.parseInt(request.getParameter("travelseptember"));
		  int hotelseptember=Integer.parseInt(request.getParameter("hotelseptember"));
		  int enterseptember=Integer.parseInt(request.getParameter("enterseptember"));
		  int miscseptember=Integer.parseInt(request.getParameter("miscseptember"));
		out.println(phoneseptember+mealsseptember+travelseptember+hotelseptember+enterseptember+miscseptember);
		
		%>
		    </font>		  </td>
		</tr>
		<tr>
		 <td>
		  <font color="#573801" face="verdana" size="2"><strong>3rd Quarter Total</strong></font>
		 </td>
		 <td></td>
		 <td></td>
		 <td></td>
		 <td></td>
		 <td></td>
		 <td></td>
		 <td></td>
		</tr>
		 <tr>
		 <td>
		  <font color="#573801" face="verdana" size="2">October</font>
		 </td>
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("phoneoctober"));%>
		   </font>		 </td>
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("mealsoctober"));%>
		   </font>		 </td>
		  <td>
		    <font color="#573801" face="verdana" size="2">
		    <%out.println(request.getParameter("traveloctober"));%>
		    </font>		 </td> 
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("hoteloctober"));%>
		   </font>		 </td>
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("enteroctober"));%>
		   </font>		  </td>
		  <td>
		    <font color="#573801" face="verdana" size="2">
		    <%out.println(request.getParameter("miscoctober"));%>
		    </font>		  </td>
		  <td>
		    <font color="#573801" face="verdana" size="2">
		    <%
		  int phoneoctober=Integer.parseInt(request.getParameter("phoneoctober"));
		  int mealsoctober=Integer.parseInt(request.getParameter("mealsoctober"));
		  int traveloctober=Integer.parseInt(request.getParameter("traveloctober"));
		  int hoteloctober=Integer.parseInt(request.getParameter("hoteloctober"));
		  int enteroctober=Integer.parseInt(request.getParameter("enteroctober"));
		  int miscoctober=Integer.parseInt(request.getParameter("miscoctober"));
		out.println(phoneoctober+mealsoctober+traveloctober+hoteloctober+enteroctober+miscoctober);
		
		%>
		    </font>		  </td>
		</tr>
       <tr>
		 <td>
		  <font color="#573801" face="verdana" size="2">November</font>
		 </td>
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("phonenovember"));%>
		   </font>		 </td>
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("mealsnovember"));%>
		   </font>		 </td>
		  <td>
		    <font color="#573801" face="verdana" size="2">
		    <%out.println(request.getParameter("travelnovember"));%>
		    </font>		 </td> 
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("hotelnovember"));%>
		   </font>		 </td>
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("enternovember"));%>
		   </font>		  </td>
		  <td>
		    <font color="#573801" face="verdana" size="2">
		    <%out.println(request.getParameter("miscnovember"));%>
		    </font>		  </td>
		  <td>
		    <font color="#573801" face="verdana" size="2">
		    <%
		  int phonenovember=Integer.parseInt(request.getParameter("phonenovember"));
		  int mealsnovember=Integer.parseInt(request.getParameter("mealsnovember"));
		  int travelnovember=Integer.parseInt(request.getParameter("travelnovember"));
		  int hotelnovember=Integer.parseInt(request.getParameter("hotelnovember"));
		  int enternovember=Integer.parseInt(request.getParameter("enternovember"));
		  int miscnovember=Integer.parseInt(request.getParameter("miscnovember"));
		out.println(phonenovember+mealsnovember+travelnovember+hotelnovember+enternovember+miscnovember);
		
		%>
		    </font>		  </td>
		</tr>
         <tr>
		 <td>
		  <font color="#573801" face="verdana" size="2">December</font>
		 </td>
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("phonedecember"));%>
		   </font>		 </td>
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("mealsdecember"));%>
		   </font>		 </td>
		  <td>
		    <font color="#573801" face="verdana" size="2">
		    <%out.println(request.getParameter("traveldecember"));%>
		    </font>		 </td> 
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("hoteldecember"));%>
		   </font>		 </td>
		 <td>
		   <font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("enterdecember"));%>
		   </font>		  </td>
		  <td>
		    <font color="#573801" face="verdana" size="2">
		    <%out.println(request.getParameter("miscdecember"));%>
		    </font>		  </td>
		  <td>
		    <font color="#573801" face="verdana" size="2">
		    <%
		  int phonedecember=Integer.parseInt(request.getParameter("phonedecember"));
		  int mealsdecember=Integer.parseInt(request.getParameter("mealsdecember"));
		  int traveldecember=Integer.parseInt(request.getParameter("traveldecember"));
		  int hoteldecember=Integer.parseInt(request.getParameter("hoteldecember"));
		  int enterdecember=Integer.parseInt(request.getParameter("enterdecember"));
		  int miscdecember=Integer.parseInt(request.getParameter("miscdecember"));
		out.println(phonedecember+mealsdecember+traveldecember+hoteldecember+enterdecember+miscdecember);
		
		%>
		    </font>		  </td>
		</tr>
        <tr>
		 <td>
		  <font color="#573801" face="verdana" size="2"><strong>4th Quarter Total</strong></font>
		 </td>
		 <td></td>
		 <td></td>
		 <td></td>
		 <td></td>
		 <td></td>
		 <td></td>
		 <td></td>
		</tr>
		<tr>
		 <td>
		  <font color="#573801" face="verdana" size="2"><strong>Annual Totals</strong></font>
		 </td>
		 <td></td>
		 <td></td>
		 <td></td>
		 <td></td>
		 <td></td>
		 <td></td>
		 <td></td>
		</tr>
		<tr>
   <td colspan="8" align="center"><input type="image" src="images/submit.jpg"></td>
   </tr>
   </table>
  </td>
 </tr>
 
</form>

</table>
</body>
</html>
