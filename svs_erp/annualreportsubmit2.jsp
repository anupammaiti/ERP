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
<form action="annualreportsubmitdatabase.jsp">
<tr>
 <td>
  <table align="center" width="800" bordercolor="#F0B269" bgcolor="#FADFC3" border="1">
    <tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Year</font>
	   </strong></td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("year"));%>
	   </font>	 </td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Sales Person</font>
	   </strong></td>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("salesperson"));%>
	    </font>	  </td>
	</tr>
	<tr>
	  <td>
	    <strong><font color="#573801" face="verdana" size="2">Address</font>
	    </strong></td>
	  <td>
	    <font color="#573801" face="verdana" size="2">
	    <%out.println(request.getParameter("address"));%>
	    </font>	  </td>
	 
	</tr>
	<tr>
	
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">City</font>
	   </strong></td>
	 <td>
	   <font color="#573801" face="verdana" size="2">
	   <%out.println(request.getParameter("city"));%>
	   </font>	 </td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">State</font>
	   </strong></td>
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
	   <strong><font color="#573801" face="verdana" size="2">Territory</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Region/Zone</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Product/Group</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">Prepared By</font>
	   </strong></td> 
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
	    </font>	  </td>
	</tr>
   
   </table>
  </td>
 </tr>
 <tr>
  <td>
   <table align="center" width="800" border="1"  bordercolor="#F0B269" bgcolor="#FADFC3">
    <tr>
	 <td width="191">
	   <strong><font color="#573801" face="verdana" size="2">Month</font>
	   </strong></td> 
	 <td width="73">
	   <strong><font color="#573801" face="Verdana" size="2">Phone</font>
	   </strong></td>
	<td width="68">
	  <strong><font color="#573801" face="verdana" size="2">Meals</font>
	  </strong></td>
	<td width="73">
	  <strong><font color="#573801" face="verdana" size="2">Travel</font>
	  </strong></td>
	<td width="64">
	  <strong><font color="#573801" face="Verdana" size="2">Hotel</font>
	  </strong></td>
	<td width="105">
	  <strong><font color="" face="verdana" size="2">Entertainment</font></strong></td>
	<td width="110">
	  <strong><font color="#573801" face="verdana" size="2">Misc.</font>
	  </strong></td>
	<td width="64">
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
	 <font color="#573801" face="verdana" size="2">
	 <strong>
	  <%
	    int fquatotal=Integer.parseInt(request.getParameter("phonejan"))+Integer.parseInt(request.getParameter("phonefeb"))+Integer.parseInt(request.getParameter("phonemar"));
	    out.println(fquatotal);
	  %>
	  </strong>
	 </font>
	 </td>
	 <td>
	 
	  <font color="#573801" face="verdana" size="2">
	 <strong>
	  <%
	    int fquatotalmeals=Integer.parseInt(request.getParameter("mealsjan"))+Integer.parseInt(request.getParameter("mealsfeb"))+Integer.parseInt(request.getParameter("mealsmar"));
	    out.println(fquatotalmeals);
	  %>
	  </strong>
	 </font>
	 </td>
	 <td>
	 <font color="#573801" face="verdana" size="2">
	 <strong>
	  <%
	    int fquatotaltravel=Integer.parseInt(request.getParameter("traveljan"))+Integer.parseInt(request.getParameter("travelfeb"))+Integer.parseInt(request.getParameter("travelmar"));
	    out.println(fquatotaltravel);
	  %>
	  </strong>
	 </font>
	 </td>
	 <td>
	 <font color="#573801" face="verdana" size="2">
	 <strong>
	  <%
	    int fquatotalhotel=Integer.parseInt(request.getParameter("hoteljan"))+Integer.parseInt(request.getParameter("hotelfeb"))+Integer.parseInt(request.getParameter("hotelmar"));
	    out.println(fquatotalhotel);
	  %>
	  </strong>
	 </font>
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">
	 <strong>
	  <%
	    int fquatotalenter=Integer.parseInt(request.getParameter("enterjan"))+Integer.parseInt(request.getParameter("enterfeb"))+Integer.parseInt(request.getParameter("entermar"));
	    out.println(fquatotalenter);
	  %>
	  </strong>
	 </font>
	 
	 </td>
	 <td>
	 <font color="#573801" face="verdana" size="2">
	 <strong>
	  <%
	    int fquatotalmisc=Integer.parseInt(request.getParameter("miscjan"))+Integer.parseInt(request.getParameter("miscfeb"))+Integer.parseInt(request.getParameter("miscmar"));
	    out.println(fquatotalmisc);
	  %>
	  </strong>
	 </font>
	 </td>
	 <td>
	 <font color="#573801" face="verdana" size="2">
	 <strong>
	  <%
	    int fquatotaltotal=phonejan+mealsjan+traveljan+hoteljan+enterjan+miscjan+phonefeb+mealsfeb+travelfeb+hotelfeb+enterfeb+miscfeb+phonemar+mealsmar+travelmar+hotelmar+entermar+miscmar;
	    out.println(fquatotaltotal);
	  %>
	  </strong>
	 </font>
	 </td>
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
		   <%out.println(request.getParameter("miscapr"));%>
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
		 <td><font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("phonejune"));%>
		 </font></td>
		 <td><font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("melasjune"));%>
		 </font></td>
		  <td><font color="#573801" face="verdana" size="2">
		    <%out.println(request.getParameter("traveljune"));%>
		  </font></td> 
		 <td><font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("hoteljune"));%>
		 </font></td>
		 <td><font color="#573801" face="verdana" size="2">
		   <%out.println(request.getParameter("enterjune"));%>
		 </font></td>
		  <td><font color="#573801" face="verdana" size="2">
		    <%out.println(request.getParameter("miscapr"));%>
		  </font></td>
		  <td><font color="#573801" face="verdana" size="2">
		  <%
		    //request.getParameter("phonejune")
		    int totaljune=Integer.parseInt(request.getParameter("phonejune"))+Integer.parseInt(request.getParameter("melasjune"))+Integer.parseInt(request.getParameter("traveljune"))+Integer.parseInt(request.getParameter("hoteljune"))+Integer.parseInt(request.getParameter("enterjune"))+Integer.parseInt(request.getParameter("miscjune"));
			out.println(totaljune);
		  %>
		  
		  </font></td>
		</tr>
		<tr>
		 <td>
		  <font color="#573801" face="verdana" size="2"><strong>2nd Quarter Total</strong></font>
		 </td>
		 <td><font color="#573801" face="verdana" size="2"><strong>
		   <%
	    int squatotal=Integer.parseInt(request.getParameter("phoneapr"))+Integer.parseInt(request.getParameter("phonemay"))+Integer.parseInt(request.getParameter("phonejune"));
	    out.println(squatotal);
	  %>
		 </strong></font></td>
		 <td><font color="#573801" face="verdana" size="2"><strong>
		 
         <%
	    int squatotalmeals=Integer.parseInt(request.getParameter("mealsapr"))+Integer.parseInt(request.getParameter("mealsmay"))+Integer.parseInt(request.getParameter("melasjune"));
	    out.println(squatotalmeals);
	  %>
