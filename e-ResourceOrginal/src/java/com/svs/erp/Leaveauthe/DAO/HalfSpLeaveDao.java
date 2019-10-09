package com.svs.erp.Leaveauthe.DAO;

import java.sql.*;
import java.io.*;
import java.lang.*;
import java.util.Date;
import java.util.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.apache.log4j.Logger;
import org.jfree.util.Log;

import com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;

public class HalfSpLeaveDao {
		static Logger log = Logger.getLogger(HalfSpLeaveDao.class);
		ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	Connection con;
	PreparedStatement pr,pr1,pr4,pr5,p1;
	Statement st,st1,st2;
	ResultSet rs=null,rs1=null,rs2=null,rs5=null;
	//DBConnection cc=new DBConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();
	String empno;
	String emp;
	String fromdate1;
	String upemployee;
	String status;
	String empid=null;
	String p,q,emp1;

	double CLBAL=0;
	double SLBAL=0;
	double PLBAL=0;
	double CLOPEN=0;
	double SLOPEN=0;
	double PLOPEN=0;
	double totalleaves=0;
	double i;
	double noofleaves=0;
	double noofleaves1=0;
	double noofleaves2=0;
	double extraleaves=0;
	double remainingleaves1=0;
	//boolean flag=false;
	double remainingleaves=0;
	double cl1=0;
	double cl2=0.0;
	double sl1=0;
	double sl2=0.0;
	double pl1=0;
	double pl2=0.0;
	double remainingleaves2=0;

	double referenceno;
	double oldreferenceno=0;

	double cl=0;
	double sl=0;
	double pl=0;
	double grandleaves=0;
	double grandleaves1=0;
	double grandleaves2=0;
	double totalcl=0;
	double totalsl=0;
	double totalpl=0;
	double lop1=0;
	double lop2=0;
	double lop3=0;
	//double lop2=0;
	double lop4=0;
	double totallop=0;
	double bcl=0;
	double bsl=0;
	double bpl=0;
	double tcl=0;
	double tsl=0;
	double tpl=0;

	double ttcl=0;
	double ttsl=0;
	double ttpl=0;

	String name=null;

	public HalfSpLeaveDao()
	{
		try
		{
			//////System.out.println("HalfSpLeaveDao::ConnectionPool----->>>>Before Open --->>>>Test");

			con=connectionUtils.getDBConnection();
			//////System.out.println("HalfSpLeaveDao::ConnectionPool----->>>>After Open --->>>>Test");


		}catch(Exception ex)
		{
			log.error(util_stacktrace.sendingErrorAsString(ex));
		}
	}

	/*-------------Approve announcement--------------*/

