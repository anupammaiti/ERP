<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@page import="java.util.*"%>
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
<h4 align="center"><font color="#573801" face="verdana" size="3">Weekly Expense Report</font></h4>
<%
Vector v1=new Vector();
String fromdate=request.getParameter("fromdate").toString();
String todate=request.getParameter("todate").toString();

Class.forName("com.mysql.jdbc.Driver");
 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
// String str1="select * from travel_expenses where dept=? and date1 between '"+fromdate+"' and '"+todate+"'";
  String str1="select * from travel_expenses where dept=? and date1 between ? and ? and empname=?";
 PreparedStatement pstmt=conn.prepareStatement(str1);
  pstmt.setString(1,request.getParameter("dept"));
  pstmt.setString(2,request.getParameter("fromdate"));
  pstmt.setString(3,request.getParameter("todate"));
  pstmt.setString(4,request.getParameter("empname"));


 //pstmt.setString(2,request.getParameter("fromdate"));
 // pstmt.setString(3,request.getParameter("todate"));
  // pstmt.setString(4,request.getParameter("empname"));

 ResultSet rs=pstmt.executeQuery();
 String str="";
 while(rs.next())
 {
    v1.add(rs.getString(1));
   //v1.add(rs.getString(2));
   //v1.add(rs.getString(3));
   //v1.add(rs.getString(4));
   //v1.add(rs.getString(5));
   //v1.add(rs.getString(6));
   //v1.add(rs.getString(7));
   //v1.add(rs.getString(8));
   //v1.add(rs.getString(9));
   //v1.add(rs.getString(10));
   //v1.add(rs.getString(11));
   //v1.add(rs.getString(12));
   //v1.add(rs.getString(13));
   //v1.add(rs.getString(14));
   //v1.add(rs.getString(15));
   //v1.add(rs.getString(16));
   v1.add(rs.getString(17));
   //v1.add(rs.getString(18));
   v1.add(rs.getString(19));
   str=rs.getString(1);
   str+="-";
   str+=rs.getString(2);
   str+="-";
   str+=rs.getString(3);
   str+="-";
   str+=rs.getString(4);
   str+="-";
   str+=rs.getString(5);
   str+="-";
   str+=rs.getString(6);
   str+="-";
   str+=rs.getString(7);
   str+="-";
   str+=rs.getString(8);
   str+="-";
   str+=rs.getString(9);
   str+="-";
   str+=rs.getString(10);
   str+="-";
   str+=rs.getString(11);
   str+="-";
   str+=rs.getString(12);
   str+="-";
   str+=rs.getString(13);
   str+="-";
   str+=rs.getString(14);
   str+="-";
   str+=rs.getString(15);
   str+="-";
   str+=rs.getString(16);
   str+="-";
   str+=rs.getString(17);
   str+="-";
   str+=rs.getString(18);
   
  }
  out.println(v1);
//out.println(str);
conn.close();
%>
<%
Vector v4=new Vector();
Class.forName("com.mysql.jdbc.Driver");
Connection conn4=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
 String str4="select * from phone_bill where dept=?";
 PreparedStatement stmt4=conn4.prepareStatement(str4);
 stmt4.setString(1,request.getParameter("dept"));
 ResultSet rs4=stmt4.executeQuery();
 String stra2="";
 while(rs4.next())
 {
   //out.println(rs1.getString(1));
   //out.println(rs1.getString(2));
   //out.println(rs1.getString(3));
   v4.add(rs4.getString(1));
   v4.add(rs4.getString(2));
   v4.add(rs4.getString(3));
   v4.add(rs4.getString(4));
   v4.add(rs4.getString(5));
   v4.add(rs4.getString(6));
   v4.add(rs4.getString(7));
   v4.add(rs4.getString(8));
   v4.add(rs4.getString(9));
   
   stra2+=rs4.getString(1);
   stra2+=rs4.getString(2);
   stra2+=rs4.getString(3);
   stra2+=rs4.getString(4);
   stra2+=rs4.getString(5);
   stra2+=rs4.getString(6);
   stra2+=rs4.getString(7);
   stra2+=rs4.getString(8);
   
 }