</strong>
		   
		 
		 </font></td>
		 <td><font color="#573801" face="verdana" size="2"><strong>
		 <%
	    int squatotaltravel=Integer.parseInt(request.getParameter("travelapr"))+Integer.parseInt(request.getParameter("travelmay"))+Integer.parseInt(request.getParameter("traveljune"));
	    out.println(squatotaltravel);
	  %>
		 
		 </strong></font></td>
		 <td><font color="#573801" face="verdana" size="2"><strong>
		 <%
	    int squatotalhotel=Integer.parseInt(request.getParameter("hotelapr"))+Integer.parseInt(request.getParameter("hotelmay"))+Integer.parseInt(request.getParameter("hoteljune"));
	    out.println(squatotalhotel);
	  %>
		 
		 </strong></font></td>
		 <td><font color="#573801" face="verdana" size="2"><strong>
		 <%
	    int squatotalenter=Integer.parseInt(request.getParameter("enterapr"))+Integer.parseInt(request.getParameter("entermay"))+Integer.parseInt(request.getParameter("enterjune"));
	    out.println(squatotalenter);
	  %>
		 
		 </strong></font></td>
		 <td><font color="#573801" face="verdana" size="2"><strong>
		 <%
	    int squatotalmisc=Integer.parseInt(request.getParameter("miscapr"))+Integer.parseInt(request.getParameter("miscapr"))+Integer.parseInt(request.getParameter("miscapr"));
	    out.println(squatotalmisc);
	  %>
		 </strong></font></td>
		 <td>
		  <font color="#573801" face="verdana" size="2">
		   <strong>
		    <%
			  int stotal=phoneapr+mealsapr+travelapr+hotelapr+enterapr+miscapr+phonemay+mealsmay+travelmay+hotelmay+entermay+miscmay+totaljune;
			  out.println(stotal);
			%>
		    </strong>
		   </font>
		 
		 </td>
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
		   <%out.println(request.getParameter("melasjuly"));%>
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
			  int totaljuly=Integer.parseInt(request.getParameter("phonejuly"))+Integer.parseInt(request.getParameter("melasjuly"))+Integer.parseInt(request.getParameter("traveljuly"))+Integer.parseInt(request.getParameter("hoteljuly"))+Integer.parseInt(request.getParameter("enterjuly"))+Integer.parseInt(request.getParameter("miscjuly"));
			  out.println(totaljuly);
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
		   <%out.println(request.getParameter("melasaugust"));%>
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
			  int totalaug1=Integer.parseInt(request.getParameter("phoneaugust"))+Integer.parseInt(request.getParameter("melasaugust"))+Integer.parseInt(request.getParameter("travelaugust"))+Integer.parseInt(request.getParameter("hotelaugust"))+Integer.parseInt(request.getParameter("enteraugust"))+Integer.parseInt(request.getParameter("miscaugust"));
			  out.println(totalaug1);
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
		   <%out.println(request.getParameter("melasseptember"));%>
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
			  int totalsep=Integer.parseInt(request.getParameter("phoneseptember"))+Integer.parseInt(request.getParameter("melasseptember"))+Integer.parseInt(request.getParameter("travelseptember"))+Integer.parseInt(request.getParameter("hotelseptember"))+Integer.parseInt(request.getParameter("enterseptember"))+Integer.parseInt(request.getParameter("miscseptember"));
			  out.println(totalsep);
			%>
		    </font>		  </td>
		</tr>
		<tr>
		 <td>
		  <font color="#573801" face="verdana" size="2"><strong>3rd Quarter Total</strong></font>
		 </td>
		 <td><font color="#573801" face="verdana" size="2"><strong>
		   <%
	    int trquatotal=Integer.parseInt(request.getParameter("phonejuly"))+Integer.parseInt(request.getParameter("phoneaugust"))+Integer.parseInt(request.getParameter("phoneseptember"));
	    out.println(trquatotal);
	  %>
		 </strong></font></td>
		 <td><font color="#573801" face="verdana" size="2"><strong>
		   <%
	    int trquatotalmeals=Integer.parseInt(request.getParameter("melasjuly"))+Integer.parseInt(request.getParameter("melasaugust"))+Integer.parseInt(request.getParameter("melasseptember"));
	    out.println(trquatotalmeals);
	  %>
		 </strong></font></td>
		 <td><font color="#573801" face="verdana" size="2"><strong>
		   <%
	    int trquatotaltravel=Integer.parseInt(request.getParameter("traveljuly"))+Integer.parseInt(request.getParameter("travelaugust"))+Integer.parseInt(request.getParameter("travelseptember"));
	    out.println(trquatotaltravel);
	  %>
		 </strong></font></td>
		 <td><font color="#573801" face="verdana" size="2"><strong>
		   <%
	    int trquatotalthotel=Integer.parseInt(request.getParameter("hoteljuly"))+Integer.parseInt(request.getParameter("hotelaugust"))+Integer.parseInt(request.getParameter("hotelseptember"));
	    out.println(trquatotalthotel);
	  %>
		 </strong></font></td>
		 <td><font color="#573801" face="verdana" size="2"><strong>
		   <%
	    int trquatotalenter=Integer.parseInt(request.getParameter("enterjuly"))+Integer.parseInt(request.getParameter("enteraugust"))+Integer.parseInt(request.getParameter("enterseptember"));
	    out.println(trquatotalenter);
	  %>
		 </strong></font></td>
		 <td><font color="#573801" face="verdana" size="2"><strong>
		   <%
	    int trquatotalmisc=Integer.parseInt(request.getParameter("miscjuly"))+Integer.parseInt(request.getParameter("miscaugust"))+Integer.parseInt(request.getParameter("miscseptember"));
	    out.println(trquatotalmisc);
	  %>
		 </strong></font></td>
		 <td><font color="#573801" face="verdana" size="2"><strong>
		   <%
	    int trtotal=totaljuly+totalaug1+totalsep;
	    out.println(trtotal);
	  %>
		 </strong></font></td>
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
		   <%out.println(request.getParameter("melasoctober"));%>
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
			  int totaloct=Integer.parseInt(request.getParameter("phoneoctober"))+Integer.parseInt(request.getParameter("melasoctober"))+Integer.parseInt(request.getParameter("traveloctober"))+Integer.parseInt(request.getParameter("hoteloctober"))+Integer.parseInt(request.getParameter("enteroctober"))+Integer.parseInt(request.getParameter("miscoctober"));
			  out.println(totaloct);
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
		   <%out.println(request.getParameter("melasnovember"));%>
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
			  int totalnov=Integer.parseInt(request.getParameter("phonenovember"))+Integer.parseInt(request.getParameter("melasnovember"))+Integer.parseInt(request.getParameter("travelnovember"))+Integer.parseInt(request.getParameter("hotelnovember"))+Integer.parseInt(request.getParameter("enternovember"))+Integer.parseInt(request.getParameter("miscnovember"));
			  out.println(totalnov);
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
		   <%out.println(request.getParameter("melasdecember"));%>
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
			  int totaldec=Integer.parseInt(request.getParameter("phonedecember"))+Integer.parseInt(request.getParameter("melasdecember"))+Integer.parseInt(request.getParameter("traveldecember"))+Integer.parseInt(request.getParameter("hoteldecember"))+Integer.parseInt(request.getParameter("enterdecember"))+Integer.parseInt(request.getParameter("miscdecember"));
			  out.println(totaldec);
			%>
		    </font>		  </td>
		</tr>
        <tr>
		 <td>
		  <font color="#573801" face="verdana" size="2"><strong>4th Quarter Total</strong></font>
		 </td>
		 <td><font color="#573801" face="verdana" size="2"><strong>
		   <%
	    int foquatotal=Integer.parseInt(request.getParameter("phoneoctober"))+Integer.parseInt(request.getParameter("phonenovember"))+Integer.parseInt(request.getParameter("phonedecember"));
	    out.println(foquatotal);
	  %>
		 </strong></font></td>
		 <td><font color="#573801" face="verdana" size="2"><strong>
		   <%
	    int foquatotalmeals=Integer.parseInt(request.getParameter("melasoctober"))+Integer.parseInt(request.getParameter("melasnovember"))+Integer.parseInt(request.getParameter("melasdecember"));
	    out.println(foquatotalmeals);
	  %>
		 </strong></font></td>
		 <td><font color="#573801" face="verdana" size="2"><strong>
		   <%
	    int foquatotaltravel=Integer.parseInt(request.getParameter("traveloctober"))+Integer.parseInt(request.getParameter("travelnovember"))+Integer.parseInt(request.getParameter("traveldecember"));
	    out.println(foquatotaltravel);
	  %>
		 </strong></font></td>
		 <td><font color="#573801" face="verdana" size="2"><strong>
		   <%
	    int foquatotalhotel=Integer.parseInt(request.getParameter("hoteloctober"))+Integer.parseInt(request.getParameter("hotelnovember"))+Integer.parseInt(request.getParameter("hoteldecember"));
	    out.println(foquatotalhotel);
	  %>
		 </strong></font></td>
		 <td><font color="#573801" face="verdana" size="2"><strong>
		   <%
	    int foquatotalenter=Integer.parseInt(request.getParameter("enteroctober"))+Integer.parseInt(request.getParameter("enternovember"))+Integer.parseInt(request.getParameter("enterdecember"));
	    out.println(foquatotalenter);
	  %>
		 </strong></font></td>
		 <td><font color="#573801" face="verdana" size="2"><strong>
		   <%
	    int foquatotalmisc=Integer.parseInt(request.getParameter("miscoctober"))+Integer.parseInt(request.getParameter("miscnovember"))+Integer.parseInt(request.getParameter("miscdecember"));
	    out.println(foquatotalmisc);
	  %>
		 </strong></font></td>
		 <td><font color="#573801" face="verdana" size="2"><strong>
		   <%
	    int fototal1=totaloct+totalnov+totaldec;
	    out.println(fototal1);
	  %>
		 </strong></font></td>
		</tr>
		<tr>
		 <td>
		  <font color="#573801" face="verdana" size="2"><strong>Annual Totals</strong></font>
		 </td>
		 <td><font color="#573801" face="verdana" size="2"><strong>
		   <%
	    int phonetotal=fquatotal+squatotal+trquatotal+foquatotal;
	    out.println(phonetotal);
	  %>
		 </strong></font></td>
		 <td><font color="#573801" face="verdana" size="2"><strong>
		   <%
	    int mealstotal=fquatotalmeals+squatotalmeals+trquatotalmeals+foquatotalmeals;
	    out.println(mealstotal);
	  %>
		 </strong></font></td>
		 <td><font color="#573801" face="verdana" size="2"><strong>
		   <%
	    int traveltotal=fquatotaltravel+squatotaltravel+trquatotaltravel+foquatotaltravel;
	    out.println(traveltotal);
	  %>
		 </strong></font></td>
		 <td><font color="#573801" face="verdana" size="2"><strong>
		   <%
	    int hoteltotal=fquatotalhotel+squatotalhotel+trquatotalthotel+foquatotalhotel;
	    out.println(hoteltotal);
	  %>
		 </strong></font></td>
		 <td><font color="#573801" face="verdana" size="2"><strong>
		   <%
	    int entertotal=fquatotalenter+squatotalenter+trquatotalenter+foquatotalenter;
	    out.println(entertotal);
	  %>
		 </strong></font></td>
		 <td><font color="#573801" face="verdana" size="2"><strong>
		   <%
	    int misctotal=fquatotalmisc+squatotalmisc+foquatotalmisc+foquatotalmisc;
	    out.println(misctotal);
	  %>
		 </strong></font></td>
		 <td><font color="#573801" face="verdana" size="2"><strong>
		   <%
	    int grandtotal=fquatotaltotal+stotal+trtotal+fototal1;
	    out.println(grandtotal);
	  %>
		 </strong></font></td>
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
