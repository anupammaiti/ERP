<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<jsp:useBean id="conn" scope="application" class="com.Connect" />
<jsp:useBean id="fconn" scope="application" class="com.Fconnect" />
<jsp:useBean id="fconn1" scope="application" class="com.Fconnect1" />
<%--<jsp:useBean id="bittergaurd" scope="application" class="com.Pickelsbittergaurd" />--%>
<jsp:useBean id="pickels" scope="application" class="com.Pickels" />


<html>
<head>
<title>add2cartpick1</title>

<style type="text/css">
<!--
.ajay {
}
-->
</style>
</head>

<body background="grey.gif">
<marquee ><font size="5" color="#0000FF">e-Serve</font>
</marquee>
<table width="386" height="32" align="center">
      <tr>
        <td width="50" height="26"><form action="home9.jsp">
            <input name="" type="submit" class="style.css" id="style" title="style" value="   Home    ">
        </form></td>
        <td><form action="products.jsp">
            <input type="submit" value=" Products ">
        </form></td>
        <td><form action="services.jsp">
            <input type="submit" value=" Services " alt="Serviecs">
        </form></td>
        <td><form action="shoppingcart.jsp">
            <input type="submit"  value=" Add2Cart " alt="Add to Cart">
        </form></td>
        <td width="50"><form action="login.jsp">
            <input type="submit" value="  Login  " alt="Search">
        </form></td>
      </tr>
</table>


<table  height="469" border="1"  align="center" background="bg_xmas.jpg">
  <tr>
    <td width="109" height="31">&nbsp;</td>
    <td width="554" align="center">
	<h3><font color="#0000FF" size="5">&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;  Welcome To Online Shopping</font></h3>
	</td>
    
  </tr>
  <tr>
    <td height="333" width="109">
   <table>
      <tr><td>&nbsp;</td>
         <td align="center"> <img src="subse-title-products.jpg"/></td>
     </tr>
      <tr><td align="right"><img src="minus.JPG"/></td>
        <td align="left"><a href="home11.jsp"> <font color="blue">Groceries</font>   </a></td>
		</tr>
		<tr><td>&nbsp;</td>
		<td height="7">