// out.println(stra2);
//out.println(v4);
%>
<%
Vector v5=new Vector();
Class.forName("com.mysql.jdbc.Driver");
Connection conn5=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
 String str5="select * from hotel_expenses where dept=? and date1 between ? and ? and empname=?";
 PreparedStatement stmt5=conn5.prepareStatement(str5);
 stmt5.setString(1,request.getParameter("dept"));
 stmt5.setString(2,request.getParameter("fromdate"));
 stmt5.setString(3,request.getParameter("todate"));
 stmt5.setString(4,request.getParameter("empname"));
 ResultSet rs5=stmt5.executeQuery();
String stra3="";
 while(rs5.next())
 {
   //out.println(rs1.getString(1));
   //out.println(rs1.getString(2));
   //out.println(rs1.getString(3));
   //v5.add(rs5.getString(1));
  // v5.add(rs5.getString(2));
  // v5.add(rs5.getString(3));
  //v5.add(rs5.getString(4));
   v5.add(rs5.getString(5));
  // v5.add(rs5.getString(6));
  // v5.add(rs5.getString(7));
  // v5.add(rs5.getString(8));
   
  // v5.add(rs5.getString(9));
   v5.add(rs5.getString(10));
  // v5.add(rs5.getString(11));
   v5.add(rs5.getString(12));
   
   stra2+=rs5.getString(1);
   stra2+=rs5.getString(2);
   stra2+=rs5.getString(3);
   stra2+=rs5.getString(4);
   stra2+=rs5.getString(5);
   stra2+=rs5.getString(6);
   stra2+=rs5.getString(7);
   stra2+=rs5.getString(8);
   
 }
// out.println(stra2);
//out.println(v5);
%>
<%
Vector v6=new Vector();
Class.forName("com.mysql.jdbc.Driver");
Connection conn6=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
 String str6="select * from enter_expenses where dept=?";
 PreparedStatement stmt6=conn6.prepareStatement(str6);
 stmt6.setString(1,request.getParameter("dept"));
 ResultSet rs6=stmt6.executeQuery();
String stra6="";
 while(rs6.next())
 {
   //out.println(rs1.getString(1));
   //out.println(rs1.getString(2));
   //out.println(rs1.getString(3));
 //  v6.add(rs6.getString(1));
  // v6.add(rs6.getString(2));
   //v6.add(rs6.getString(3));
   //v6.add(rs6.getString(4));
   v6.add(rs6.getString(5));
   v6.add(rs6.getString(6));
   //v6.add(rs6.getString(7));
   v6.add(rs6.getString(8));
   
   
   stra2+=rs6.getString(1);
   stra2+=rs6.getString(2);
   stra2+=rs6.getString(3);
   stra2+=rs6.getString(4);
   stra2+=rs6.getString(5);
   stra2+=rs6.getString(6);
   stra2+=rs6.getString(7);
   
   
 }
// out.println(stra2);
out.println(v6);
%>
<%
Vector v7=new Vector();
Class.forName("com.mysql.jdbc.Driver");
Connection conn7=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
 String str7="select * from misc_expenses where dept=?";
 PreparedStatement stmt7=conn7.prepareStatement(str7);
 stmt7.setString(1,request.getParameter("dept"));
 ResultSet rs7=stmt7.executeQuery();
String stra7="";
 while(rs7.next())
 {
   //out.println(rs1.getString(1));
   //out.println(rs1.getString(2));
   //out.println(rs1.getString(3));
  // v7.add(rs7.getString(1));
   //v7.add(rs7.getString(2));
   //v7.add(rs7.getString(3));
   //v7.add(rs7.getString(4));
   v7.add(rs7.getString(5));
   //v7.add(rs7.getString(6));
   v7.add(rs7.getString(7));
   //v7.add(rs7.getString(8));
   v7.add(rs7.getString(9));
   
   
   stra2+=rs7.getString(1);
   stra2+=rs7.getString(2);
   stra2+=rs7.getString(3);
   stra2+=rs7.getString(4);
   stra2+=rs7.getString(5);
   stra2+=rs7.getString(6);
   stra2+=rs7.getString(7);
  
   
 }
// out.println(stra2);
out.println(v7);
%>
<%
Vector v8=new Vector();
Class.forName("com.mysql.jdbc.Driver");
Connection conn8=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
 String str8="select * from food_expenses where dept=?";
 PreparedStatement stmt8=conn8.prepareStatement(str8);
 stmt8.setString(1,request.getParameter("dept"));
 ResultSet rs8=stmt8.executeQuery();
