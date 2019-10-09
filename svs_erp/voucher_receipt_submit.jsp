<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">


<HTML>
 
  

	
</HEAD>

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

 <BODY background="images/bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
 
 <%@ page import="java.util.*"%>
<%@ page import="java.util.Vector.*"%>
<%@ page import="java.sql.*"%>

<% Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
 %>

 <table width="800"  border = "0" cellspacing = "0" cellpadding = "0" align ="center">
 <tr>
 <td>
	<img src = "images/banner.jpg" width = "800"></td>
 </tr>
 </table>

 

 

 <table width = "800" border = "0" cellspacing = "0" cellpadding = "0" align = "center">
 <tr>
 <td background = "images/after_main.jpg" height = "41" align = "center" >
	<strong> <font color = "#573801" size = "3" face = "verdana"> Welcome To Finance Department</font></strong>
 </td>
 </tr>
 </table>


<p>&nbsp;</p>
 

 <%
	String s1=request.getParameter("under");
	//out.println("s1"+s1);
	String s2=request.getParameter("particular");
	//out.println("s2"+s2);
	String s3=request.getParameter("amount");
	//out.println("s3"+s3);
	String s4=request.getParameter("narration");
	//out.println("s4"+s4);
	String d1=request.getParameter("date1");
	//out.println("d1"+d1);


	Double d=0.0;
	d=Double.parseDouble(s3);

	
	Statement st=con.createStatement();
String q1="insert into voucher_receipt (v_date,vouchertype,account,particulars,amount,narration)	values ('"+d1+"','Receipt', '"+s1+"','"+s2+"',"+d+",'"+s4+"')";

	int k=st.executeUpdate(q1);
	
	////////
	String sds="select  ledgername from ledgersdata where under='SundryDebtors' " ;
	ResultSet sdrs = st.executeQuery(sds);
	boolean flagsd=false;
	while(sdrs.next())
	{
		if(s2.equals(sdrs.getString(1)))
		flagsd=true;
	}
	
	

//////////////

String qq="select * from current_assets  ";
	boolean flag=false;
	boolean flag1=false;

	ResultSet rs = st.executeQuery(qq);
	while(rs.next())
	{
		if(s1.equals(rs.getString(1)))
		flag=true;

		if(s2.equals(rs.getString(1)))
		flag1=true;
	}
	
	//out.println(flag);
	//out.println(flag1);

	int i1=0;
	int i2=0;
	
	////////////
	
	String ld1="select under from ledgersdata where ledgername='"+s1+"' ";

	ResultSet rld1 = st.executeQuery(ld1);
	String und1=null;
	rld1.next();
	und1 = rld1.getString(1);
	
	
	/////////////////

	if(flag)
	{
String qq1="select * from current_assets where ledgername='"+s1+"' ";

	ResultSet rs1 = st.executeQuery(qq1);
	String lname=null;
	double asset=0.0;
	while(rs1.next())
	{
		lname=rs1.getString(1);
		asset=rs1.getDouble(2);
	}
	
	asset=asset+ d;
	//out.println("lname"+lname);
	//out.println("asset"+asset);
	
String uq1="update current_assets set balance="+asset+" where ledgername='"+s1+"'";
	 i1=st.executeUpdate(uq1);

	

	} //if
	else
	{
	
String iq1="insert into current_assets values('"+s1+"', "+d+", '"+und1+"')";
		i2=st.executeUpdate(iq1);
		
	}

	



	int j1=0;
	int j2=0;
	
	////////////////
	String ld2="select under from ledgersdata where ledgername='"+s2+"' ";

	ResultSet rld2 = st.executeQuery(ld2);
	String und2=null;
	rld2.next();
	und2 = rld2.getString(1);
	
	////////////


	if(flag1)
	{
		

String qq2="select * from current_assets where ledgername='"+s2+"' ";

	ResultSet rs2 = st.executeQuery(qq2);
	String lname1=null;
	double asset2=0.0;
	while(rs2.next())
	{
		lname1=rs2.getString(1);
		asset2=rs2.getDouble(2);
	}
	if(flagsd)
	asset2=asset2- d;
	else
	asset2=asset2+ d;
	//out.println("lname1"+lname1);
	//out.println("asset2"+asset2);
	
	//asset2 = -asset2;
String uq2="update current_assets set balance="+asset2+" where ledgername='"+s2+"' ";
	 j1=st.executeUpdate(uq2);

	

	} //if
	else
	{
String iq2="insert into current_assets values('"+s2+"', "+d+", '"+und2+"' )";
		j2=st.executeUpdate(iq2);
		
	}

	if(j1==1)
			//out.println("updated:");


	if(j2==1)
			//out.println("inserted:");



	
/*

	String rq2="select balance from ledgersdata where ledgersname='"+s1+"'";

	ResultSet rs2 = st.executeQuery(rq2);
	double balance2=0.0;
	while(rs2.next())
	{
		balance2=rs2.getDouble(1);
	}
	
	balance2=balance2+ d;
	out.println(balance2);

	String uq2 = "update ledgersdata set balance="+balance2+" where ledgersname='"+s1+"'";




	String rq1="select balance from ledgersdata where ledgersname='"+s2+"'";

	ResultSet rs1 = st.executeQuery(rq1);
	double balance1=0.0;
	while(rs1.next())
	{
		balance1=rs1.getDouble(1);
	}
	
	balance1=balance1+ d;
	out.println(balance1);

	String uq1 = "update ledgersdata set balance="+balance2+" where ledgersname='"+s2+"'";


	
	int i=st.executeUpdate(q1);

	int j=st.executeUpdate(q2);

	int k=st.executeUpdate(uq1);

	int l=st.executeUpdate(uq2);


	*/
	/*
	//if(i==1 && j==1 && k==1 && l==1)
	//out.println("success");
	*/
	%>

<center>

<strong> <font color = "#573801" size = "3" face = "verdana">Successfully Inserted</font></strong>
</center>

<table>
<% if(admin_check){ %>
<form action="kvk_finance_main.jsp" method="post">
<% } %>

<% if(fn_check){ %>
<form action="account_operator.jsp" method="post">
<% } %>

<tr>
<td width="300"/>

<td>
<input align ="left" type="image" src="images/home.jpg"/>
</form>
</td>

<form action="accounting_voucher_main.jsp" method="post">

<td width="600"/>

<td>
<input align ="right" type="image" src="images/back.jpg"/>
</form>
</td>

</tr>
</table>




<% } %>


 </BODY>
</HTML>
