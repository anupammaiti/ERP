package com.svs.erp.Leaveauthe.DAO;


import java.sql.*;
import java.io.*;
import java.lang.*;
import java.util.Date;
import java.util.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;

import org.apache.log4j.Logger;

public class PrivilegeLeaveDao {

	static Logger log = Logger.getLogger(PrivilegeLeaveDao.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	Connection con;
	//DBConnection cc=new DBConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();
	PreparedStatement pr,pr1,pr4,pr5,p1;
	Statement st,st1,st2;
	ResultSet rs=null,rs1=null,rs2=null,rs5=null;

	double cl2 = 1.0;
	double sl2 = 0;
	double pl2 = 0;
	double lop1 = 0;
	double lop2=0;
	double lop3=0;
	double lop4=0;
	double noofleaves2;
	int findiff;
	String fromdate;
	String emp;

	String fromdate1;
	String name;
	double sl1=0;
	double pl1=0;
	double totalleaves;
	double CLBAL;
	double CLOPEN;
	double SLOPEN;
	double PLOPEN;
	double bcl;
	double ttcl;
	double remainingleaves1=0;
	double remainingleaves2=0;
	double grandleaves2=0;
	double grandleaves1=0;
	double totalcl=0;
	double totalsl=0;
	double totalpl=0;
	double tcl=0;
	double tsl=0;
	double tpl=0;
	double cl1;
	double grandleaves=0;
	double remainingleaves=0;
	double extraleaves=0;
	double ttpl;
	double bpl;

	public PrivilegeLeaveDao()
	{
		try
		{
			//////System.out.println("PrivilegeLeaveDao::ConnectionPool----->>>>Before Open");

			con=connectionUtils.getDBConnection();
			//////System.out.println("PrivilegeLeaveDao::ConnectionPool----->>>>After Open");

		}catch(Exception ex)
		{
			                      log.error(util_stacktrace.sendingErrorAsString(ex));
		}
	}
	
	

	public void approvepl(String employeecode,String empname,String leavetype,String fromdate,String todate,double cll,double sll,double pll,double lop)throws SQLException,IOException
	{
		try{

			emp=employeecode;
			fromdate1=fromdate;
			name=empname;
			////////System.out.println("EMPID..."+emp);
			////////System.out.println("EMPName..."+empname);
			////////System.out.println("Leave type..."+leavetype);
			////////System.out.println("date..."+fromdate1);

			cl2=cll;
			sl2=sll;
			pl2=pll;
			lop1=lop;
			String emp123=null;
			//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////calculating date difffffffffffffff
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
			////////System.out.println("date diff is"+findiff);
			//~~~~~~~~~~~~~~~CL ~~~~~~~~~~CL~~~~~~~~~~~~CL~~~~~~~~~~~~CL~~~~~~~~~~CL
			//~~~~~~~~~~~CL~~~~~~~CL~~~~~~~~CL~~~~~~~~~~~~~CL~~~~~~~~~~~~~~~~~~~~~~
			if(leavetype.equals("PL"))
			{
				////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// calculating date difffffffffffffff
				for(int i=0;i<findiff;i++)
				{
					String dt = fromdate;  // Start date specify here
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
					Calendar c = Calendar.getInstance();
					c.setTime(sdf.parse(dt));
					c.add(Calendar.DATE, i);  // number of days to add
					dt = sdf.format(c.getTime());
					//////System.out.println("Authenticated on the date is.....DAO3.......PL........"+dt);


					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~
					cl2=0;
					sl2=0;
					pl2=1.0;
					lop1=0;
					noofleaves2=cl2+sl2+pl2+lop1;
					//////////////////////if leavetype CL then proceed

					boolean flag1=false;
					boolean flag=false;
					//////System.out.println("EMPID. in if of PL.."+emp);
					//~~~~~~~~~~~~~~~~~~~~~~~~~V.IMP~~~~~~~getting total leaves and balance leaves from leaveopen.........
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
					//////System.out.println("TOTAL......"+totalleaves+".....PLOPEN......from leaveopen.............."+PLOPEN);
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Code ends here(total leaves and balance leaves from leaveopen)
					//--------------gettting balance cl if emp not there
				log.debug("PrivilegeLeaveDao::Employee Id is "+emp+"CL Authenticated On the Date is"+dt+"Total Leaves Is "+totalleaves+"CLBAL From Leaveopen is "+PLOPEN);


					ttpl= PLOPEN;

					bpl= ttpl-pl2;
					//--------------------------

					//if empid find ...............
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

					if(flag) ///////////////////////////if emp is there..........///////////////////////////////////// if.... flag is true .. 
					{


						st=con.createStatement(rs.TYPE_SCROLL_SENSITIVE,rs.CONCUR_UPDATABLE);
						rs=st.executeQuery("select empid,remainingleaves,grandleaves,lop1,totalcl,totalsl,totalpl,totalleaves,bcl,bsl from leaveapplications where empid='"+emp123+"'");
						rs.afterLast();
						while(rs.previous())//last record
						{
							remainingleaves1=rs.getDouble("remainingleaves");
							grandleaves1=rs.getDouble("grandleaves");
							lop3=rs.getDouble("lop1");
							cl1=rs.getDouble("totalcl");
							sl1=rs.getDouble("totalsl");
							pl1=rs.getDouble("totalpl");
							totalleaves=rs.getDouble("totalleaves");
							tcl=rs.getDouble("bcl");
							tsl=rs.getDouble("bsl");


							flag1=true;

							break;

						}

						if(flag1==true)/////////////////////for getting last record of employeeeeeeeeee
						{
							cl2=cl2;
							sl2=sl2;
							pl2=pl2;
							lop1=lop3;
							totalpl=pl1+pl2; //old PL add to new PL
							grandleaves=grandleaves1+noofleaves2;// adding noof leaves to grand leaves
							remainingleaves=remainingleaves1-noofleaves2; //deduct noofleaves from remaining leaves
							lop1=lop3;          

							//---------------------------------------------------------------------------------------------------------------------gettting balance PL

							ttpl=PLOPEN;


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

					//~~~~~~~~~~~to get CLBAL, SLBAL if sl r pl equals to 0(zero)
					PreparedStatement prleave=con.prepareStatement("select CLBAL,SLBAL from leaveopen where empid=?");
					prleave.setString(1,emp);
					ResultSet cco=prleave.executeQuery();
					boolean  cco1=false;
					double clbalfromlopen=0.0;
					double slbalfromlopen=0.0;
					while(cco.next())
					{
						clbalfromlopen=cco.getDouble(1);
						slbalfromlopen=cco.getDouble(2);
					}

					pr=con.prepareStatement("insert into leaveapplications(name,empid,fromdate,cl,sl,pl,lop,totalleaves,noofleaves,remainingleaves,lop1,totalcl,totalsl,totalpl,grandleaves,leavetype,todate,bpl,bcl,bsl)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

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
					pr.setDouble(13,sl1);
					pr.setDouble(14,totalpl);
					pr.setDouble(15,grandleaves);
					pr.setString(16,leavetype);
					pr.setString(17,dt);
					pr.setDouble(18,bpl);
					if(tcl==0||tsl==0)
					{
						tsl=slbalfromlopen;

						tcl=clbalfromlopen;
					}
					pr.setDouble(19,tcl);
					pr.setDouble(20,tsl);
					pr.executeUpdate();   

					PreparedStatement prdecre2=con.prepareStatement("update leaveopen set PLBAL=(PLBAL-1) where empid='"+emp+"'");
					prdecre2.executeUpdate();


				}//for~~~~~~~~FOR LOOP OF PL~~~~~FOR LOOP~~~~~~PL~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
			}//if PL~~~~~~~~~~~~~~~~~~~~~~
			//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

			//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

		}//try
		catch(Exception ex)
		{
			log.error(util_stacktrace.sendingErrorAsString(ex));
		}
		finally {
			try
			{
				//////System.out.println("PrivilegeLeaveDao::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("PrivilegeLeaveDao::ConnectionPool--After Close--->>>>Test");
			} catch (SQLException e)
			{
				log.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
	}///////function
	//				return p;

}