String stra8="";
 while(rs8.next())
 {
   //out.println(rs1.getString(1));
   //out.println(rs1.getString(2));
   //out.println(rs1.getString(3));
  // v8.add(rs8.getString(1));
   //v8.add(rs8.getString(2));
  // v8.add(rs8.getString(3));
  // v8.add(rs8.getString(4));
   v8.add(rs8.getString(5));
   v8.add(rs8.getString(6));
  // v8.add(rs8.getString(7));
   v8.add(rs8.getString(8));
   
   
   stra2+=rs8.getString(1);
   stra2+=rs8.getString(2);
   stra2+=rs8.getString(3);
   stra2+=rs8.getString(4);
   stra2+=rs8.getString(5);
   stra2+=rs8.getString(6);
   stra2+=rs8.getString(7);
  
   
 }
// out.println(stra2);
out.println(v8);
%>


<table align="center" width="800" bordercolor="#F0B269" bgcolor="#FADFC3" border="1">

<tr>
 <td>
  <table align="center" border="1" bgcolor="#FADFC3" bordercolor="#F0B269" width="800">
   <tr>
    <td>
	 <font color="#573801" face="verdana" size="2">
	  <strong>Period Covered:</strong>	  </font>
	</td>
	<td>
	 <font color="#573801" face="verdana" size="2"><strong>from</strong></font>
	 <font color="#573801" face="verdana" size="2">
	 <%
	 
	  out.println(request.getParameter("fromdate"));%>
	  </font>
	</td>
	 <td>
	  <font color="#573801" face="verdana" size="2"><strong>To</strong></font>
	  <font color="#573801" face="verdana" size="2">
	 <% out.println(request.getParameter("todate"));%>
	 </font>
	 </td>
   </tr>
  </table>
 </td>
