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
<form action="annualreportsubmit2.jsp">
<tr>
 <td>
  <table align="center" width="800" bordercolor="#F0B269" bgcolor="#FADFC3" border="1">
    <tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">Year</font>
	 </td>
	 <td>
	   <input type="text" name="year">
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">Sales Person</font>
	  </td>
	  <td>
	   <input type="text" name="salesperson">
	  </td>
	</tr>
	<tr>
	  <td>
	   <font color="#573801" face="verdana" size="2">Address</font>
	  </td>
	  <td>
	   <textarea  name="address"></textarea>
	  </td>
	 
	</tr>
	<tr>
	
	 <td>
	  <font color="#573801" face="verdana" size="2">City</font>
	 </td>
	 <td>
	  <input type="text" name="city">
	 </td>
	 <td>
	  <font color="#573801" face="verdana" size="2">State</font>
	 </td>
	 <td>
	  <input type="text" name="state">
	 </td>
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
	  <input type="text" name="territory">
	 </td>
	 <td>
	  <input type="text" name="region">
	  </td>
	  <td>
	   <input type="text" name="product">
	  </td>
	  <td>
	   <input type="text" name="praparedby">
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
	  <strong><font color="" face="verdana" size="2">Entertainment</font></strong></td>
	<td>
	  <strong><font color="#573801" face="verdana" size="2">Misc.</font>
	  </strong></td>
	
	</tr>   
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">January</font>
	 </td>
	 <td>
	  <input type="text" name="phonejan" size="10">
	 </td>
	 <td>
	  <input type="text" name="mealsjan" size="10">
	 </td>
	 <td>
	 <input type="text" name="traveljan" size="10">
	  </td>
	  <td>
	   <input type="text" name="hoteljan" size="10">
	  </td>
	  <td>
	   <input type="text" name="enterjan" size="10">
	  </td>
	  
	  <td>
       <input type="text" name="miscjan" size="10">
	  </td>
	  
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">February</font>
	 </td>
	 <td>
	  <input type="text" name="phonefeb" size="10">
	 </td>
	 <td>
	  <input type="text" name="mealsfeb" size="10">
	 </td>
	 <td>
	  <input type="text" name="travelfeb" size="10">
	 </td>
	 <td>
	  <input type="text" name="hotelfeb" size="10">
	 </td>
	 <td>
	  <input type="text" name="enterfeb" size="10">
	 </td>
	 <td>
	  <input type="text" name="miscfeb" size="10">
	 </td>
	
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">March</font>
	 </td>
	 <td>
	  <input type="text" name="phonemar" size="10">
	  </td>
	  <td>
	   <input type="text" name="mealsmar" size="10">
	  </td>
	  <td>
	   <input type="text" name="travelmar" size="10">
	  </td>
	  <td>
	   <input type="text" name="hotelmar" size="10">
	  </td>
	  <td>
	   <input type="text" name="entermar" size="10">
	  </td>
	 <td>
	  <input type="text" name="miscmar" size="10">
	 </td>
	 
	</tr>
	<tr>
	 <td colspan="7">
	  <font color="#573801" face="verdana" size="2"><strong>1st Quarter</strong></font></td>
	
	</tr>
	<tr>
	 <td>
	  <font color="#573801" face="verdana" size="2">April</font>
	  </td>
	  <td>
	   <input type="text" name="phoneapr" size="10">
	   </td>
	   <td>
	    <input type="text" name="mealsapr" size="10">
	   </td>
	   <td>
	    <input type="text" name="travelapr" size="10">
	   </td>
	   <td>
	    <input type="text" name="hotelapr" size="10">
	   </td>
	   <td>
	    <input type="text" name="enterapr" size="10">
	   </td>
	   <td>
	    <input type="text" name="miscapr" size="10">
	   </td>
	  
	   	</tr>
		<tr>
		 <td>
		  <font color="#573801" face="verdana" size="2">May</font>
		 </td>
		 <td>
		  <input type="text" name="phonemay" size="10">
		 </td>
		 <td>
		  <input type="text" name="mealsmay" size="10"> 
		 </td>
		 <td>
		  <input type="text" name="travelmay" size="10">
		 </td>
		 <td>
		  <input type="text" name="hotelmay" size="10">
		 </td>
		 <td>
		  <input type="text" name="entermay" size="10">
		 </td>
		 <td>
		  <input type="text" name="miscmay" size="10">
		  </td>
		  
		</tr>
		<tr>
		 <td>
		  <font color="#573801" face="verdana" size="2">June</font>
		 </td>
		 <td>
		  <input type="text" name="phonejune" size="10">
		 </td>
		 <td>
		  <input type="text" name="melasjune" size="10">
		 </td>
		  <td>
		  <input type="text" name="traveljune" size="10">
		 </td> 
		 <td>
		  <input type="text" name="hoteljune" size="10">
		 </td>
		 <td>
		  <input type="text" name="enterjune" size="10">
		  </td>
		  <td>
		   <input type="text" name="miscjune" size="10">
		  </td>
		 
		</tr>
		<tr>
		 <td colspan="7">
		  <font color="#573801" face="verdana" size="2"><strong>2nd Quarter</strong></font>
		 </td>
		
		</tr>
		<tr>
		 <td>
		  <font color="#573801" face="verdana" size="2">July</font>
		 </td>
		 <td>
		  <input type="text" name="phonejuly" size="10">
		 </td>
		 <td>
		  <input type="text" name="melasjuly" size="10">
		 </td>
		  <td>
		  <input type="text" name="traveljuly" size="10">
		 </td> 
		 <td>
		  <input type="text" name="hoteljuly" size="10">
		 </td>
		 <td>
		  <input type="text" name="enterjuly" size="10">
		  </td>
		  <td>
		   <input type="text" name="miscjuly" size="10">
		  </td>
		  
		</tr>
		<tr>
		 <td>
		  <font color="#573801" face="verdana" size="2">August</font>
		 </td>
		 <td>
		  <input type="text" name="phoneaugust" size="10">
		 </td>
		 <td>
		  <input type="text" name="melasaugust" size="10">
		 </td>
		  <td>
		  <input type="text" name="travelaugust" size="10">
		 </td> 
		 <td>
		  <input type="text" name="hotelaugust" size="10">
		 </td>
		 <td>
		  <input type="text" name="enteraugust" size="10">
		  </td>
		  <td>
		   <input type="text" name="miscaugust" size="10">
		  </td>
		  
		</tr>
       <tr>
		 <td>
		  <font color="#573801" face="verdana" size="2">September</font>
		 </td>
		 <td>
		  <input type="text" name="phoneseptember" size="10">
		 </td>
		 <td>
		  <input type="text" name="melasseptember" size="10">
		 </td>
		  <td>
		  <input type="text" name="travelseptember" size="10">
		 </td> 
		 <td>
		  <input type="text" name="hotelseptember" size="10">
		 </td>
		 <td>
		  <input type="text" name="enterseptember" size="10">
		  </td>
		  <td>
		   <input type="text" name="miscseptember" size="10">
		  </td>
		 
		</tr>
		<tr>
		 <td colspan="7">
		  <font color="#573801" face="verdana" size="2"><strong>3rd Quarter</strong></font></td>
		 
		</tr>
		 <tr>
		 <td>
		  <font color="#573801" face="verdana" size="2">October</font>
		 </td>
		 <td>
		  <input type="text" name="phoneoctober" size="10">
		 </td>
		 <td>
		  <input type="text" name="melasoctober" size="10">
		 </td>
		  <td>
		  <input type="text" name="traveloctober" size="10">
		 </td> 
		 <td>
		  <input type="text" name="hoteloctober" size="10">
		 </td>
		 <td>
		  <input type="text" name="enteroctober" size="10">
		  </td>
		  <td>
		   <input type="text" name="miscoctober" size="10">
		  </td>
		 
		</tr>
       <tr>
		 <td>
		  <font color="#573801" face="verdana" size="2">November</font>
		 </td>
		 <td>
		  <input type="text" name="phonenovember" size="10">
		 </td>
		 <td>
		  <input type="text" name="melasnovember" size="10">
		 </td>
		  <td>
		  <input type="text" name="travelnovember" size="10">
		 </td> 
		 <td>
		  <input type="text" name="hotelnovember" size="10">
		 </td>
		 <td>
		  <input type="text" name="enternovember" size="10">
		  </td>
		  <td>
		   <input type="text" name="miscnovember" size="10">
		  </td>
		 		</tr>
         <tr>
		 <td>
		  <font color="#573801" face="verdana" size="2">December</font>
		 </td>
		 <td>
		  <input type="text" name="phonedecember" size="10">
		 </td>
		 <td>
		  <input type="text" name="melasdecember" size="10">
		 </td>
		  <td>
		  <input type="text" name="traveldecember" size="10">
		 </td> 
		 <td>
		  <input type="text" name="hoteldecember" size="10">
		 </td>
		 <td>
		  <input type="text" name="enterdecember" size="10">
		  </td>
		  <td>
		   <input type="text" name="miscdecember" size="10">
		  </td>
		 
		</tr>
        <tr>
		 <td colspan="7">
		  <font color="#573801" face="verdana" size="2"><strong>4th Quarter </strong></font>
		 </td>
		 
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