<table align="right">
<%
    ResultSet rs=conn.connection();
    while(rs.next())
     {
       out.println("<tr>");
	   out.println("<td>");
	   out.println("<img src=\"plus.JPG\"/>");
	   out.println("</td>");
       out.println("<td align=\"left\">");
	   
       
	   if(rs.getString(2).equalsIgnoreCase("groceries"))
	    {
		  out.println("<a href=\"gr_groceries.jsp\" >");
		  out.println(rs.getString(2));
	      out.println("</a>");
	   }
	   if(rs.getString(2).equalsIgnoreCase("foods"))
	    {
		  out.println("<a href=\"foods.jsp\" >");
		  out.println(rs.getString(2));
		    ResultSet frs=fconn.connection();
    while(frs.next())
     {
       out.println("<tr>");
	   //out.println("<td width=\"0\"></td>");
	   out.println("<td>");
	   
	   out.println("<img src=\"arrow.gif\"/>");
	   out.println("</td>");
       out.println("<td align=\"left\">");
	   
       
	   if(frs.getString(2).equalsIgnoreCase("Jams"))
	    {
		  out.println("<a href=\"jams.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Sauces"))
	    {
		  out.println("<a href=\"sauces.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Pickels"))
	    {
		  out.println("<a href=\"pickels.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Papads"))
	    {
		  out.println("<a href=\"papads.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Ketchups"))
	    {
		  out.println("<a href=\"Ketchups.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("MilkFoodDrinks"))
	    {
		  out.println("<a href=\"milkfooddrinks.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Tea"))
	    {
		  out.println("<a href=\"tea.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Coffee"))
	    {
		  out.println("<a href=\"coffee.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	    if(frs.getString(2).equalsIgnoreCase("CoolDrinks"))
	    {
		  out.println("<a href=\"cooldrinks.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Cream"))
	    {
		  out.println("<a href=\"cream.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Wafer"))
	    {
		  out.println("<a href=\"Wafer.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Cookies"))
	    {
		  out.println("<a href=\"cookies.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Oats"))
	    {
		  out.println("<a href=\"oats.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Cornflakes"))
	    {
		  out.println("<a href=\"cornflakes.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Bars"))
	    {
		  out.println("<a href=\"Bars.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Giftboxs"))
	    {
		  out.println("<a href=\"giftboxes.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Eclairs"))
	    {
		  out.println("<a href=\"Eclairs.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Toffee"))
	    {
		  out.println("<a href=\"toffee.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Candy"))
	    {
		  out.println("<a href=\"candy.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Sugar panned"))
	    {
		  out.println("<a href=\"sugarpanned.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Lollipop"))
	    {
		  out.println("<a href=\"lollipop.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("ChewingGum"))
	    {
		  out.println("<a href=\"chewinggum.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Mouth Freshner"))
	    {
		  out.println("<a href=\"mouthfreshner.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("chyawanprash"))
	    {
		  out.println("<a href=\"chyawanprash.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Dates"))
	    {
		  out.println("<a href=\"dates.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Honey"))
	    {
		  out.println("<a href=\"honey.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Glucose powder"))
	    {
		  out.println("<a href=\"glucosepowder.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Instant masala"))
	    {

		  out.println("<a href=\"instantmasala.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Gulabjamun"))
	    {
		  out.println("<a href=\"gulabjamun.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Vermicelly/Kheer"))
	    {
		  out.println("<a href=\"vermicelly.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   
	   if(frs.getString(2).equalsIgnoreCase("Drymix"))
	    {
		  out.println("<a href=\"drymix.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   	   
	   
	   
	   if(frs.getString(2).equalsIgnoreCase("Pasta"))
	    {
		  out.println("<a href=\"pasta.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Masalapowder"))
	    {
		  out.println("<a href=\"masalapowder.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Instant Noodles"))
	    {
		  out.println("<a href=\"instantnoodles.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Palak paneer"))
	    {
		  out.println("<a href=\"palakpaneer.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Dals"))
	    {
		  out.println("<a href=\"dals.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Pav Bhaji"))
	    {
		  out.println("<a href=\"pavbhaji.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	   if(frs.getString(2).equalsIgnoreCase("Alloo matar"))
	    {
		  out.println("<a href=\"alloomatar.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	    if(frs.getString(2).equalsIgnoreCase("Chips"))
	    {
		  out.println("<a href=\"chips.jsp\" >");
		  out.println(frs.getString(2));
	      out.println("</a>");
	   }
	    
	   
       out.println("</td>");    

       out.println("</tr>");
 }
		  	      out.println("</a>");
	   }
	   
	   if(rs.getString(2).equalsIgnoreCase("household"))
	    {
		  out.println("<a href=\"household.jsp\" >");
		  out.println(rs.getString(2));
	      out.println("</a>");
	   }
	   if(rs.getString(2).equalsIgnoreCase("childcare"))
	    {
		  out.println("<a href=\"childcare.jsp\" >");
		  out.println(rs.getString(2));
	      out.println("</a>");
	   }
	   if(rs.getString(2).equalsIgnoreCase("toiletries"))
	    {
		  out.println("<a href=\"groceries.jsp\" >");
		  out.println(rs.getString(2));
	      
		  out.println("</a>");
	   }
	   if(rs.getString(2).equalsIgnoreCase("pharmacy"))
	    {
		  out.println("<a href=\"pharmacy.jsp\" >");
		  out.println(rs.getString(2));
	      out.println("</a>");
	   }
	   if(rs.getString(2).equalsIgnoreCase("jewellery"))
	    {
		  out.println("<a href=\"jewellery.jsp\" >");
		  out.println(rs.getString(2));
	      out.println("</a>");
	   }

	    if(rs.getString(2).equalsIgnoreCase("Fruits"))
	    {
		  out.println("<a href=\"fruits.jsp\" >");
		  out.println(rs.getString(2));
	      out.println("</a>");
	   }
	   if(rs.getString(2).equalsIgnoreCase("Vegetables"))
	    {
		  out.println("<a href=\"groceries.jsp\" >");
		  out.println(rs.getString(2));
		  out.println("</a>");
	   }
       out.println("</td>");    

       out.println("</td>");    
      
       out.println("</tr>");
 }
%>  


</table>

		
	</td>
      </tr>
      <tr><td align="right"><img src="plus.JPG"/></td>
        <td align="leftt"><a href="electonics.jsp"><font color="blue">Electronics</font> </a></td>
      </tr>
      <tr><td align="right"><img src="plus.JPG"/></td>
        <td align="left"><a href="garments.jsp"><font color="blue">Garments</font></a></td>
      </tr>
      <tr><td align="right"><img src="plus.JPG"/></td>
        <td align="left"><a href="cellphones.jsp"><font color="blue">Stationary</font></a></td>
      </tr>
      <tr><td align="right"><img src="plus.JPG"/></td>
        <td align="left"><a href="homeneeds.jsp"><font color="blue">Homeneeds</font></a></td>
      </tr>
	  
    </table>
	
	
	
 </td>
	
  <td align="center">
    <table>
     <tr>
	 <form action="search.jsp">
       <td>
        <select name="product">
       <option value="-1">--Select--</option>
   
       <%
           ResultSet frs=fconn1.connection();
           //int i;
           while(frs.next())
	         {

	           out.println("<option>");
	           out.println(frs.getString(2));
               out.println("</option>");
	 
	 
	         }
        %>	
 
       </select>
	   </td>
	<td>
	
      <input type="text" name="search">	
      <input type="submit" value="Search">
	
	</td>
	</form>
	</tr>
	</table>	
	
	
	<table>
      <tr>
        <td height="300">
		
		
		<%  
	    int bill=0;
		out.println("<table align=\"center\" border=\"1\">");
		out.println("<tr>");
		out.println("<th>");
		out.println("<font color=\"#CB384B\">");
		out.println("Brand");
		out.println("</th>");
		
		out.println("<th>");
		out.println("<font color=\"#CB384B\">");
		out.println("ProductName");
		out.println("</th>");
		out.println("<th>");
		out.println("<font color=\"#CB384B\">");
		out.println("No.of Pieces");
		
		out.println("<th>");
		out.println("<font color=\"#CB384B\">");
		out.println("Price Rs/-");
		out.println("</font>");
		out.println("<th>");
		out.println("<font color=\"#CB384B\">");
		out.println("Bill");
		out.println("</font>");
		out.println("</tr>");
	    
		/*Hashtable hs=request.getParameter("hs");
		Enumeration e=hs.keys();
		while(e.hasMoreElements())
		{
		  out.println(e.next());
		}*/
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection conn11=DriverManager.getConnection("jdbc:mysql://localhost:3306/eserve","root","root");
	 Statement stmt11=conn11.createStatement();
	 String str11="select * from pickels";
	 ResultSet rs11=stmt11.executeQuery(str11);
	 int i=0;
	 float total=0.0f;
	 while(rs11.next())
	   {
	     out.println("<tr>");
		  out.println("<form action="delete.jsp">");
          String test=request.getParameter(rs11.getString(2));
		  String test1=rs11.getString(2);
           i++;
		  if( test1.equals(test))
		  {
		  out.println("<td>");
		  out.println(rs11.getString(1));
		  
		  out.println("</td>");
		  out.println("<td>");
		  out.println(rs11.getString(2));
		  out.println("</td>");
		  out.println("<td>");
		  out.println(request.getParameter("pickelscount"+rs11.getString(2)));
		  out.println("</td>");
		  out.println("<td>");
		  
           out.println(rs11.getString(5));
		   out.println("</td>");
           out.println("<td>");
		   int count=Integer.parseInt(request.getParameter("pickelscount"+rs11.getString(2)));
		   int price=Integer.parseInt(rs11.getString(5));
		   float bill1=count*price;
		   out.println(bill1);
		   total =total+bill1;
		   out.println("</td>");
		   out.println("<td>");
		   out.println("<input type=submit value=Delete name='"+rs.getString(2)+"'>");
		   out.println("</td>");
		   out.println("</form>");
		   out.println("</tr>");
		    out.println(session.getAttribute(""+(i)));
			out.println(i);
			out.println("<br>");
			
		   // out.println(session.getAttribute(i++));
		   
		  }
		test="";
       //out.println(session.getAttribute("24"));
     }
      out.println("total="+total);
		
		
		
		
	%>
          <tr>
            <td></td>
            <td></td>
            <td><form action="pickels.jsp">
                <input type="submit" value="Back">
            </form></td>
            <td><form action="home11.jsp">
                <input type="submit" value="Home">
            </form></td>
        </tr>
    </table></td>
  </tr>
</table>
	
	
	</td>
    
  <table height="200">
  <tr>&nbsp;</tr>
  </table>

  </tr>
</table>

</body>
</html>
