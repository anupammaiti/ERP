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

public class CasualLeaveDao {

	static Logger log = Logger.getLogger(CasualLeaveDao.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	Connection con;
	ConnectionUtils connectionUtils=new ConnectionUtils();
	//DBConnection cc=new DBConnection();
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

	public CasualLeaveDao()
	{
		try
		{
			//////System.out.println("CasualLeaveDao::ConnectionPool----->>>>Before Open");

			con=connectionUtils.getDBConnection();
			//////System.out.println("CasualLeaveDao::ConnectionPool----->>>>After Open");

		}catch(Exception ex)
		{
			                     log.error(util_stacktrace.sendingErrorAsString(ex));
		}
	}
	
	

	public void approvecl(String employeecode,String empname,String leavetype,String fromdate,String todate,double cll,double sll,double pll,double lop)throws SQLException,IOException
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
			if(leavetype.equals("CL"))
			{
				for(int i=0;i<findiff;i++)
				{
					String dt = fromdate;  // Start date specify here
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
					Calendar c = Calendar.getInstance();
					c.setTime(sdf.parse(dt));
					c.add(Calendar.DATE, i);  // number of days to add
					dt = sdf.format(c.getTime());
					//////System.out.println("CasualLeaveDao::Authenticated on the date is.....DAO3.....CL.........."+dt);

					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

					cl2=1.0;
					sl2=0;
					pl2=0;
					lop1=0;
					lop3=0;
					noofleaves2=cl2+sl2+pl2+lop1;
					//////////////////////if leavetype CL then proceed

					boolean flag1=false;
					boolean flag=false;
					//////System.out.println("CasualLeaveDao::EMPID. in if of CL.."+emp);
					
					
					//~~~~~~~~~~~~~~~~~~~~~~~~~V.IMP~~~~~~~~~getting total leaves and balance leaves from leaveopen.........
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
					//////System.out.println("CasualLeaveDao::Test *****************111111111111");
					PreparedStatement  plo1=con.prepareStatement("select TOTAL,CLBAL,CLOPEN,SLOPEN,PLOPEN from leaveopen where empid=?");
					
					plo1.setString(1,emp);
					//////System.out.println("CasualLeaveDao::Test *****************"+emp);
					ResultSet rlo1=plo1.executeQuery();
					//////System.out.println("CasualLeaveDao::Test *****************222222222222"+emp);
					while(rlo1.next())
					{
						totalleaves=rlo1.getDouble(1);
						CLBAL=rlo1.getDouble(2);
						CLOPEN=rlo1.getDouble(3);
						SLOPEN=rlo1.getDouble(4);
						PLOPEN=rlo1.getDouble(5);
					}
					//////System.out.println("CasualLeaveDao::TOTAL......"+totalleaves+".....CLBAL......from leaveopen.............."+CLBAL);
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Code ends here(total leaves and balance leaves from leaveopen)
					log.debug("CasualLeaveDao::Employee Id is "+emp+"CL Authenticated On the Date is"+dt+"Total Leaves Is "+totalleaves+"CLBAL From Leaveopen is "+CLBAL);

					ttcl=CLOPEN;

					bcl=ttcl-cl2; //first time CLOPEN value getting from leaveopen and deduct 1 from them
					//--------------------------
					//if emp find in leaveapplications
					p1=con.prepareStatement("select  remainingleaves,grandleaves,totalsl,totalpl from leaveapplications where empid=?");
					p1.setString(1,emp);
					rs1=p1.executeQuery();
					while(rs1.next())
					{

						emp123=emp;
						remainingleaves2=Double.parseDouble(rs1.getString("remainingleaves"));
						grandleaves2=Double.parseDouble(rs1.getString("grandleaves"));

						sl1=rs1.getDouble("totalsl");
						pl1=rs1.getDouble("totalpl");

						if(emp.equals(emp123))
						{
							flag=true;

						}//flag   for if empid finds
					}	    

					if(flag) ///////////////////////////if emp is there..........///////////////////////////////////// if.... flag is true .. 
					{
						st=con.createStatement(rs.TYPE_SCROLL_SENSITIVE,rs.CONCUR_UPDATABLE);
						rs=st.executeQuery("select empid,remainingleaves,grandleaves,lop1,totalcl,totalsl,totalpl,totalleaves,totalcl as tcl,bsl,bpl from leaveapplications where empid='"+emp123+"'");
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
							tcl=rs.getDouble("tcl"); //////////////////for getting balance leaves
							tsl=rs.getDouble("bsl");
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
							totalcl=cl1+cl2;///////////////adding old CL to new CL
							//-----------------------------------------------------------------gettting balance cl
							ttcl=CLOPEN;// for getting balance leaves

							bcl=ttcl-totalcl;

							//--------------------------
							grandleaves=grandleaves1+noofleaves2;// adding noof leaves to grand leaves
							remainingleaves=remainingleaves1-noofleaves2; //deduct noofleaves from remaining leaves
							lop1=lop3;     

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
							////////System.out.println("lekununte remaining....CL lop1"+lop1);
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
						////////System.out.println("lekununte remaining............if new emp.....CL "+lop1);

					}//else of flag	 

					//~~~~~~~~~~~to get SLBAL, PLBAL if sl r pl equals to 0(zero)
					PreparedStatement prleave=con.prepareStatement("select SLBAL,PLBAL from leaveopen where empid=?");
					prleave.setString(1,emp);
					ResultSet cco=prleave.executeQuery();
					boolean  cco1=false;
					double slbalfromlopen=0.0;
					double plbalfromlopen=0.0;
					while(cco.next())
					{
						slbalfromlopen=cco.getDouble(1);
						plbalfromlopen=cco.getDouble(2);
					}

					pr=con.prepareStatement("insert into leaveapplications(name,empid,fromdate,cl,sl,pl,lop,totalleaves,noofleaves,remainingleaves,lop1,totalcl,totalsl,totalpl,grandleaves,leavetype,todate,bcl,bsl,bpl)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

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
					pr.setDouble(12,totalcl);
					pr.setDouble(13,sl1);
					pr.setDouble(14,pl1);
					pr.setDouble(15,grandleaves);
					pr.setString(16,leavetype);
					pr.setString(17,dt);
					pr.setDouble(18,bcl);
					if(tsl==0||tpl==0)
					{
						tsl= slbalfromlopen;
						tpl= plbalfromlopen;
					}
					pr.setDouble(19,tsl);
					pr.setDouble(20,tpl);
					pr.executeUpdate();   

					PreparedStatement prdecre=con.prepareStatement("update leaveopen set CLBAL=(CLBAL-1) where empid='"+emp+"'");
					prdecre.executeUpdate();
					/////////////////////////////////////////////////////////////////////////////////finding PH and Second Saturdays
					////////////////////////////////delete from leaveapplicatioons where data on PAID HOLIDAYS~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
					boolean flagph=false;
					String ddd=null;
					String event=null;
					PreparedStatement p111=null;
					p111=con.prepareStatement("select date,event from ph where date='"+dt+"'");
					ResultSet r111=p111.executeQuery();
					////////System.out.println("*************test123............");
					int rres=0;
					while(r111.next())
					{
						ddd=r111.getString(1);
						event=r111.getString(2);
						////////System.out.println("*************test123................................"+ddd);
						if(dt.equals(ddd))
						{
							flagph=true;
							////////System.out.println("PH date and load date are same");
						}//if
						if(flagph)
						{
							PreparedStatement p2=null;
							p2=con.prepareStatement("delete from leaveapplications where fromdate=?"); ////////~~~~~~~if record found on PH
							//p2.setString(1,event);

							p2.setString(1,ddd);
							rres=p2.executeUpdate();
							//////System.out.println("data deleted... on ......."+ddd+".....with event...."+event);
							//////System.out.println("data deleted... rres......"+rres);
							log.debug("CasualLeaveDao:: Data Deleted On "+ddd+ "With Event Is"+event+ "Data Deleted From RRES"+rres );
							if(rres!=0)
							{
								//////System.out.println("IF RRES......");
								PreparedStatement praddph=con.prepareStatement("update leaveopen set CLBAL=(CLBAL+1) where empid='"+emp+"'");
								praddph.executeUpdate();
							}

						}//flag true
					}//while
					/////////////////////////////////////////////////////////////////////////////////////////////////////delete data from leaveapplications where day is second saturday/////////////////////////
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
						PreparedStatement p333=con.prepareStatement("select dayname('"+dt11+"') from dual");
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
							int rres1=0;
							PreparedStatement  p444=con.prepareStatement("delete from leaveapplications where fromdate='"+dt11+"'");/////~~~del on second SAT
							rres1=p444.executeUpdate();
							//////System.out.println("CasualLeaveDao::data deleted... on ssat.........rres."+rres+".........rres1......"+rres1);
							if(rres1!=0&&rres==0)
							{
								//////System.out.println("IF RRES1......");
								PreparedStatement prssat=con.prepareStatement("update leaveopen set CLBAL=(CLBAL+1)  where empid='"+emp+"'");
								prssat.executeUpdate();
							}
							////////System.out.println("data deleted from empabsent on ss............"+dt11);
							//////System.out.println("CasualLeaveDao::deleted from leaveapplications on ......."+dt11+".....when SecondSaturday....");
						}//if

					}//for loop to find saturday


					///////////////////////~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
					PreparedStatement p11=null;
					int sun=0;
					p11=con.prepareStatement("delete from leaveapplications where dayname(fromdate)='Sunday' and empid='"+emp+"'"); ////////////deleted on sunday
					ResultSet r1=null;
					sun=p11.executeUpdate();
					if(sun!=0&&rres==0)
					{
						//////System.out.println("IF SUN......");
						PreparedStatement prssun=con.prepareStatement("update leaveopen set CLBAL=(CLBAL+1)  where empid='"+emp+"'");
						prssun.executeUpdate();

					}

					//////System.out.println("CasualLeaveDao::deleted from leaveapplications  on ......Sunday.");
				}//for~~~~~~~~FOR LOOP CL~~~~~~CL FOR LOOP END~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
			}//if CL
		}//try close
		catch(Exception ex)
		{
			 log.error(util_stacktrace.sendingErrorAsString(ex));
		}
		finally {
					try
       				 {
						//////System.out.println("CasualLeaveDao::ConnectionPool--Before Close --->>>>Test");
						if (con != null) connectionUtils.setDBClose();
						//////System.out.println("CasualLeaveDao::ConnectionPool--After Close--->>>>Test");
        				} catch (SQLException e)
        				{
        					 log.error(util_stacktrace.sendingErrorAsString(e));
        				}
					}
		}///////function
		
			 
	}
