<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">


<HTML>
 
  

	
</HEAD>

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
	//String s1=request.getParameter("ref");
	//out.println(s1);
	//String dt1=request.getParameter("date1");
	//out.println(dt1);
	
	String dt=request.getParameter("date1");
	out.println(dt);
	String s2=request.getParameter("by_under");
	out.println("s2:"+s2);
	String s3=request.getParameter("nameofitem");
	out.println(s3);
	String s4=request.getParameter("qty");
	out.println(s4);
	String s5=request.getParameter("rate");
	out.println(s5);
	String s6=request.getParameter("units");
	out.println(s6);
	String s7=request.getParameter("amount");
	out.println(s7);
	String s8=request.getParameter("to_under");
	out.println(s8);
	String s9=request.getParameter("to_amount");
	out.println(s9);
	
	String s10=request.getParameter("narration");
	out.println(s10);
	
	Integer ii=Integer.parseInt(s4);
	out.println("i1 : "+ ii);

	Double d1 = Double.parseDouble(s5);
	out.println("d1 : "+ d1);

	Double d2 = Double.parseDouble(s7);
	out.println("d2 : "+ d2);
	
	Double d3 = Double.parseDouble(s9);
	out.println("d3 : "+ d3);


	Statement st=con.createStatement();
	
	///////////////jour purchase
	
	//String jps="select l.under,j.to_parti from voucher_journal j ,ledgersdata l where j.to_parti=l.ledgername and l.under='SundryCreditors' ";
	String jps="select ledgername from ledgersdata where under = 'SundryCreditors' ";
	ResultSet jprs=st.executeQuery(jps);
	boolean flagjp=false;
	while(jprs.next())
	{
		if(s8.equals(jprs.getString(1)))
			flagjp=true;
	}
	
	
	out.println(flagjp);
	////////////
	
		
	
	
if(flagjp)
{

	String q1="insert into voucher_journal (v_date,vouchertype,by_parti,nameofitem,quantity,rate,units,by_amount,to_parti,to_amount,narration) values('"+dt+"' , 'Journal','"+s2+"','"+s3+"',"+ii+","+d1+",'"+s6+"',"+d2+",'"+s8+"',"+d3+",'"+s10+"')";

	
	int k=st.executeUpdate(q1);
	
	if(k==1 )
	out.println("success");
	
	
	
	////////////clo

	String stq="select * from closing_stock";
	ResultSet strs1=st.executeQuery(stq);
	boolean flag2=false;
	while(strs1.next())
	{
		if(s3.equals(strs1.getString(1)))
			flag2=true;
	}

	if(flag2)
	{
		String stqq1= "select * from closing_stock where stock_item = '"+s3+"'";
		ResultSet rsqq1= st.executeQuery(stqq1);
		
		
		String cstock=null;
		int cqty=0;
		String cunits=null;
		double crate=0.0;
		double cbalance=0.0;
		
		double calrate;
		
		while(rsqq1.next())
		{
			cstock=rsqq1.getString(1);
			cqty=rsqq1.getInt(2);
			cstock=rsqq1.getString(3);
			crate=rsqq1.getDouble(4);
			cbalance=rsqq1.getDouble(5);
		}

		cqty=cqty+ii;
		//cbalance=cbalance+d2;
		crate=crate+d1;
		//calrate=cbalance/cqty;
		
		String pstqq1= "select sum(quantity),sum(amount) from voucher_purchase where nameofitem = '"+s3+"'";
		Statement st1 = con.createStatement();
		ResultSet prsqq1= st1.executeQuery(pstqq1);
		int pqty = 0;
		double pbalance = 0.0;
		while(prsqq1.next())
		{
			
			pqty=prsqq1.getInt(1);
			pbalance=prsqq1.getDouble(2);
		}
		pqty = pqty + ii;
		pbalance = pbalance + d2;
		calrate =  pbalance / pqty;
		cbalance =  cqty * calrate;
		
		
		
		String stq2="update closing_stock set qty="+cqty+", rate="+calrate+", balance="+cbalance+" where stock_item= '"+s3+"' ";
		int sti2=st.executeUpdate(stq2);

	}
	else
	{

		String stq1= "insert into closing_stock values('"+s3+"',"+ii+",'"+s6+"',"+d1+", "+d2+")";
		int sti= st.executeUpdate(stq1);
	}

	



	//////current

	String qq="select * from current_assets  ";
	boolean flag1=false;

	ResultSet rs = st.executeQuery(qq);
	while(rs.next())
	{
		
		if(s2.equals(rs.getString(1)))
		flag1=true;
	}
	
	out.println(flag1);


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
	
	asset2=asset2+ d2;
	out.println("lname1"+lname1);
	out.println("asset2"+asset2);
String uq2="update current_assets set balance="+asset2+" where ledgername='"+s2+"' ";
	 j1=st.executeUpdate(uq2);

	

	} //if
	else
	{
String iq2="insert into current_assets values('"+s2+"', "+d2+",'"+und2+"')";
		j2=st.executeUpdate(iq2);
		
	}

	
	/////to
	//////

	String qq1="select * from current_assets  ";
	boolean flag11=false;

	ResultSet rs1 = st.executeQuery(qq1);
	while(rs1.next())
	{
		
		if(s8.equals(rs1.getString(1)))
		flag11=true;
	}
	
	out.println(flag11);


	int j11=0;
	int j21=0;

	////////////////
	String ld21="select under from ledgersdata where ledgername='"+s8+"' ";

	ResultSet rld21 = st.executeQuery(ld21);
	String und21=null;
	rld21.next();
	und21 = rld21.getString(1);
	
	////////////
	
	
	if(flag11)
	{
		

String qq21="select * from current_assets where ledgername='"+s8+"' ";

	ResultSet rs21 = st.executeQuery(qq21);
	String lname11=null;
	double asset21=0.0;
	while(rs21.next())
	{
		lname11=rs21.getString(1);
		asset21=rs21.getDouble(2);
	}
	
	asset21=asset21+ d3;
	asset21= asset21;
	out.println("lname11"+lname11);
	out.println("asset21"+asset21);
String uq21="update current_assets set balance="+asset21+" where ledgername='"+s8+"' ";
	 j11=st.executeUpdate(uq21);

	

	} //if
	else
	{
	d3= -d3;
String iq21="insert into current_assets values('"+s8+"', "+d3+",'"+und21+"')";
		j21=st.executeUpdate(iq21);
		
	}

}/////close flagjp








