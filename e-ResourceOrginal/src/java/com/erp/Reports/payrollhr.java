package com.erp.Reports;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
//import java.sql.DriverManager;
//import java.sql.SQLException;
import java.util.HashMap;
import java.util.Properties;
import java.util.StringTokenizer;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperRunManager;

import com.svs.erp.Hr.DAO.MonthExtract;
import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.erp.company.DAO.CompanyRegistrationDAO;
import com.svs.util.ConvertStackTracetoString;
import com.svs.util.Properties_Util;

public class payrollhr extends HttpServlet
{
	
	private ServletContext servletContext;
	final static Logger logger = Logger.getLogger(payrollhr.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	private CompanyRegistrationDAO companyregdao=new CompanyRegistrationDAO();
	private Properties_Util util_prop=new Properties_Util();
	private Properties prop=new Properties();	

	/** Initializes the Servlet and gets the Initial parameters */
	public void init(ServletConfig Conf) throws ServletException {
		super.init(Conf);
		
		try {
			servletContext = Conf.getServletContext();
		} catch (Exception ex) {
			logger.error(util_stacktrace.sendingErrorAsString(ex));
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	 HttpSession session = request.getSession(true);
	 Connection con = null;
	HashMap hm = new HashMap();
	PreparedStatement pr=null;
	ResultSet rs=null;
	
        	ServletOutputStream servletOutputStream = response.getOutputStream();
			InputStream reportStream = servletContext.getResourceAsStream("/Reports/payrollhr.jasper");

		String empno=null;
		String rm=session.getAttribute("rm").toString();
		String fromdate=session.getAttribute("fromdate").toString();
		String todate=session.getAttribute("todate").toString();
		String hod=session.getAttribute("hod").toString();
		String empno1=session.getAttribute("empno1").toString();
		////////System.out.println("String is"+empno1);
		 try {
		 /////////////////////////////////////////////////////////////////////////initialization
		 int c=0;
		 double co=0;
		  double co1=0;
		   double co2=0;
		    double co3=0;
		//int paiddays=0;
		double totalpaiddays=0;
		int wo1=0;
		int wo2=0;
		int totwo=0;
		int ph=0;
		int woph=0;
		double leaves=0;
		double cl=0;
		double sl=0;
		double pl=0;
		double lop=0;
		int tl1=0;
		int tl2=0;
		int ods=0;
		int spl=0;
		double totleaves=0;
		//double LOP=0;
		double totalpaid=0; 
		double half=0;
		double half1=0;
		double half2=0;
		double lop1=0;
		double lop2=0;
		double lop3=0;
		String month=null;
		String tname1=null;
		String empname=null;
		ConnectionUtils conn=new ConnectionUtils();
			con=conn.getDBConnection();
			PreparedStatement pr4=con.prepareStatement("show tables");
			 ResultSet rs4=pr4.executeQuery();
			boolean flag1=false;
			try{
			while(rs4.next())
			{
			 tname1=rs4.getString(1).trim();
			 	if(tname1.equals("payrollhr"))
		flag1=true;
		////////System.out.println("Table name1...... is........."+tname1);
			}
			if(flag1)
			{
			PreparedStatement pr3=con.prepareStatement("drop table payrollhr");
		//	//////System.out.println("Payroll....table deleted");
			 pr3.executeUpdate();
			 }
			 }
			 catch(SQLException ex)
			 {
			logger.error(util_stacktrace.sendingErrorAsString(ex));
			 }
			//////////////////////////////////////////////////code to delete table/////////////////////////////////////////////////////
			
		/////////////////////////////////////////////////////////complete initialization
		 /////////////////////////////////////////////////////////////////////////////////////////String tokenizer to split values
		 String  empno2= empno1.replace( '[', ',' );
		String  empno3= empno2.replace( ']', ',' );
		
		ArrayList<String> empno5 = new ArrayList<String>(); ////////////array list to add empnos
		 StringTokenizer st = new StringTokenizer(empno3, ",");
				while(st.hasMoreTokens()) {
				
				 String empno4 = st.nextToken();
								
				empno5.add(empno4); // adding empno in array list
				
			}
	/////////////////////////////////////////////////////////////////////////////////////////
	

		for(int i=0; i< empno5.size(); i++){                                 // for loop to calculate all the values by emno wise which are added in arraylist
c++;
			empno=empno5.get(i).trim();
  					/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
					PreparedStatement p1=con.prepareStatement("select name from employee where empno=?");
					p1.setString(1,empno);
					ResultSet r1=p1.executeQuery();
					while(r1.next())
					{
					empname=r1.getString(1);
					////////System.out.println("Payrollhr ....Employeename..."+empname+"...for EmplD.."+empno);
					}
					//~~~~~~~~~~~~~~~~~~~~counting presentdays of the employeeeeee
					PreparedStatement pc=con.prepareStatement("select count(date) from empinout1 where empid=? and date between ? and ?");
					pc.setString(1,empno);
					pc.setString(2,fromdate);
					pc.setString(3,todate);
					ResultSet rc=pc.executeQuery();
					while(rc.next())
					{
					co=rc.getInt(1);
					////////System.out.println("Payrollhr......card swiped days are...."+co);
					}
					///~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
					
					//~~~~~~~~~~~~~~~~~~~~counting presentdays of the who are not authenticated(deduct them)
					PreparedStatement pc1=con.prepareStatement("select count(date) from empinout1 where empid=? and (first>='10:30:00' || last<='14:45:00') and (leavetype='XX' || leavetype='1/2CL' || leavetype='1/2SL' || leavetype='1/2PL' ) and date between ? and ?");
					pc1.setString(1,empno);
					pc1.setString(2,fromdate);
					pc1.setString(3,todate);
					ResultSet rc1=pc1.executeQuery();
					while(rc1.next())
					{
					co1=rc1.getInt(1);
					
					}
					co1=co1/2;
					////////System.out.println("Payrollhr....card swiped days are...(first>=10:30:00 || last<=14:45:00)....."+co1);
					half=co1;
					co=co-co1;//~~~~~~~~~~~~deducting them
					
					//~~~~~~~~~~~~~~~~~~~~counting presentdays of the who are authenticated(deduct them) and on OD
					PreparedStatement pc2=con.prepareStatement("select  count(date) from empinout1 where empid=? and totnod<'06:15:00' and leavetype='OD' and date between ? and ?");
				pc2.setString(1,empno);
				pc2.setString(2,fromdate);
					pc2.setString(3,todate);
					ResultSet rc2=pc2.executeQuery();
					int d=0;
					while(rc2.next())
					{
					d++;
					////////System.out.println("............................."+d);
					 co2=rc2.getInt(1);
					
					}
				//	co=co-co1;//~~~~~~~~~~~~deducting them
					co2=co2/2;
					////////System.out.println("Payrollhr......card swiped days are.TOT+OD..<6:15:00..payroll...OD.."+co2);
					half1=co2;
					co=co-co2;
					////////System.out.println("Payrollhr......card swiped days are.TOT+OD..<6:15:00..payroll....CO."+co);
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
					//~~~~~~~~~~~~~~~~~~~~counting presentdays of the who are authenticated(deduct them) and on OD
					PreparedStatement pc3=con.prepareStatement("select  count(date) from empinout1 where empid=? and totnod<'06:15:00' and leavetype='PER' and date between ? and ?");
				pc3.setString(1,empno);
				pc3.setString(2,fromdate);
					pc3.setString(3,todate);
					ResultSet rc3=pc3.executeQuery();
					while(rc3.next())
					{
					
					co3=rc3.getInt(1);
					
					}
				//	co=co-co1;//~~~~~~~~~~~~deducting them
					co3=co3/2;
					////////System.out.println("Payrollhr......card swiped days are.TOT+PER..<6:15:00..payroll....PER."+co3);
					half2=co3;
					co=co-co3;
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Finding no of weekoff and PH
					String sunday=null;
					String sundate1=null;
					PreparedStatement p2=con.prepareStatement("select count(date) from empabsent where empid=? and authentication='Sunday' and date between ? and ?");
					p2.setString(1,empno);
					p2.setString(2,fromdate);
					p2.setString(3,todate);
					ResultSet r2=p2.executeQuery();
					while(r2.next())
					{
					wo1=r2.getInt(1);
					////////System.out.println("Payrollhr......Week Off Sundays..empabsent...."+wo1);
					}
					//~~~~~~~~~~~~~~~~~~if employee comes office on sunday  deduct from sundays......
					//PreparedStatement psund1=con.prepareStatement("select empid,date from empabsent where empid=? and date between ? and ?");
					int sun=0;
					PreparedStatement psund=con.prepareStatement("select dayname(date) from empinout1 where empid=? and date between ? and ?");
					psund.setString(1,empno);
					psund.setString(2,fromdate);
					psund.setString(3,todate);
					ResultSet rsund=psund.executeQuery();
					while(rsund.next())
					{
					sunday=rsund.getString(1);
					if(sunday.equals("Sunday"))
					{
					sun++;
					////////System.out.println("Payrollhr......Sundays .found in empinout1......"+sun);
					}
					}
					co=co-sun;//deducting sundays from empinout1
					lop1=sun;
					//wo1=wo1-sun;
					////////System.out.println("Payrollhr......After deducting empinout1 sundays ....co.."+co);
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
					
					
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Finding no of weekoff and PH for second saturdays........
					PreparedStatement p3=con.prepareStatement("select count(date) from empabsent where empid=? and authentication='SSAT' and date between ? and ?");
					p3.setString(1,empno);
					p3.setString(2,fromdate);
					p3.setString(3,todate);
					ResultSet r3=p3.executeQuery();
					while(r3.next())
					{
					wo2=r3.getInt(1);
					////////System.out.println("Payrollhr......Week Off Second Sat........."+wo2);
					}
					//~~~~~~~~~~~~~~~~~~if employee comes office to Second SAT  deduct from SSAT......
					//PreparedStatement psund1=con.prepareStatement("select empid,date from empabsent where empid=? and date between ? and ?");
					int ssat=0;
					String ssatday=null;
					PreparedStatement pssat=con.prepareStatement("select date from empabsent where empid=? and authentication='SSAT' and date between ? and ?");
					pssat.setString(1,empno);
					pssat.setString(2,fromdate);
					pssat.setString(3,todate);
					ResultSet rssat=pssat.executeQuery();
					while(rssat.next())
					{
					ssatday=rssat.getString(1); //getting date if ssat
					
					PreparedStatement pssat1=con.prepareStatement("select * from empinout1 where empid=? and date=?");
					pssat1.setString(1,empno);
					pssat1.setString(2,ssatday);
					ResultSet rssat1=pssat1.executeQuery();
					while(rssat1.next())
					{
					ssat++;
					////////System.out.println("Payrollhr......SSAT .found in empinout1......"+ssat);
					}//inner while
					
					}//main while
					co=co-ssat;
					lop2=ssat;
					//wo2=wo2-ssat;
					////////System.out.println("Payrollhr......After deducting empinout1 SSAT ......"+co);
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
					
					
					totwo=wo1+wo2;//~~~~~~total week offs
					////////System.out.println("Payrollhr......Total Week Off s......."+totwo);
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Finding no of weekoff and PH
					PreparedStatement p4=con.prepareStatement("select count(date) from ph where date between ? and ?");
					//p3.setString(1,empno);
					p4.setString(1,fromdate);
					p4.setString(2,todate);
					ResultSet r4=p4.executeQuery();
					while(r4.next())
					{
					ph=r4.getInt(1);
					////////System.out.println("Payrollhr......PH........"+ph);
					}
					//~~~~~~~~~~~code to deduct from paid holidays if emp comes on ph
					String evedate=null;
					int eve=0;
					PreparedStatement pphd=con.prepareStatement("select date,event from ph where date between ? and ?");
					pphd.setString(1,fromdate);
					pphd.setString(2,todate);
					ResultSet rphd=pphd.executeQuery();
					while(rphd.next())
					{
					evedate=rphd.getString(1);
					
					PreparedStatement pphd1=con.prepareStatement("select empname,date from empinout1 where date=?");
					pphd1.setString(1,evedate);
					ResultSet rphd1=pphd1.executeQuery();
					while(rphd1.next())
					{
					eve++;
					////////System.out.println("Payrollhr......PH .Found in empinout1......."+eve);
					}//innser while
					}//while
					//ph=ph-eve;
					co=co-eve;
					lop3=eve;
					////////System.out.println("Payrollhr......After deducting empinout1 PH from total PH......"+co);
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`
					
					woph=ph+totwo;
					////////System.out.println("Payrollhr......Total PH..WO+PH......."+woph);
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~``
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Finding no of leaves
					PreparedStatement p5=con.prepareStatement("select sum(cl),sum(sl),sum(pl),sum(lop) from leaveapplications where empid=? and fromdate between ? and ?");
					p5.setString(1,empno);
					p5.setString(2,fromdate);
					p5.setString(3,todate);
					ResultSet r5=p5.executeQuery();
					while(r5.next())
					{
					cl=r5.getDouble(1);
					sl=r5.getDouble(2);
					pl=r5.getDouble(3);
					lop=r5.getDouble(4);
					}
					leaves=cl+sl+pl;
					////////System.out.println("Payrollhr......Leaves..cl,sl,pl........"+leaves);
					co=co-lop;
					//////System.out.println("Payrollhr......1/2 LOP OR LOP.........AFTER DEDUCTION....."+co);
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~``
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Finding no of leaves TL
					PreparedStatement p6=con.prepareStatement("select count(date) from empabsent where empid=? and authentication='TL' and date between ? and ?");
					p6.setString(1,empno);
					p6.setString(2,fromdate);
					p6.setString(3,todate);
					ResultSet r6=p6.executeQuery();
					while(r6.next())
					{
					tl1=r6.getInt(1);
					}
					////////System.out.println("Payrollhr......TOUR Leaves......"+tl1);
					totleaves=tl1+leaves;
					////////System.out.println("Payrollhr......Total Leaves......"+totleaves);
				//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~``calculating SPL leaves
				//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Finding no of leaves TL
					PreparedStatement pspl=con.prepareStatement("select count(date) from empabsent where empid=? and authentication='SPL' and date between ? and ?");
					pspl.setString(1,empno);
					pspl.setString(2,fromdate);
					pspl.setString(3,todate);
					ResultSet rspl=pspl.executeQuery();
					while(rspl.next())
					{
					spl=rspl.getInt(1);
					}	
				totleaves=spl+totleaves;
					////////System.out.println("Payrollhr......Total Leaves..after SPL...."+totleaves);
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~``
					totalpaiddays=co+woph+totleaves;
					////////System.out.println("Payrollhr......Total Paid Days........"+totalpaiddays);
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Find EMPLOYEE WITHOUT AUTHENTICATION FROM ABSENT
					int lopab=0;
					PreparedStatement p7=con.prepareStatement("select count(date) from empabsent where empid=? and authentication='AB' and date between ? and ?");					 
					p7.setString(1,empno);
					p7.setString(2,fromdate);
					p7.setString(3,todate);
					ResultSet r7=p7.executeQuery();
					while(r7.next())
					{
					lopab=r7.getInt(1);
					//////System.out.println("AB Without Authentication.....payroll....."+lopab);
					}
					lop=lop+lopab+half+lop1+lop2+lop3+half1+half2;
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~find no of working days......................
					///////////////////////////////////////////////////////////////////////DIFF BETWEEN FROMDATE AND TODATE///////////////////////////////////////////////////////
						
			Calendar cal1 = Calendar.getInstance();
	Calendar cal2 = Calendar.getInstance();
	//////////////String splitting for first date
	String array[]=fromdate.split("-");
		String val1=array[0].trim();	
		int val11=Integer.parseInt(val1);	
								String val2=array[1].trim();
							int val12=Integer.parseInt(val2);	
							String val3=array[2].trim();
							int val13=Integer.parseInt(val3);	
	//////////////String splitting for last date
	String arr[]=todate.split("-");
		String val4=arr[0].trim();	
		int val14=Integer.parseInt(val4);
						String val5=arr[1].trim();
							int val15=Integer.parseInt(val5);	
						String val6=arr[2].trim();
							int val16=Integer.parseInt(val6);	

	cal1.set(val11, val12, val13);

	cal2.set(val14, val15, val16);
	
long milis1 = cal1.getTimeInMillis();
long milis2 = cal2.getTimeInMillis();
long diff = milis2 - milis1;
long diffDays = diff / (24 * 60 * 60 * 1000);
//////System.out.println("date diff is in payroll......."+diffDays);
int  findiff=(int)diffDays+1;
//////System.out.println("date diff is in payroll..................."+findiff);
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
					//extraction of month name to display in reports
			MonthExtract mex=new MonthExtract();
			String month1=mex.getvalue(empno,fromdate,todate);
				/////////////////////////////////////////////////////////////////////////////////////////////create temp table/////////////////////////////////////////////
			String tname=null;
			 pr=con.prepareStatement("show tables");
			 rs=pr.executeQuery();
			 boolean flag=false;
			while(rs.next())
			{
			 tname=rs.getString(1).trim();
			////////System.out.println("............."+tname);
			if(tname.equals("payrollhr"))
			
		flag=true;
		
		
			
			}
			
			if(flag)
			{
			
			//////System.out.println("Table name is........."+tname);
			PreparedStatement pr1=con.prepareStatement("insert into payrollhr(sno,empid,empname,presdays,woph,leaves,LOP,totalpaid,nwd)values(?,?,?,?,?,?,?,?,?)");
			pr1.setInt(1,c);
			pr1.setString(2,empno);
			pr1.setString(3,empname);
			////////System.out.println("**************"+co);
			pr1.setDouble(4,co);
			pr1.setInt(5,woph);
			pr1.setDouble(6,totleaves);
			pr1.setDouble(7,lop);
			pr1.setDouble(8,totalpaiddays);
			pr1.setInt(9,findiff);
			pr1.executeUpdate();
			//////System.out.println("IF payrollhr");
			}
			else
			{
			PreparedStatement pr2=con.prepareStatement("create table payrollhr(sno int(10),empid varchar(20),empname varchar(70),presdays double,woph int(10),leaves double,lop double,totalpaid double,nwd int(5))");
			pr2.executeUpdate();
			PreparedStatement pr1=con.prepareStatement("insert into payrollhr(sno,empid,empname,presdays,woph,leaves,LOP,totalpaid,nwd)values(?,?,?,?,?,?,?,?,?)");
			pr1.setInt(1,c);
			pr1.setString(2,empno);
			pr1.setString(3,empname);
			////////System.out.println("**************"+co);
			pr1.setDouble(4,co);
			pr1.setInt(5,woph);
			pr1.setDouble(6,totleaves);
			pr1.setDouble(7,lop);
			pr1.setDouble(8,totalpaiddays);
			pr1.setInt(9,findiff);
			pr1.executeUpdate();
			//////System.out.println("ELSE OF payrollhr");
	
			}
			
			/////////////////////////////////////////////////////////////////////////////////////////////END for temp/////////////////////////////////////////////
			////////System.out.println(month+"month");
				//hm.put("rm",rm);
			    hm.put("fromdate",fromdate);
				hm.put("todate",todate);
				hm.put("month",month1);
				String companyname=(String)request.getSession().getAttribute("comp");
				String imageName=companyregdao.viewImageNameByCompanyName(companyname);//Getting Image Name by using Companyname.
				prop=util_prop.getMessageUpload();//Setting properties file to properties Object.
				String imagePath=prop.getProperty("logopath")+imageName;//Merging(Concatinate) the Path and ImageName.
				hm.put("imagePath", imagePath);
				//hm.put("month",month);
				//hm.put("hod",hod);
				//////System.out.println("Test1.....month"+month1);
							}//for		
								
			
			JasperRunManager.runReportToPdfStream(reportStream , servletOutputStream,hm, con);
			
			
			
			

			
		
			response.setContentType("application/pdf");
			servletOutputStream.flush();
			servletOutputStream.close();
	
			
		}//try 
		
		
		catch (JRException e1) {
			logger.error(util_stacktrace.sendingErrorAsString(e1));
		} 
		catch (ClassNotFoundException e) {
			logger.error(util_stacktrace.sendingErrorAsString(e));
		} 
		catch (SQLException e) {
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		catch (Exception ex){
			logger.error(util_stacktrace.sendingErrorAsString(ex));
		}
		finally {
		try
        {
            con.close();
        } catch (SQLException e)
        {
            //logger.error("The statement cannot be closed.", e);
        	logger.error(util_stacktrace.sendingErrorAsString(e));
        }
}
	}//doGet
}//class

