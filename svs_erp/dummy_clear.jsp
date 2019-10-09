<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>SVS</title>

<% Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
   Statement st = con.createStatement();
   %>
</head>

<body>

<% 
	String sr = "drop table voucher_receipt" ;
	st.executeUpdate(sr);
	
	String csr = "create table voucher_receipt(no int auto_increment primary key, v_date date,vouchertype varchar(30), account varchar(30),particulars varchar(30),amount double(15,2),narration varchar(300)) ";
	st.executeUpdate(csr);

	
	String sc = "drop table voucher_contra" ;
	st.executeUpdate(sc);
	
	String csc = "create table voucher_contra(no int auto_increment primary key, v_date date, vouchertype varchar(30),account varchar(30),particulars varchar(30),amount double(15,2),narration varchar(300)) ";
	st.executeUpdate(csc);
	
	String spy = "drop table voucher_payment" ;
	st.executeUpdate(spy);
	
	String cspy = "create table voucher_payment(no int auto_increment primary key, v_date date, vouchertype varchar(30),account varchar(30),particulars varchar(30),amount double(15,2),narration varchar(300)) ";
	st.executeUpdate(cspy);
	
	
	String sp = "drop table voucher_purchase" ;
	st.executeUpdate(sp);
	
	String csp = "create table voucher_purchase(no int auto_increment primary key  , refno char(50), v_date date,vouchertype varchar(30),partyaccname varchar(30),purchaseledger varchar(30),nameofitem varchar(30), quantity int,rate double, units  varchar(20), amount double(15,2), narration varchar(300)) ";
	st.executeUpdate(csp);
	
	
	String ss = "drop table voucher_sales" ;
	st.executeUpdate(ss);
	
	String css = "create table voucher_sales(no int auto_increment primary key  , refno char(50),v_date date, vouchertype varchar(30),partyaccname varchar(30), salesledger varchar(30),nameofitem varchar(30), quantity int, rate double, units  varchar(20), amount double(15,2), narration varchar(300)) ";
	st.executeUpdate(css);
	
	
	String sj = "drop table voucher_journal" ;
	st.executeUpdate(sj);
	
	String csj = "create table voucher_journal(no int auto_increment primary key  ,v_date date,	vouchertype varchar(30), by_parti varchar(30),nameofitem varchar(30), quantity int, rate double, units  varchar(20), by_amount double(15,2), to_parti varchar(30), to_amount double(15,2), narration varchar(300)) ";
	st.executeUpdate(csj);
	
	
	
	String scl = "delete from  closing_stock" ;
	st.executeUpdate(scl);
		
	
	String sca = "delete from current_assets" ;
	st.executeUpdate(sca);
	
	String sld = "delete from ledgersdata where ledgername!='Cash';" ;
	st.executeUpdate(sld);
	String s1ld = "insert into ledgersdata(ledgername,under) values('Salaries' , 'IndirectExpenses') ";
	st.executeUpdate(s1ld);
	
	String sun = "delete from unitsofmeasure" ;
	st.executeUpdate(sun);
	
	String sst = "delete from stockitems" ;
	st.executeUpdate(sst);
	
	
	
	
	
	
	
	//out.println(i);


 %>
 
 <jsp:forward page="kvk_finance_main.jsp" />

</body>
</html>
