<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page  import="java.util.ArrayList" %>
<%@page import="com.svs.erp.Hr.db.*"%>
<html>
<body>
<%! String[] empids; %>
<center>You have selected: 
<% 
String fromdate=(String)session.getAttribute("fromdate");
String todate=(String)session.getAttribute("todate");
//////System.out.println(".....middle"+fromdate);
//////System.out.println(".....middle"+todate);
  ArrayList<String> empnumber = new ArrayList<String>();
   empids = request.getParameterValues("cbmail");
   if (empids != null) 
   {
      for (int i = 0; i < empids.length; i++) 
      {
        // out.println ("<b>"+empids[i]+"<b>");
		 empnumber.add(empids[i]);
		
      }
	  session.setAttribute("empnumber",empnumber);
		System.out.println ("empnumber"+empnumber);
		 response.sendRedirect("mail2emp");
   }
   else {
   out.println ("<b>Selected None<b>");
   session.setAttribute("none","Please Select Atleast One Employee");
     response.sendRedirect("empsearchformail?fromdate="+fromdate+"&todate="+todate+"");
   }
  
   
%>
</center>
</body>
</html>