	public void approvehalfSP(String employeecode,String empname,String leavetype,String fromdate,String todate,double cll,double sll,double pll,double lop)throws SQLException,IOException
	{
		try{

			emp=employeecode;
			fromdate1=fromdate;
			name=empname;


			cl2=cll;
			sl2=sll;
			pl2=pll;
			lop1=lop;
			String emp123=null;
			/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// calculating date difffffffffffffff
			Calendar cal1 = Calendar.getInstance();
			Calendar cal2 = Calendar.getInstance();
			//////////////String splitting for first date
			String array[]=fromdate.split("-");
			String val1=array[0].trim();	
			int val11=Integer.parseInt(val1);	
			////////System.out.println(val11);
			String val2=array[1].trim();
			int val12=Integer.parseInt(val2);	
			////////System.out.println(val12);
			String val3=array[2].trim();
			int val13=Integer.parseInt(val3);	
			////////System.out.println("END OF FIRST DATE"+val13);
			////////System.out.println("FD"+val11+val12+val13);
			///////////////////////////////////////////
			//////////////String splitting for last date
			String arr[]=todate.split("-");
			String val4=arr[0].trim();	
			int val14=Integer.parseInt(val4);
			////////System.out.println(val14);	
			String val5=arr[1].trim();
			int val15=Integer.parseInt(val5);	
			////////System.out.println(val15);
			String val6=arr[2].trim();
			int val16=Integer.parseInt(val6);	
			////////System.out.println("END OF LAST DATE"+val16);
			////////System.out.println("FD"+val14+val15+val16);
			///////////////////////////////////////////

			cal1.set(val11, val12, val13);

			cal2.set(val14, val15, val16);

			long milis1 = cal1.getTimeInMillis();
			long milis2 = cal2.getTimeInMillis();
			long diff = milis2 - milis1;
			long diffDays = diff / (24 * 60 * 60 * 1000);
			////////System.out.println("date diff is"+diffDays);
			int  findiff=(int)diffDays+1;


			if(leavetype.equals("1/2SP"))
			{
				////////System.out.println("...................................test111111............"+leavetype);
				/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// calculating date difffffffffffffff
				for(int i=0;i<findiff;i++)
				{
					String dt = fromdate;  // Start date specify here
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
					Calendar c = Calendar.getInstance();
					c.setTime(sdf.parse(dt));
					c.add(Calendar.DATE, i);  // number of days to add
					dt = sdf.format(c.getTime());
					////////System.out.println("Authenticated on the date is.....DAO3.......SP........"+dt);



					cl2=0;
					sl2=0.5;
					pl2=0.5;
					lop1=0;
					noofleaves2=cl2+sl2+pl2+lop1;
					//////////////////////if leavetype CL then proceed

					boolean flag1=false;
					boolean flag=false;
					////////System.out.println("EMPID. in if of SP.."+emp);
					//~~~~~~~~~~~~~~~~~~~~~~~~~V.IMP~~~~~~~~~~~~~~~~~~~~~~~~~~~getting total leaves and balance leaves from leaveopen.........
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
					PreparedStatement  plo1=con.prepareStatement("select TOTAL,CLOPEN,SLOPEN,PLOPEN from leaveopen where empid=?");
					plo1.setString(1,emp);
					ResultSet rlo1=plo1.executeQuery();
					while(rlo1.next())
					{
						totalleaves=rlo1.getDouble(1);
						CLOPEN=rlo1.getDouble(2);
						SLOPEN=rlo1.getDouble(3);
						PLOPEN=rlo1.getDouble(4);
					}
					//////System.out.println("HalfSpLeaveDao::TOTAL......"+totalleaves+".....SLOPEN......PLOPEN.............."+SLOPEN+"......"+PLOPEN);
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Code ends here(total leaves and balance leaves from leaveopen)
					///////-------------------------------------------------------------------------------------//--------------gettting balance SL  if emp not there

					ttsl=SLOPEN;
					ttpl=PLOPEN;

					log.debug("HalfSpLeaveDao::Employee Id is"+emp+ "TotalLeave Is"+totalleaves+"CL From Leaveopen"+SLOPEN+"Leave Authenticated Date is"+dt );

					bsl=ttsl-sl2;
					bpl=ttpl-pl2;
					//if empid find 
					p1=con.prepareStatement("select  remainingleaves,grandleaves from leaveapplications where empid=?");
					p1.setString(1,emp);
					rs1=p1.executeQuery();
					while(rs1.next())
					{

						emp123=emp;

						remainingleaves2=Double.parseDouble(rs1.getString("remainingleaves"));
						grandleaves2=Double.parseDouble(rs1.getString("grandleaves"));

						if(emp.equals(emp123))
						{
							flag=true;

						}//flag   for if empid finds
					}	    

					if(flag) ///////////////////////////employeee data from database///////////////////////////////////// if.... flag is true 
					{


						st=con.createStatement(rs.TYPE_SCROLL_SENSITIVE,rs.CONCUR_UPDATABLE);
						rs=st.executeQuery("select empid,remainingleaves,grandleaves,lop1,totalcl,totalsl,totalpl,totalleaves,bcl,bpl from leaveapplications where empid='"+emp123+"'");
						rs.afterLast();
						while(rs.previous())//last record
						{
							remainingleaves1=rs.getDouble("remainingleaves");
							grandleaves1=rs.getDouble("grandleaves");
							cl1=rs.getDouble("totalcl");
							sl1=rs.getDouble("totalsl");
							pl1=rs.getDouble("totalpl");
							totalleaves=rs.getDouble("totalleaves");
							lop3=rs.getDouble("lop1");
							tcl=rs.getDouble("bcl");
							tpl=rs.getDouble("bpl");


							flag1=true;

							break;

						}

						if(flag1==true)/////////////////////for getting last record of employeeeeeeeeee
						{
							cl2=cl2;
							sl2=sl2;
							pl2=pl2;
							lop1=lop3;
							// totalcl=cl1+cl2;///////////////adding old CL to new CL
							totalsl=sl1+sl2;
							totalpl=pl1+pl2;
							grandleaves=grandleaves1+noofleaves2;// adding noof leaves to grand leaves
							remainingleaves=remainingleaves1-noofleaves2; //deduct noofleaves from remaining leaves
							lop1=lop3;          

							//ttsl=(totalleaves/3);
							ttsl=SLOPEN;
							ttpl=PLOPEN;


							bsl=ttsl-totalsl;
							bpl=ttpl-totalpl;

							if(grandleaves> totalleaves)
							{
								extraleaves=grandleaves-totalleaves;// lop
								lop2=extraleaves;

							}
							else
							{
								extraleaves=0;
								lop2=extraleaves;
							}
						}//if flag1
						else

						{
							remainingleaves=remainingleaves2-noofleaves2;
							grandleaves=noofleaves2;
							cl2=cl2;
							sl2=sl2;
							pl2=pl2;

							totalcl=cl2;
							totalsl=sl2;
							totalpl=pl2;
							lop1=lop1;

						}//else of flag1


					}//flag		
					else
					{
						remainingleaves=totalleaves-noofleaves2;//////////////////if new emp deduct from totalleaves
						grandleaves=noofleaves2;
						cl2=cl2;
						sl2=sl2;
						pl2=pl2;
						totalcl=cl2;
						totalsl=sl2;
						totalpl=pl2;
						lop1=lop1;


					}//else of flag	 
					pr=con.prepareStatement("insert into leaveapplications(name,empid,fromdate,cl,sl,pl,lop,totalleaves,noofleaves,remainingleaves,lop1,totalcl,totalsl,totalpl,grandleaves,leavetype,todate,bsl,bcl,bpl)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

					pr.setString(1,name);
					pr.setString(2,emp);
					pr.setString(3,dt);
					pr.setDouble(4,cl2);
					pr.setDouble(5,sl2);
					pr.setDouble(6,pl2);

					pr.setDouble(7,lop4);
					pr.setDouble(8,totalleaves);
					pr.setDouble(9,noofleaves2);
					pr.setDouble(10,remainingleaves);

					pr.setDouble(11,lop1);
					pr.setDouble(12,cl1);
					pr.setDouble(13,totalsl);
					pr.setDouble(14,totalpl);
					pr.setDouble(15,grandleaves);
					pr.setString(16,leavetype);
					pr.setString(17,dt);
					pr.setDouble(18,bsl);
					if(tcl==0)
					{
						tcl=CLOPEN;
						// tpl=7;
					}
					pr.setDouble(19,tcl);
					pr.setDouble(20,bpl);
					pr.executeUpdate();   



				} //~~~~~~~~~~~~~~~~~~~FOR LOOP ~~~~~~SL~~~~~~~~~~~~~~~~~~~~~ second  SL FOR LOOP close
			}//if SL



		}//try
		catch(Exception ex)
		{
			Log.error(util_stacktrace.sendingErrorAsString(ex));
		}
		finally {
			try
			{

				//////System.out.println("HalfSpLeaveDao::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("HalfSpLeaveDao::ConnectionPool--After Close--->>>>Test");
			} catch (SQLException e)
			{
				log.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
	}///////function
	//return p;

}