///////////journal sales


	
	//String jss="select l.under,j.by_parti from voucher_journal j ,ledgersdata l where j.to_parti=l.ledgername and l.under='SundryDebtors' ";
	String jss="select ledgername from ledgersdata where under = 'SundryDebtors' ";
	ResultSet jsrs=st.executeQuery(jss);
	boolean flagjs=false;
	while(jsrs.next())
	{
		out.println("kjdfs:"+jsrs.getString(1));
		if(s2.equals(jsrs.getString(1)))
			flagjs=true;
	}
	
	
	out.println("sales:"+flagjs);
	
	//////////
	
if(flagjs)
{

	
	String q1="insert into voucher_journal (v_date,vouchertype,by_parti,nameofitem,quantity,rate,units,by_amount,to_parti,to_amount,narration) values('"+dt+"' , 'Journal','"+s2+"','"+s3+"',"+ii+","+d1+",'"+s6+"',"+d2+",'"+s8+"',"+d3+",'"+s10+"')";

	
	int k=st.executeUpdate(q1);
	
	if(k==1 )
	out.println("success");
	
	//////////clo

		String jstqq1= "select * from closing_stock where stock_item = '"+s3+"'";
		ResultSet jrsqq1= st.executeQuery(jstqq1);
		String jcstock=null;
		int jcqty=0;
		String jcunits=null;
		double jcrate=0.0;
		double jcbalance=0.0;
		
		double jcalbal;
		
		while(jrsqq1.next())
		{
			jcstock=jrsqq1.getString(1);
			jcqty=jrsqq1.getInt(2);
			jcstock=jrsqq1.getString(3);
			jcrate=jrsqq1.getDouble(4);
			jcbalance=jrsqq1.getDouble(5);
		}
		
		jcalbal=ii*jcrate;
		jcqty=jcqty-ii;
		
		jcbalance=jcbalance-jcalbal;
		String jstq2="update closing_stock set qty="+jcqty+",  balance="+jcbalance+" where stock_item='"+s3+"' ";
		int jsti2=st.executeUpdate(jstq2);
		
		////////
		
		String jqq1="select * from current_assets where ledgername='"+s8+"' ";

	ResultSet jrs1 = st.executeQuery(jqq1);
	double jasset=0.0;
	while(jrs1.next())
	{
		jasset=jrs1.getDouble(2);
	}
	
	jasset=jasset+d2;
	//jasset = -jasset;

	out.println("jasset"+jasset);

	String juq1="update current_assets set balance="+jasset+" where ledgername='"+s8+"' ";
	int ji1=st.executeUpdate(juq1);
	
	
	//////////////
	

	String jqq="select * from current_assets  ";
	boolean flagj1=false;

	ResultSet jrs = st.executeQuery(jqq);
	while(jrs.next())
	{
		
		if(s2.equals(jrs.getString(1)))
		flagj1=true;
	}
	
	out.println(flagj1);


	int jj1=0;
	int jj2=0;
	
	
	////////////////
	String jld2="select under from ledgersdata where ledgername='"+s2+"' ";

	ResultSet jrld2 = st.executeQuery(jld2);
	String jund2=null;
	jrld2.next();
	jund2 = jrld2.getString(1);
	
	////////////
	

	if(flagj1)
	{
		

String jqq2="select * from current_assets where ledgername='"+s2+"' ";

	ResultSet jrs2 = st.executeQuery(jqq2);
	String jlname1=null;
	double jasset2=0.0;
	while(jrs2.next())
	{
		jlname1=jrs2.getString(1);
		jasset2=jrs2.getDouble(2);
	}
	
	jasset2=jasset2+ d2;
	out.println("jlname1"+jlname1);
	out.println("jasset2"+jasset2);
String juq2="update current_assets set balance="+jasset2+" where ledgername='"+s2+"' ";
	 jj1=st.executeUpdate(juq2);

	

	} //if
	else
	{
String jiq2="insert into current_assets values('"+s2+"', "+d2+" , '"+jund2+"' )";
		jj2=st.executeUpdate(jiq2);
		
	}


}////if flagjs
	



	%>

<center>

<strong> <font color = "#573801" size = "3" face = "verdana">Successfully Inserted</font></strong>
</center>
<center>
<form action="voucher_journal.jsp" method="post">

<input type="submit"   name="voucher" value="  Back " />

</form>
</center>

 </BODY>
</HTML>
