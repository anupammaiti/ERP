package com.svs.erp.Hr.BO;
//import org.apache.log4j.Logger;
//import org.apache.log4j.PropertyConfigurator;
//import com.svs.report.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.util.ConvertStackTracetoString;
public class Loadtomysqlinout11 extends HttpServlet
{
	private static Logger logger =Logger.getLogger(Loadtomysqlinout11.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws  IOException,ServletException 

	{
		HttpSession se1=request.getSession(true);
		String xlfile=(String)se1.getAttribute("sheetnamereload");
		String datedel=(String)se1.getAttribute("datedel");

		//PropertyConfigurator.configure("log4j.properties");
		PrintWriter pw=response.getWriter();

		// String s="";
		String stname=null;
		HttpSession session=request.getSession();

		String sheetnamee="C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/e-Resource/csv/reload/"+xlfile;
		////////System.out.println("Sheet name........."+sheetnamee);
		String strreplace="'\\";
		sheetnamee=sheetnamee.replaceAll("'/'", strreplace);
		////////System.out.println("Final Name is..............."+sheetnamee);
		//String strreplace="'/";
		//String Sheetname=sheetnamee.replaceAll("'\'", strreplace);
		////////System.out.println(Sheetname);
		ConnectionUtils connectionUtils=new ConnectionUtils();
		Connection conn=null;

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
			long otlt=0;
			long tothrs11=0;     
			//Class.forName("com.mysql.jdbc.Driver");
			//conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"hrerp", "root", "root");
			////////System.out.println("Loadtomysqlinout11::ConnectionPool----->>>>Before Open --->>>>Test");
			conn=connectionUtils.getDBConnection();
			////////System.out.println("Loadtomysqlinout11::ConnectionPool----->>>>After Open --->>>>Test");


			PreparedStatement pdel=conn.prepareStatement("delete from empinout1 where date=?");
			pdel.setString(1,datedel);
			pdel.executeUpdate();
			////////System.out.println("Data deleted from empinout1...on......."+datedel);

			PreparedStatement pdel1=conn.prepareStatement("delete from empabsent where date=?");
			pdel1.setString(1,datedel);
			pdel1.executeUpdate();
			////////System.out.println("Data deleted from empabsent...on......."+datedel);


			Statement st=conn.createStatement(rs.TYPE_SCROLL_SENSITIVE,rs.CONCUR_UPDATABLE);
			PreparedStatement pr123=null;
			String s="LOAD DATA LOCAL INFILE '"+sheetnamee+"' INTO TABLE empinout2 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 5 LINES (empid,empname,sitecode,department,type,date,first,last,Location)";
			// //////System.out.println("test1");
			st.executeUpdate(s);
			///////////////////////////////////////code to delete data from empinout
			PreparedStatement pdelvis=conn.prepareStatement("delete from empinout2 where empid like 'KV%'");
			pdelvis.executeUpdate();
			PreparedStatement pdelhk=conn.prepareStatement("delete from empinout2 where empid like 'HK%'");
			pdelhk.executeUpdate();
			PreparedStatement pdeltemp=conn.prepareStatement("delete from empinout2 where empid like 'KT%'");
			pdeltemp.executeUpdate();
			PreparedStatement pdelnum=conn.prepareStatement("delete from empinout2 where empname like 'Staff%'");
			pdelnum.executeUpdate();
			PreparedStatement pdelvisinvalid1=conn.prepareStatement("delete from empinout2 where date like '0000-00-00%'");
			pdelvisinvalid1.executeUpdate();
			///////////////////////////////code to upload data into empinou1//////////////////////////////
			ResultSet rs8=null;
			Statement st8=conn.createStatement(rs8.TYPE_SCROLL_SENSITIVE,rs8.CONCUR_UPDATABLE);
			st8.executeUpdate("insert into empinout1(empid,empname,department,date,first,last,tothrs,location,scode)select empid,empname,department,date,first,last,TIMEDIFF(last,first),Location,sitecode from empinout2 where date not in(select date from empinout1)and empid in(select empno from employee)");

			PreparedStatement pdelvisinvalid=conn.prepareStatement("delete from empinout1 where date like '0000-00-00%'");
			pdelvisinvalid.executeUpdate();
			//////////////////////////code to find time difference in empinout2///////////////////////////////////////
			Statement st2=conn.createStatement(rs2.TYPE_SCROLL_SENSITIVE,rs2.CONCUR_UPDATABLE);
			rs2 = st2.executeQuery("select empid,date,first,last from empinout2");
			while(rs2.next())
			{
				empid=rs2.getString(1);
				date9=rs2.getString(2);
				first=rs2.getLong(3);
				last=rs2.getLong(4);


				String s3="select AVG(TIMEDIFF(last,first)) from empinout2 where empid=?and date=?";
				PreparedStatement pr3=null;
				pr3=conn.prepareStatement(s3);
				pr3.setString(1,empid);
				pr3.setString(2,datedel);	///////~~~~~~~~~~~changed date
				ResultSet rs3=pr3.executeQuery();

				while(rs3.next())
				{
					totalhrs=rs3.getLong(1);
					////////System.out.println("totalhrs"+totalhrs);
				}

				PreparedStatement pr2=null;
				String s2="update empinout2 set totalhrs=? where empid=? and date=?";
				pr2=conn.prepareStatement(s2);

				pr2.setLong(1,totalhrs);
				pr2.setString(2,empid);
				pr2.setString(3,datedel);////////~~~~~~~~~~~~changed date
				pr2.executeUpdate();
			}
			///////////////////////////////////////////////////////////////////////code to insert values into empinout1/////////////////////////////////////////////////////////////////////
			Statement st4=conn.createStatement();
			rs4 = st4.executeQuery("select empid,date from empinout1 where date>='"+datedel+"'");
			String empid4=null;

			String date4=null;
			String designation4=null;
			String rm4=null;
			String hod=null;
			String namedb=null;

			while(rs4.next())
			{
				empid4=rs4.getString(1);

				date4=rs4.getString(2);
				//////System.out.println("date--- >  "+date4);
				//////System.out.println("EMPID  "+empid4);
				String s4="select designation,reportingto,manager,name from employee where empno=?";
				PreparedStatement pr4=null;
				pr4=conn.prepareStatement(s4);
				pr4.setString(1,empid4);		 
				ResultSet rs5=pr4.executeQuery();
				while(rs5.next())
				{
					designation4=rs5.getString(1);
					rm4=rs5.getString(2);
					hod=rs5.getString(3);
					namedb=rs5.getString(4);
					////////System.out.println("desig -- "+designation4);
					////////System.out.println("RM-- "+rm4);


					PreparedStatement pr5=null;
					String s5="update empinout1 set designation=?,RM=?,HOD=?,empname=? where empid=? and date=?";
					pr5=conn.prepareStatement(s5);
					pr5.setString(1,designation4);
					pr5.setString(2,rm4);
					pr5.setString(3,hod);
					pr5.setString(4,namedb);
					pr5.setString(5,empid4);

					pr5.setString(6,datedel); //~~~~~~~~~~~~changed date
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

			Statement st11=conn.createStatement();
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
				pr11=conn.prepareStatement(s11);

				//pr11.setLong(1,otlt);
				pr11.setString(1,empid11);
				pr11.setString(2,datedel);//changed date
				pr11.executeUpdate();
			}
			///////////////////////////////////////////////////////////////////////DIFF BETWEEN FROMDATE AND TODATE///////////////////////////////////////////////////////
			String date22=null;
			String date33=null;
			PreparedStatement pr22=conn.prepareStatement("Select date from empinout2");
			ResultSet rs22=pr22.executeQuery();
			//while(rs22.next())
			//{
			rs22.next();
			date22=rs22.getString(1); ///////////////////getting firstdate from table
			//////System.out.println("first date from table is.........."+date22);

			rs22.last();
			date33=rs22.getString(1);///////////////////getting firstdate from table
			//////System.out.println("last date from table is.........."+date33);
			//}

			Calendar cal1 = Calendar.getInstance();
			Calendar cal2 = Calendar.getInstance();
			//////////////String splitting for first date
			String array[]=date22.split("-");
			String val1=array[0].trim();	
			int val11=Integer.parseInt(val1);	
			////////System.out.println(val11);
			String val2=array[1].trim();
			int val12=Integer.parseInt(val2);	
			////////System.out.println(val12);
			String val3=array[2].trim();
			int val13=Integer.parseInt(val3);	
			//////System.out.println("END OF FIRST DATE"+val13);
			//////System.out.println("FD"+val11+val12+val13);
			///////////////////////////////////////////
			//////////////String splitting for last date
			String arr[]=date33.split("-");
			String val4=arr[0].trim();	
			int val14=Integer.parseInt(val4);
			////////System.out.println(val14);	
			String val5=arr[1].trim();
			int val15=Integer.parseInt(val5);	
			////////System.out.println(val15);
			String val6=arr[2].trim();
			int val16=Integer.parseInt(val6);	
			//////System.out.println("END OF LAST DATE"+val16);
			//////System.out.println("FD"+val14+val15+val16);
			///////////////////////////////////////////

			cal1.set(val11, val12, val13);

			cal2.set(val14, val15, val16);

			long milis1 = cal1.getTimeInMillis();
			long milis2 = cal2.getTimeInMillis();
			long diff = milis2 - milis1;
			long diffDays = diff / (24 * 60 * 60 * 1000);
			////////System.out.println("date diff is"+diffDays);
			int  findiff=(int)diffDays+1;
			//////System.out.println("date diff is"+findiff);
			for(int i=0;i<findiff;i++)
			{
				String dt = date22;  // Start date
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				Calendar c = Calendar.getInstance();
				c.setTime(sdf.parse(dt));
				c.add(Calendar.DATE, i);  // number of days to add
				dt = sdf.format(c.getTime());
				//////System.out.println("Data loading on date is"+dt);

				///////////////////////////////////////////////////////////////////////code to insert values into empabsent/////////////////////////////////////////////////////////////////////

				//Statement st1=conn.createStatement(rs.TYPE_SCROLL_SENSITIVE,rs.CONCUR_UPDATABLE);
				//rs = st1.executeQuery("select  * from empinout");
				////////System.out.println("test2");
				// rs.last();
				//String date1=rs.getString(6);
				////////System.out.println(date1);

				String t="select e.name,e.empno,e.department,e.designation,e.reportingto,e.manager from  employee e where e.status='Active' and e.empno not in (select empid from empinout2  eio where eio.empid=e.empno and date='"+dt+"')";      //code to get absenties
				// //////System.out.println("1");
				pr123=conn.prepareStatement(t);

				rs1= pr123.executeQuery();

				int cc=0;
				PreparedStatement pr=null;
				while (rs1.next()){
					String name=rs1.getString(1);
					String empno=rs1.getString(2);
					String deptab=rs1.getString(3);
					String desab=rs1.getString(4);
					String rmab=rs1.getString(5);
					String hodab=rs1.getString(6);
					//delete record  if already found in empabsent~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
					PreparedStatement pdup=conn.prepareStatement("delete from empabsent where date=? and empid=?");
					pdup.setString(1,dt);
					pdup.setString(2,empno);
					int count=pdup.executeUpdate();
					if(count!=0)
					{
						//////System.out.println("data deleted from empabsent.........if found.......on "+dt+"...........empid"+empno);
					}
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
					String s1="insert into empabsent(empid,empname,date,department,designation,RM,HOD)values(?,?,?,?,?,?,?)";
					////////System.out.println("2");
					pr=conn.prepareStatement(s1);
					////////System.out.println(name);
					////////System.out.println(empno);
					pr.setString(1,empno);
					pr.setString(2,name);
					pr.setString(3,dt);
					pr.setString(4,deptab);
					pr.setString(5,desab);
					pr.setString(6,rmab);
					pr.setString(7,hodab);

					pr.executeUpdate();
					cc++;
					//////System.out.println("**"+cc);
					////////System.out.println("**Absent**"+empno+"......"+dt);
					// //////System.out.println("**"+pr);
				}//while
				// out.println("Data has been read from the excel file and inserted into the database.");  
				//////////////////////////////////CODE TO INSERT INTO EMPABSENT WHERE FIRST OR LAST IS 00:00:00 FROM EMPINOUT1
				String empid1=null;
				String name1=null;
				String first1=null;
				String last1=null;
				String tothrs1=null;
				PreparedStatement pss1=conn.prepareStatement("select empid,empname,first,last from empinout1 where date='"+dt+"' and (first='00:00:00' || last='00:00:00')");
				ResultSet rss1=pss1.executeQuery();
				while(rss1.next())
				{
					empid1=rss1.getString(1);
					name1=rss1.getString(2);
					first1=rss1.getString(3);
					last1=rss1.getString(4);
					//   tothrs1=rss1.getString(5);

					/////////// insert into empabent
					PreparedStatement pss2=conn.prepareStatement("insert into empabsent(empid,empname,date,authentication,first,last,tothrs)values(?,?,?,?,?,?,?)");
					pss2.setString(1,empid1);
					pss2.setString(2,name1);
					pss2.setString(3,dt);
					pss2.setString(4,"AB");
					pss2.setString(5,first1);
					pss2.setString(6,last1);
					pss2.setString(7,"00:00:00");
					pss2.executeUpdate();

				}
				///////////////////
				///////////////////delete from empinout1	   
				PreparedStatement pss=conn.prepareStatement("delete from empinout1 where date='"+dt+"' and (first='00:00:00' || last='00:00:00')");
				int i2=pss.executeUpdate();
				if(i2!=0)
				{
					logger.info("* deleted when first r last is 00:00:00.........on."+dt+".......");
					
				}
				/////////////////	   
				/////////////////////////////////////////////////////////////////////////////////
				////////////////////////////////delete data from empabsent where data on Paid holidays
				boolean flag=false;
				String ddd=null;
				String event=null;
				PreparedStatement p111=null;
				p111=conn.prepareStatement("select date,event from ph where date='"+dt+"'");
				ResultSet r111=p111.executeQuery();

				while(r111.next())
				{
					ddd=r111.getString(1);
					event=r111.getString(2);

					if(dt.equals(ddd))
					{
						flag=true;
						
					}//if
					if(flag)
					{
						PreparedStatement p2=null;
						p2=conn.prepareStatement("Update empabsent set authentication=? where date='"+ddd+"'");
						p2.setString(1,event);
						p2.executeUpdate();
						
					}//flag true
				}//while
				/////////////////////////////////////////////////////////////////////////////////////////////////////delete data from empabsent where day is second saturday/////////////////////////
				int year =val11; //Moved here to get input after the question is asked

				int month = val12; //Moved here to get input after the question is asked

				int days = 0; //changed so that it just initializes the variable to zero


				boolean isLeapYear = (year % 4 == 0 && year % 100 != 0)||(year % 400 == 0);
				switch (month){
				case 1:
					days = 31;
					break;
				case 2:
					if (isLeapYear)
						days = 29;
					else
						days = 28;
					break;
				case 3:
					days = 31;
					break;
				case 4:
					days = 30;
					break;
				case 5:
					days = 31;
					break;
				case 6:
					days = 30;
					break;
				case 7:
					days = 31;
					break;
				case 8:
					days = 31;
					break;
				case 9:
					days = 30;
					break;
				case 10:
					days = 31;
					break;
				case 11:
					days = 30;
					break;
				case 12:
					days = 31;
					break;
				default:
					if ((month < 1)||(month > 12))
						System.exit(0);
				}
				////////System.out.println("No of .............days.............."+days);
				////////////////finding no of days per month completed
				int day222=1;
				int sat111=0;
				String date333=year+"-"+month+"-"+day222;
				for(int j=0;j<days;j++)
				{
					String dt11 = date333;  // Start date
					SimpleDateFormat sdf11 = new SimpleDateFormat("yyyy-MM-dd");
					Calendar c11 = Calendar.getInstance();
					c11.setTime(sdf11.parse(dt11));
					c11.add(Calendar.DATE, j);  // number of days to add
					dt11 = sdf.format(c11.getTime());
					////////System.out.println("Data loading on date is.......for second saturdayssssssssssssssss."+dt11);
					PreparedStatement p333=conn.prepareStatement("select dayname('"+dt11+"') from dual");
					ResultSet r333=p333.executeQuery(); 

					boolean flagday=false;
					while(r333.next())
					{

						String day333=r333.getString(1);
						////////System.out.println("Day name is............"+day333);
						if(day333.equals("Saturday"))
						{

							sat111++;
							////////System.out.println("............................"+sat111);
							if(sat111==2)
							{
								////////System.out.println("..............falg ayithe..............");
								flagday=true;
							}//if
						}//if
					}//while
					if(flagday)
					{
						////////System.out.println("day of SECOND SATDAY............"+dt11);
						PreparedStatement  p444=conn.prepareStatement("Update empabsent set authentication='SSAT' where date='"+dt11+"'");
						p444.executeUpdate();
						////////System.out.println("data deleted from empabsent on ss............"+dt11);
					}//if

				}//for loop to find saturday


				/////////////////////////////////////////////////////////////////////////////////////////

			}//for
			///////////////////////////////////////////////deleete data from empabsent where data on "SUNDAYS"
			PreparedStatement pss=null;
			pss=conn.prepareStatement("delete from empinout2");
			pss.executeUpdate();
			//////System.out.println("empinout2 data deleted...........");
			//logger.info("invoked the ...");
			//logger.debug("Sample debug message");
			//logger.info("Sample info message");
			//logger.warn("Sample warn message");
			//logger.error("Sample error message");
			//logger.fatal("Sample fatal message");
			PreparedStatement p11=null;

			p11=conn.prepareStatement("Update empabsent set authentication='Sunday' where dayname(date)='Sunday'");
			ResultSet r1=null;
			p11.executeUpdate();
			////////System.out.println("empabsent data deleted....when...day is sunday ....");
			////////System.out.println("empabsent data Updated....when...day is s ..and ..ss........");
			/////////////////////////////////////////////////////////////////////////////delete data from empabsent where secondsaturdays and paidholidays
			stname="Attendance data has been reloaded on<font color=#000099> "+datedel+"</font>";

		}//try
		catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		finally {
			try
			{
				//////System.out.println("Loadtomysqlinout11::ConnectionPool--Before Close --->>>>Test");
				if (conn != null) connectionUtils.setDBClose();
				//////System.out.println("Loadtomysqlinout11::ConnectionPool--After Close--->>>>Test");
			} catch (SQLException e)
			{
				
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
		//request.setAttribute("msg1",stname);
		HttpSession se=request.getSession(true);
		se.setAttribute("msg1",stname);
		//RequestDispatcher dispatcher = request.getRequestDispatcher("/loadtomysqlinout.jsp");
		//dispatcher.forward(request, response);
		response.sendRedirect("loadtomysqlinoutreload.jsp");
		pw.println("<font color=#EF6216 face=verdana size=2> <font color=#900F8E face=verdana size=2>"+stname+"</font>");
	}
}
