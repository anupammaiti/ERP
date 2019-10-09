package com.svs.erp.Hr.BO;

import java.io.IOException;
import java.lang.String;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.*;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.sql.*;
public class inoutreload extends HttpServlet
{
	final static Logger logger = Logger.getLogger(inoutreload.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws  IOException,ServletException 

	{
		PrintWriter pw=response.getWriter();
		// String s="";
		String stname="Data has been reloaded from the excel file";
		HttpSession session=request.getSession();

		String sheetnamee=request.getParameter("sheetname");
		//////System.out.println(sheetnamee);
		//String strreplace="'/";
		//String Sheetname=sheetnamee.replaceAll("'\'", strreplace);
		////////System.out.println(Sheetname);
		Connection con=null;
		ConnectionUtils connectionUtils=new ConnectionUtils();

		try{
			ResultSet rs=null;
			ResultSet rs1=null;
			ResultSet rs2=null;
			ResultSet rs4=null;
			long first=0;
			long last=0;
			long totalhrs=0;
			long first4=0;
			long last4=0;
			long totalhrs4;		
			String empid=null;
			String date9=null;
			String empid19;
			String date19;
			long otlt=0;
			long tothrs11=0;   
			
			//////System.out.println("inoutreload::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("inoutreload::ConnectionPool----->>>>After Open --->>>>Test");
			//Class.forName("com.mysql.jdbc.Driver");
			//Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"hrerp", "root", "root");
			Statement st=con.createStatement(rs.TYPE_SCROLL_SENSITIVE,rs.CONCUR_UPDATABLE);

			String s="LOAD DATA LOCAL INFILE '"+sheetnamee+"' INTO TABLE inouttemp FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 5 LINES (empid,empname,sitecode,department,type,date,first,last,Location)";
			//////System.out.println("test1");
			st.executeUpdate(s);
			///////////////////////////////code to insert data into empinout1//////////////////////////////
			ResultSet rs18=null;
			Statement st18=con.createStatement(rs18.TYPE_SCROLL_SENSITIVE,rs18.CONCUR_UPDATABLE);
			//////System.out.println("inserting--If no records");
			st18.executeUpdate("insert into empinout1(empid,empname,department,date,first,last,tothrs)select empid,empname,department,date,first,last,TIMEDIFF(last,first) from inouttemp where date not in(select date from empinout1)");
			///////////////////////////////////////code to delete in empabsent and insert into empinout1////////////////////////////////////////
			///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			///////////////////////////////code to reload data into empinout1//////////////////////////////
			ResultSet rs8=null;
			String s18="select t.empid,t.empname,t.sitecode,t.department,t.type,t.date,t.first,t.last,e.empid,e.date from inouttemp t,empinout1 e where t.empid=e.empid and t.date=e.date";
			Statement st19=con.createStatement();
			rs8=st19.executeQuery(s18);
			//////System.out.println(rs8);
			while(rs8.next())
			{
				//////System.out.println("te");
				/*empid19=rs8.getString(1);
		 date19=rs8.getString(2);
		//////System.out.println(empid19+"emp");
		//////System.out.println(date19+"date");*/
				Statement st8=con.createStatement();
				ResultSet rs20=null;
				/*String s20="select empid,date from inouttemp where empid='"+empid19+"' and date='"+date19+"'";
		Statement st20=conn.createStatement();
		rs20=st20.executeQuery(s20);
//		//////System.out.println(rs20);
		while(rs20.next())
		{
		//////System.out.println("Updating --- if records are there");*/

				//////System.out.println("UPDATE empinout1 set empid='"+rs8.getString(1)+"',empname='"+rs8.getString(2)+"',department='"+rs8.getString(4)+"',date='"+rs8.getString(6)+"',first='"+rs8.getString(7)+"',last='"+rs8.getString(8)+"',tothrs=TIMEDIFF(last,first)");
				//st8.executeUpdate("update inouttemp f, empinout1 t set t.empid=f.empid,t.empname=f.empname,t.department=f.department,t.date=f.date,t.first=f.first,t.last=f.last,t.tothrs=TIMEDIFF(t.last,t.first)  where t.date='"+date19+"' and t.empid='"+empid19+"'");
				//st8.executeUpdate("UPDATE empinout1 t,inouttemp f SET t.empid=f.empid,t.empname=f.empname,t.department=f.department,t.date=f.date,t.first=f.first,t.last=f.last,t.tothrs=TIMEDIFF(t.last,t.first)  where t.date='"+date19+"' and t.empid='"+empid19+"'");
				st8.executeUpdate("UPDATE empinout1 set empid='"+rs8.getString(1)+"',empname='"+rs8.getString(2)+"',department='"+rs8.getString(4)+"',date='"+rs8.getString(6)+"',first='"+rs8.getString(7)+"',last='"+rs8.getString(8)+"',tothrs=TIMEDIFF(last,first)");
			}

			//////////////////////////code to find time difference in empinout///////////////////////////////////////
			/* Statement st2=conn.createStatement(rs2.TYPE_SCROLL_SENSITIVE,rs2.CONCUR_UPDATABLE);
		rs2 = st2.executeQuery("select empid,date,first,last from inouttemp");
		while(rs2.next())
		{
		empid=rs2.getString(1);
		date9=rs2.getString(2);
		first=rs2.getLong(3);
		last=rs2.getLong(4);


		String s3="select AVG(TIMEDIFF(last,first)) from inouttemp where empid=?and date=?";
		PreparedStatement pr3=null;
		 pr3=conn.prepareStatement(s3);
		pr3.setString(1,empid);
		pr3.setString(2,date9);		 
		 ResultSet rs3=pr3.executeQuery();

		 while(rs3.next())
		 {
		 totalhrs=rs3.getLong(1);
		 ////////System.out.println("totalhrs"+totalhrs);
		 }

		PreparedStatement pr2=null;
		String s2="update inouttemp set totalhrs=? where empid=? and date=?";
		 pr2=conn.prepareStatement(s2);

		 pr2.setLong(1,totalhrs);
		 pr2.setString(2,empid);
		 pr2.setString(3,date9);
		 pr2.executeUpdate();
		 }*/
			///////////////////////////////////////////////////////////////////////code to insert values into empinout1/////////////////////////////////////////////////////////////////////
			Statement st4=con.createStatement();
			rs4 = st4.executeQuery("select empid,date from empinout1");
			String empid4=null;

			String date4=null;
			String designation4=null;
			String rm4=null;

			while(rs4.next())
			{
				empid4=rs4.getString(1);

				date4=rs4.getString(2);
				//////System.out.println("date--- >  "+date4);
				//////System.out.println("EMPID  "+empid4);
				String s4="select designation,reportingto from employee where empno=?";
				PreparedStatement pr4=null;
				pr4=con.prepareStatement(s4);
				pr4.setString(1,empid4);		 
				ResultSet rs5=pr4.executeQuery();
				while(rs5.next())
				{
					designation4=rs5.getString(1);
					rm4=rs5.getString(2);
					////////System.out.println("desig -- "+designation4);
					////////System.out.println("RM-- "+rm4);


					PreparedStatement pr5=null;
					String s5="update empinout1 set designation=?,RM=?,HOD=? where empid=? and date=?";
					pr5=con.prepareStatement(s5);
					pr5.setString(1,designation4);
					pr5.setString(2,rm4);
					pr5.setString(3,rm4);
					pr5.setString(4,empid4);

					pr5.setString(5,date4);
					pr5.executeUpdate();
				}
			}
			///////////////////////////code to OTLT in empinout1///////////////////////
			/*ResultSet rs11=null;
		String empid11=null;
		String date11=null;

		 ResultSet rs15=null;
		 Statement st15=conn.createStatement();
		rs15 = st15.executeQuery("select AVG(TIMEDIFF(last,first)) from empinout1");
		String empid15=null;
		String date15=null;

		while(rs15.next())
		{
		tothrs11=rs15.getLong(1);
		}*/
			//////////////////////////////////
			ResultSet rs11=null;
			String empid11=null;
			String date11=null;

			Statement st11=con.createStatement();
			rs11 = st11.executeQuery("select empid,date from empinout1");


			while(rs11.next())
			{
				empid11=rs11.getString(1);
				date11=rs11.getString(2);
				//tothrs11=rs11.getLong(3);

				////////System.out.println("EMPID11---->  "+empid11);
				////////System.out.println("date11--- >  "+date11);
				////////System.out.println("tothrs11--- >  "+tothrs11);

				//SimpleDateFormat format = new SimpleDateFormat("HH:mm:ss");
				//Date date12 = format.parse("08:00:00+05:30");
				////////System.out.println("date12"+date12);
				//long time11=date12.getTime();
				////////System.out.println("time11  "+time11);


				//otlt=tothrs11;
				////////System.out.println("1----->"+otlt);

				PreparedStatement pr11=null;
				String s11="update empinout1 set otlt=SUBTIME(tothrs,'08:15:00') where empid=? and date=?";
				pr11=con.prepareStatement(s11);

				//pr11.setLong(1,otlt);
				pr11.setString(1,empid11);
				pr11.setString(2,date11);
				pr11.executeUpdate();
			}









			///////////////////////////////////////////////////////////////////////code to insert values into empabsent/////////////////////////////////////////////////////////////////////

			//String s1="STR_TO_DATE('3/31/2011 21:20', '%c/%e/%Y %H:%i')";
			////////System.out.println(rs);
			Statement st1=con.createStatement(rs.TYPE_SCROLL_SENSITIVE,rs.CONCUR_UPDATABLE);
			rs = st1.executeQuery("select  * from empinout");
			////////System.out.println("test2");
			rs.last();
			String date1=rs.getString(6);
			////////System.out.println(date1);

			String t="select e.name,e.empno from  employee e where e.empno not in (select empid from empinout  eio where eio.empid=e.empno);";      //code to get absenties
			////////System.out.println("1");
			rs1= st.executeQuery(t);
			////////System.out.println(rs1);
			// //////System.out.println("2");

			PreparedStatement pr=null;
			while (rs1.next()){
				String s1="insert into empabsent(empid,empname,date)values(?,?,?) where date not in(select date from empabsent)";
				pr=con.prepareStatement(s1);
				String name=rs1.getString(1);
				String empno=rs1.getString(2);
				pr.setString(1,empno);
				pr.setString(2,name);
				pr.setString(3,date1);
				pr.executeUpdate();
				// //////System.out.println("**"+pr);
			}
			// out.println("Data has been read from the excel file and inserted into the database.");  
		}
		catch(Exception e){
			//////System.out.println(e);
		}finally {
			try
			{
				//////System.out.println("inoutreload::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("inoutreload::ConnectionPool--After Close--->>>>Test");
			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}

		ServletContext sc=getServletContext();
		RequestDispatcher rd=sc.getRequestDispatcher("/loadtomysqlinout.jsp");
		rd.include(request,response);
		//res.sendRedirect("fn_ledger_alter_or_display1.jsp");
		pw.println("<font color=#EF6216 face=verdana size=2> <font color=#900F8E face=verdana size=2>"+stname+"</font>");
	}
}