</tr>
<tr>
 <td>
  <table align="center" width="800" bordercolor="#F0B269" bgcolor="#FADFC3" border="1">
   <tr>
    <td width="356">
	  <strong><font color="#573801" face="verdana" size="2">Name</font>
	  </strong></td>
	<td width="428">
	  <strong><font color="#573801" face="verdana" size="2">Dept/Sales Office</font>
	  </strong></td>
	
     
	
	
   </tr>
   <tr>
      <td><font color="#573801" face="verdana" size="2">
	    <% out.println(request.getParameter("empname"));%></font>
	  </td>
	  <td><font color="#573801" face="verdana" size="2">
	    <% out.println(request.getParameter("dept"));%></font>
	   </td>
	 
	   	 
	  
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
	   Hotel</font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	   Food
	   </font>
	   </strong></td>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
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
	    <%
	 out.println("<font color=#573801 face=verdana size=2>");
	
 	  if(v1.size()!=0)
	 {
	 for(int i=0;i<v1.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v1.get(i).toString().equals("SUN"))
	  out.println(v1.get(i-2));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	  out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v1.size()!=0)
	 {
	 for(int i=0;i<v1.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v1.get(i).toString().equals("SUN"))
	  {
	  int s=Integer.parseInt(v1.get(i-1).toString());
	  out.println(v1.get(i-1));
	  }
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v5.size()!=0)
	 {
	 for(int i=0;i<v5.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v5.get(i).toString().equals("SUN"))
	  out.println(v5.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v8.size()!=0)
	 {
	 for(int i=0;i<v8.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v8.get(i).toString().equals("SUN"))
	  out.println(v8.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v6.size()!=0)
	 {
	 for(int i=0;i<v6.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v6.get(i).toString().equals("SUN"))
	  out.println(v6.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v7.size()!=0)
	 {
	 for(int i=0;i<v7.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v7.get(i).toString().equals("SUN"))
	  out.println(v7.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  out.println("<font color=#573801 face=verdana size=2>");
	// if(v1.size()!=0 && v4.size()!=0 && v5.size()!=0 && v8.size()!=0 && v6.size()!=0 && v7.size()!=0)
	//  {
	int trasun=0,phosun=0,hotelsun=0,foodsun=0,entersun=0,miscsun=0;
	/* if(v1.size()!=0)
	 {
	 for(int i=0;i<v1.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v1.get(i).toString().equals("SUN"))
	  {
	  trasun=Integer.parseInt(v1.get(i-1).toString());
	   	  //out.println(v1.get(i-1));
	  }*/
		if(v1.size()>1)
	{
		for(int i=0;i<v1.size();i++)
	 {
	 
	  if( v1.get(i).toString().equals("SUN"))
	  phosun=Integer.parseInt(v1.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		
		if(v5.size()>1)
	{
		for(int i=0;i<v5.size();i++)
	 {
	 
	  if( v5.get(i).toString().equals("SUN"))
	  hotelsun=Integer.parseInt(v5.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		if(v8.size()>1)
	{
		for(int i=0;i<v8.size();i++)
	 {
	 
	  if( v8.get(i).toString().equals("SUN"))
	  foodsun=Integer.parseInt(v8.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		if(v6.size()>1)
	{
		for(int i=0;i<v6.size();i++)
	 {
	 
	  if( v6.get(i).toString().equals("SUN"))
	  entersun=Integer.parseInt(v6.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		if(v7.size()>1)
	{
		for(int i=0;i<v7.size();i++)
	 {
	 
	  if( v7.get(i).toString().equals("SUN"))
	  miscsun=Integer.parseInt(v7.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		//out.println(v1.get(16).toString());
         int totalsun=miscsun+entersun+foodsun+hotelsun+phosun+trasun;
		out.println(miscsun+entersun+foodsun+hotelsun+phosun+trasun);
 	//  }
	  //String sun1=v1.get(16).toString();
	//  else
	//  {}
	  out.println("</font>");
	  %>
	 </td>
	</tr>
	<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	  
	    MON
	   </font>
	   </strong></td>
	 <td>
	    <%
	 out.println("<font color=#573801 face=verdana size=2>");
	
 	  if(v1.size()!=0)
	 {
	 for(int i=0;i<v1.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v1.get(i).toString().equals("MON"))
	  out.println(v1.get(i-2));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	  out.println("</font>");
	  %>
	 </td>
	 <td>
	  <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v1.size()!=0)
	 {
	 for(int i=0;i<v1.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v1.get(i).toString().equals("MON"))
	  out.println(v1.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v5.size()!=0)
	 {
	 for(int i=0;i<v5.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v5.get(i).toString().equals("MON"))
	  out.println(v5.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v8.size()!=0)
	 {
	 for(int i=0;i<v8.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v8.get(i).toString().equals("MON"))
	  out.println(v8.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v6.size()!=0)
	 {
	 for(int i=0;i<v6.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v6.get(i).toString().equals("MON"))
	  out.println(v6.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v7.size()!=0)
	 {
	 for(int i=0;i<v7.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v7.get(i).toString().equals("MON"))
	  out.println(v7.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
       <%
	  out.println("<font color=#573801 face=verdana size=2>");
	// if(v1.size()!=0 && v4.size()!=0 && v5.size()!=0 && v8.size()!=0 && v6.size()!=0 && v7.size()!=0)
	//  {
	 trasun=0;phosun=0;hotelsun=0;foodsun=0;entersun=0;miscsun=0;
	/*if(v4.size()>1)
	{
		for(int i=0;i<v4.size();i++)
	 {
	 
	  if( v4.get(i).toString().equals("MON"))
	  trasun=Integer.parseInt(v4.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }*/
		if(v1.size()>1)
	{
		for(int i=0;i<v1.size();i++)
	 {
	 
	  if( v1.get(i).toString().equals("MON"))
	  phosun=Integer.parseInt(v1.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		
		if(v5.size()>1)
	{
		for(int i=0;i<v5.size();i++)
	 {
	 
	  if( v5.get(i).toString().equals("MON"))
	  hotelsun=Integer.parseInt(v5.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		if(v8.size()>1)
	{
		for(int i=0;i<v8.size();i++)
	 {
	 
	  if( v8.get(i).toString().equals("MON"))
	  foodsun=Integer.parseInt(v8.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		if(v6.size()>1)
	{
		for(int i=0;i<v6.size();i++)
	 {
	 
	  if( v6.get(i).toString().equals("MON"))
	  entersun=Integer.parseInt(v6.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		if(v7.size()>1)
	{
		for(int i=0;i<v7.size();i++)
	 {
	 
	  if( v7.get(i).toString().equals("MON"))
	  miscsun=Integer.parseInt(v7.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		//out.println(v1.get(16).toString());
		int totalmon=miscsun+entersun+foodsun+hotelsun+phosun+trasun;
		out.println(miscsun+entersun+foodsun+hotelsun+phosun+trasun);
 	//  }
	  //String sun1=v1.get(16).toString();
	//  else
	//  {}
	  out.println("</font>");
	  %>
</td>
	</tr>
    <tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	  
	    TUE
	   </font>
	   </strong></td>
	 <td>
	    <%
	 out.println("<font color=#573801 face=verdana size=2>");
	
 	  if(v1.size()!=0)
	 {
	 for(int i=0;i<v1.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v1.get(i).toString().equals("TUE"))
	  out.println(v1.get(i-2));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	  out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v1.size()!=0)
	 {
	 for(int i=0;i<v1.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v1.get(i).toString().equals("TUE"))
	  out.println(v1.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v5.size()!=0)
	 {
	 for(int i=0;i<v5.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v5.get(i).toString().equals("TUE"))
	  out.println(v5.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v8.size()!=0)
	 {
	 for(int i=0;i<v8.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v8.get(i).toString().equals("TUE"))
	  out.println(v8.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v6.size()!=0)
	 {
	 for(int i=0;i<v6.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v6.get(i).toString().equals("TUE"))
	  out.println(v6.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v7.size()!=0)
	 {
	 for(int i=0;i<v7.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v7.get(i).toString().equals("TUE"))
	  out.println(v7.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  out.println("<font color=#573801 face=verdana size=2>");
	// if(v1.size()!=0 && v4.size()!=0 && v5.size()!=0 && v8.size()!=0 && v6.size()!=0 && v7.size()!=0)
	//  {
	 trasun=0;phosun=0;hotelsun=0;foodsun=0;entersun=0;miscsun=0;
	/*if(v4.size()>1)
	{
		for(int i=0;i<v4.size();i++)
	 {
	 
	  if( v4.get(i).toString().equals("TUE"))
	  trasun=Integer.parseInt(v4.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }*/
		if(v1.size()>1)
	{
		for(int i=0;i<v1.size();i++)
	 {
	 
	  if( v1.get(i).toString().equals("TUE"))
	  phosun=Integer.parseInt(v1.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		
		if(v5.size()>1)
	{
		for(int i=0;i<v5.size();i++)
	 {
	 
	  if( v5.get(i).toString().equals("TUE"))
	  hotelsun=Integer.parseInt(v5.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		if(v8.size()>1)
	{
		for(int i=0;i<v8.size();i++)
	 {
	 
	  if( v8.get(i).toString().equals("TUE"))
	  foodsun=Integer.parseInt(v8.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		if(v6.size()>1)
	{
		for(int i=0;i<v6.size();i++)
	 {
	 
	  if( v6.get(i).toString().equals("TUE"))
	  entersun=Integer.parseInt(v6.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		if(v7.size()>1)
	{
		for(int i=0;i<v7.size();i++)
	 {
	 
	  if( v7.get(i).toString().equals("TUE"))
	  miscsun=Integer.parseInt(v7.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		//out.println(v1.get(16).toString());
		int totaltue=miscsun+entersun+foodsun+hotelsun+phosun+trasun;
		out.println(miscsun+entersun+foodsun+hotelsun+phosun+trasun);
 	//  }
	  //String sun1=v1.get(16).toString();
	//  else
	//  {}
	  out.println("</font>");
	  %>
	 </td>
	</tr>
<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	  
	    WED
	   </font>
	   </strong></td>
	 <td>
	    <%
	 out.println("<font color=#573801 face=verdana size=2>");
	
 	  if(v1.size()!=0)
	 {
	 for(int i=0;i<v1.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v1.get(i).toString().equals("WED"))
	  out.println(v1.get(i-2));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	  out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v1.size()!=0)
	 {
	 for(int i=0;i<v1.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v1.get(i).toString().equals("WED"))
	  out.println(v1.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v5.size()!=0)
	 {
	 for(int i=0;i<v5.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v5.get(i).toString().equals("WED"))
	  out.println(v5.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v8.size()!=0)
	 {
	 for(int i=0;i<v8.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v8.get(i).toString().equals("WED"))
	  out.println(v8.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v6.size()!=0)
	 {
	 for(int i=0;i<v6.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v6.get(i).toString().equals("WED"))
	  out.println(v6.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v7.size()!=0)
	 {
	 for(int i=0;i<v7.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v7.get(i).toString().equals("WED"))
	  out.println(v7.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  out.println("<font color=#573801 face=verdana size=2>");
	// if(v1.size()!=0 && v4.size()!=0 && v5.size()!=0 && v8.size()!=0 && v6.size()!=0 && v7.size()!=0)
	//  {
	 trasun=0;phosun=0;hotelsun=0;foodsun=0;entersun=0;miscsun=0;
	/*if(v4.size()>1)
	{
		for(int i=0;i<v4.size();i++)
	 {
	 
	  if( v4.get(i).toString().equals("WED"))
	  trasun=Integer.parseInt(v4.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }*/
		if(v1.size()>1)
	{
		for(int i=0;i<v1.size();i++)
	 {
	 
	  if( v1.get(i).toString().equals("WED"))
	  phosun=Integer.parseInt(v1.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		
		if(v5.size()>1)
	{
		for(int i=0;i<v5.size();i++)
	 {
	 
	  if( v5.get(i).toString().equals("WED"))
	  hotelsun=Integer.parseInt(v5.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		if(v8.size()>1)
	{
		for(int i=0;i<v8.size();i++)
	 {
	 
	  if( v8.get(i).toString().equals("WED"))
	  foodsun=Integer.parseInt(v8.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		if(v6.size()>1)
	{
		for(int i=0;i<v6.size();i++)
	 {
	 
	  if( v6.get(i).toString().equals("WED"))
	  entersun=Integer.parseInt(v6.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		if(v7.size()>1)
	{
		for(int i=0;i<v7.size();i++)
	 {
	 
	  if( v7.get(i).toString().equals("WED"))
	  miscsun=Integer.parseInt(v7.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		//out.println(v1.get(16).toString());
		int totalwed=miscsun+entersun+foodsun+hotelsun+phosun+trasun;
		out.println(miscsun+entersun+foodsun+hotelsun+phosun+trasun);
 	//  }
	  //String sun1=v1.get(16).toString();
	//  else
	//  {}
	  out.println("</font>");
	  %>
	 </td>
	</tr>
<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	  
	    THU
	   </font>
	   </strong></td>
	 <td>
	    <%
	 out.println("<font color=#573801 face=verdana size=2>");
	
 	  if(v1.size()!=0)
	 {
	 for(int i=0;i<v1.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v1.get(i).toString().equals("THU"))
	  out.println(v1.get(i-2));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	  out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v1.size()!=0)
	 {
	 for(int i=0;i<v1.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v1.get(i).toString().equals("THU"))
	  out.println(v1.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v5.size()!=0)
	 {
	 for(int i=0;i<v5.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v5.get(i).toString().equals("THU"))
	  out.println(v5.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v8.size()!=0)
	 {
	 for(int i=0;i<v8.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v8.get(i).toString().equals("THU"))
	  out.println(v8.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v6.size()!=0)
	 {
	 for(int i=0;i<v6.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v6.get(i).toString().equals("THU"))
	  out.println(v6.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v7.size()!=0)
	 {
	 for(int i=0;i<v7.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v7.get(i).toString().equals("THU"))
	  out.println(v7.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  out.println("<font color=#573801 face=verdana size=2>");
	// if(v1.size()!=0 && v4.size()!=0 && v5.size()!=0 && v8.size()!=0 && v6.size()!=0 && v7.size()!=0)
	//  {
	 trasun=0;phosun=0;hotelsun=0;foodsun=0;entersun=0;miscsun=0;
	/*if(v4.size()>1)
	{
		for(int i=0;i<v4.size();i++)
	 {
	 
	  if( v4.get(i).toString().equals("THU"))
	  trasun=Integer.parseInt(v4.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }*/
		if(v1.size()>1)
	{
		for(int i=0;i<v1.size();i++)
	 {
	 
	  if( v1.get(i).toString().equals("THU"))
	  phosun=Integer.parseInt(v1.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		
		if(v5.size()>1)
	{
		for(int i=0;i<v5.size();i++)
	 {
	 
	  if( v5.get(i).toString().equals("THU"))
	  hotelsun=Integer.parseInt(v5.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		if(v8.size()>1)
	{
		for(int i=0;i<v8.size();i++)
	 {
	 
	  if( v8.get(i).toString().equals("THU"))
	  foodsun=Integer.parseInt(v8.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		if(v6.size()>1)
	{
		for(int i=0;i<v6.size();i++)
	 {
	 
	  if( v6.get(i).toString().equals("THU"))
	  entersun=Integer.parseInt(v6.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		if(v7.size()>1)
	{
		for(int i=0;i<v7.size();i++)
	 {
	 
	  if( v7.get(i).toString().equals("THU"))
	  miscsun=Integer.parseInt(v7.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		//out.println(v1.get(16).toString());
		int totalthu=miscsun+entersun+foodsun+hotelsun+phosun+trasun;
		out.println(miscsun+entersun+foodsun+hotelsun+phosun+trasun);
 	//  }
	  //String sun1=v1.get(16).toString();
	//  else
	//  {}
	  out.println("</font>");
	  %>
	 </td>
	</tr>
<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	  
	    FRI
	   </font>
	   </strong></td>
	 <td>
	    <%
	 out.println("<font color=#573801 face=verdana size=2>");
	
 	  if(v1.size()!=0)
	 {
	 for(int i=0;i<v1.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v1.get(i).toString().equals("FRI"))
	  out.println(v1.get(i-2));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	  out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v1.size()!=0)
	 {
	 for(int i=0;i<v1.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v1.get(i).toString().equals("FRI"))
	  out.println(v1.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v5.size()!=0)
	 {
	 for(int i=0;i<v5.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v5.get(i).toString().equals("FRI"))
	  out.println(v5.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v8.size()!=0)
	 {
	 for(int i=0;i<v8.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v8.get(i).toString().equals("FRI"))
	  out.println(v8.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v6.size()!=0)
	 {
	 for(int i=0;i<v6.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v6.get(i).toString().equals("FRI"))
	  out.println(v6.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v7.size()!=0)
	 {
	 for(int i=0;i<v7.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v7.get(i).toString().equals("FRI"))
	  out.println(v7.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  out.println("<font color=#573801 face=verdana size=2>");
	// if(v1.size()!=0 && v4.size()!=0 && v5.size()!=0 && v8.size()!=0 && v6.size()!=0 && v7.size()!=0)
	//  {
	 trasun=0;phosun=0;hotelsun=0;foodsun=0;entersun=0;miscsun=0;
	/*if(v4.size()>1)
	{
		for(int i=0;i<v4.size();i++)
	 {
	 
	  if( v4.get(i).toString().equals("FRI"))
	  trasun=Integer.parseInt(v4.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }*/
		if(v1.size()>1)
	{
		for(int i=0;i<v1.size();i++)
	 {
	 
	  if( v1.get(i).toString().equals("FRI"))
	  phosun=Integer.parseInt(v1.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		
		if(v5.size()>1)
	{
		for(int i=0;i<v5.size();i++)
	 {
	 
	  if( v5.get(i).toString().equals("FRI"))
	  hotelsun=Integer.parseInt(v5.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		if(v8.size()>1)
	{
		for(int i=0;i<v8.size();i++)
	 {
	 
	  if( v8.get(i).toString().equals("FRI"))
	  foodsun=Integer.parseInt(v8.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		if(v6.size()>1)
	{
		for(int i=0;i<v6.size();i++)
	 {
	 
	  if( v6.get(i).toString().equals("FRI"))
	  entersun=Integer.parseInt(v6.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		if(v7.size()>1)
	{
		for(int i=0;i<v7.size();i++)
	 {
	 
	  if( v7.get(i).toString().equals("FRI"))
	  miscsun=Integer.parseInt(v7.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		//out.println(v1.get(16).toString());
		int totalfri=miscsun+entersun+foodsun+hotelsun+phosun+trasun;
		out.println(miscsun+entersun+foodsun+hotelsun+phosun+trasun);
 	//  }
	  //String sun1=v1.get(16).toString();
	//  else
	//  {}
	  out.println("</font>");
	  %>
	 </td>
	</tr>
<tr>
	 <td>
	   <strong><font color="#573801" face="verdana" size="2">
	  
	    SAT
	   </font>
	   </strong></td>
	 <td>
	    <%
	 out.println("<font color=#573801 face=verdana size=2>");
	
 	  if(v1.size()!=0)
	 {
	 for(int i=0;i<v1.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v1.get(i).toString().equals("SAT"))
	  out.println(v1.get(i-2));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	  out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v1.size()!=0)
	 {
	 for(int i=0;i<v1.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v1.get(i).toString().equals("SAT"))
	  out.println(v1.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v5.size()!=0)
	 {
	 for(int i=0;i<v5.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v5.get(i).toString().equals("SAT"))
	  out.println(v5.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v8.size()!=0)
	 {
	 for(int i=0;i<v8.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v8.get(i).toString().equals("SAT"))
	  out.println(v8.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v6.size()!=0)
	 {
	 for(int i=0;i<v6.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v6.get(i).toString().equals("SAT"))
	  out.println(v6.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  //out.println("<font color=#573801 face=verdana size=2>");
	  // String ignore=v1.get(1).toString();
	  // out.println(ignore);
	try{
	 if(v7.size()!=0)
	 {
	 for(int i=0;i<v7.size();i++)
	 {
	 //  out.println(v1.get(i));
	  if( v7.get(i).toString().equals("SAT"))
	  out.println(v7.get(i-1));
	  else
	   out.println("");
	  // continue;
	
	   }
	   }
	   }catch(Exception e){}
 	    //out.println(v1.get(16));
	 // out.println("</font>");
	  %>
	 </td>
	 <td>
	   <%
	  out.println("<font color=#573801 face=verdana size=2>");
	// if(v1.size()!=0 && v4.size()!=0 && v5.size()!=0 && v8.size()!=0 && v6.size()!=0 && v7.size()!=0)
	//  {
	 trasun=0;phosun=0;hotelsun=0;foodsun=0;entersun=0;miscsun=0;
	/*if(v4.size()>1)
	{
		for(int i=0;i<v4.size();i++)
	 {
	 
	  if( v4.get(i).toString().equals("SAT"))
	  trasun=Integer.parseInt(v4.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }*/
		if(v1.size()>1)
	{
		for(int i=0;i<v1.size();i++)
	 {
	 
	  if( v1.get(i).toString().equals("SAT"))
	  phosun=Integer.parseInt(v1.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		
		if(v5.size()>1)
	{
		for(int i=0;i<v5.size();i++)
	 {
	 
	  if( v5.get(i).toString().equals("SAT"))
	  hotelsun=Integer.parseInt(v5.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		if(v8.size()>1)
	{
		for(int i=0;i<v8.size();i++)
	 {
	 
	  if( v8.get(i).toString().equals("SAT"))
	  foodsun=Integer.parseInt(v8.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		if(v6.size()>1)
	{
		for(int i=0;i<v6.size();i++)
	 {
	 
	  if( v6.get(i).toString().equals("SAT"))
	  entersun=Integer.parseInt(v6.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		if(v7.size()>1)
	{
		for(int i=0;i<v7.size();i++)
	 {
	 
	  if( v7.get(i).toString().equals("SAT"))
	  miscsun=Integer.parseInt(v7.get(i-1).toString());
	 // out.println(v1.get(i-1));
	 }
		 
		 }
		//out.println(v1.get(16).toString());
		int totalsat=miscsun+entersun+foodsun+hotelsun+phosun+trasun;
		out.println(miscsun+entersun+foodsun+hotelsun+phosun+trasun);
 	//  }
	  //String sun1=v1.get(16).toString();
	//  else
	//  {}
	  out.println("</font>");
	  %>
	 </td>
	</tr>
   <tr>
    <td>
	 <font color="#573801" face="verdana" size="2"><strong>Total</strong></font>
	</td>
	
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td>
	<font color="#573801" face="verdana" size="2">
	<strong>
	<%
	  out.println(totalsun+totalmon+totaltue+totalthu+totalfri+totalsat); 
	%>
	</font>
	</td>
   </tr>
   <tr>
    <td colspan="9" align="center">
	<form action="specific.jsp">
	<input type="hidden" name="username" value="fn_admin">
	<input type="hidden" name="password" value="fn_admin">
	<input type="image" src="images/home.jpg">
	</form>
	</td>
	</tr>
  </table>
 </td>
</tr>

</table>

</body>
</html>
