package com.svs.erp.Leaveauthe.DAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Calendar;



import org.apache.log4j.Logger;

import com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;

public class HalfLOPLeaveAuthentication {
	Connection con=null;
	static Logger log = Logger.getLogger(HalfLOPLeaveAdjustmentDaoImpl.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	//DBConnection cc=new DBConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();
	
	HalfLOPLeaveAuthenticationDao halfLOPLeaveAuthenticationDao=new HalfLOPLeaveAuthenticationDao();
	
	PreparedStatement ps=null;
	PreparedStatement ps1=null;
	PreparedStatement ps2=null;
	PreparedStatement ps3=null;
	PreparedStatement ps4=null;
	PreparedStatement pr=null;
	PreparedStatement p1=null;
	Statement st,st1,st2;
	ResultSet rs=null;
	ResultSet rs1=null;
	ResultSet rs2=null;
	ResultSet rs3=null;
	String authentication=null;
	String s1="";
	// for leaveapplications..........
	double CLBAL=0;
	double SLBAL=0;
	double PLBAL=0;
	double CLOPEN=0;
	double SLOPEN=0;
	double PLOPEN=0;
	double totalleaves=0;
	int i;
	double noofleaves=0;
	double noofleaves1=0;
	double noofleaves2=0;
	double extraleaves=0;
	double remainingleaves1=0;
	//boolean flag=false;
	double remainingleaves=0;
	double cl1=0;
	double cl2=0;
	double sl1=0;
	double sl2=0;
	double pl1=0;
	double pl2=0;
	double remainingleaves2=0;
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
	//~~~~~~~~~~~~~~~~~~~~~~~
	String abtothrs="00:00:00";

	public HalfLOPLeaveAuthentication()
	{
		try
		{
			//////System.out.println("HalfLOPLeaveAuthentication::ConnectionPool----->>>>Before Open --->>>>Test");

			con=connectionUtils.getDBConnection();
			//////System.out.println("HalfLOPLeaveAuthentication::ConnectionPool----->>>>After Open --->>>>Test");

		}catch(Exception ex)
		{
			log.error(util_stacktrace.sendingErrorAsString(ex));
		}
	}

	public String LopSubmit(String empid,String empname,String designation,String company,String leavetype,String date1,String date2,String sess) throws  IOException,Exception,SQLException
	{
		////////System.out.println("in DAO1 HALF....Leave......"+leavetype+"..........Session......."+sess);
		try
		{ 

			/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// calculating date difffffffffffffff
			Calendar cal1 = Calendar.getInstance();
			Calendar cal2 = Calendar.getInstance();
			//////////////String splitting for first date
			String array[]=date1.split("-");
			String val1=array[0].trim();	
			int val11=Integer.parseInt(val1);	
			////////System.out.println(val11);
			String val2=array[1].trim();
			int val12=Integer.parseInt(val2);	
			////////System.out.println(val12);
			String val3=array[2].trim();
			int val13=Integer.parseInt(val3);	
			////////System.out.println("END OF FIRST DATE"+val13);

			//////////////String splitting for last date
			String arr[]=date2.split("-");
			String val4=arr[0].trim();	
			int val14=Integer.parseInt(val4);
			////////System.out.println(val14);	
			String val5=arr[1].trim();
			int val15=Integer.parseInt(val5);	
			////////System.out.println(val15);
			String val6=arr[2].trim();
			int val16=Integer.parseInt(val6);	
			////////System.out.println("END OF LAST DATE"+val16);

			cal1.set(val11, val12, val13);

			cal2.set(val14, val15, val16);

			long milis1 = cal1.getTimeInMillis();
			long milis2 = cal2.getTimeInMillis();
			long diff = milis2 - milis1;
			long diffDays = diff / (24 * 60 * 60 * 1000);
			////////System.out.println("date diff is"+diffDays);
			int  findiff=(int)diffDays+1;
			////////System.out.println("date diff is"+findiff);
			/*for(int i=0;i<findiff;i++)
			{
				String dt = date1;  // Start date specify here
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				Calendar c = Calendar.getInstance();
				c.setTime(sdf.parse(dt));
				c.add(Calendar.DATE, i);  // number of days to add
				dt = sdf.format(c.getTime());*/
			//////System.out.println("HalfLOPLeaveAuthentication::----------->>>Test");

			s1=halfLOPLeaveAuthenticationDao.HalfLopSubmit(empid, empname, designation, company, leavetype, date1, date2, sess);
			
			//////System.out.println("HalfLOPLeaveAuthentication::----------->>>Test"+s1);
			String s2=leavetype+" Authentication Successfully From "+date1+" to "+date2;
			//////System.out.println("HalfLOPLeaveAuthentication::----------->>>Test"+s1+"~~~~~TO~~~~~"+s2);
			
			if(leavetype.equals("1/2LOP") && s2.equals(s1))
				//////System.out.println("HalfLOPLeaveAuthentication::----------->>>Test2");
								{
					for(int i=0;i<findiff;i++)
				{
				String dt = date1;  // Start date specify here
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
					Calendar c = Calendar.getInstance();
					c.setTime(sdf.parse(dt));
					c.add(Calendar.DATE, i);  // number of days to add
					dt = sdf.format(c.getTime());
				//	//////System.out.println("Authenticated on the date is......LOP....LEAVE AUTHE.........."+dt);

					//~~~~~~~~~~~~~~
								cl2=0.0;
								sl2=0.0;
								pl2=0.0;
								lop1=0.5;
								String emp123=null;
								noofleaves2=cl2+sl2+pl2;
								name=empname;
								////////System.out.println("no of leaves.....of LOP.............."+noofleaves2);
							//////////////////////if leavetype CL then proceed
								            
							boolean flag1=false;

							boolean flag=false;
					////////System.out.println("EMPID. in if of LOP.."+empid);
						//~~~~~~~~~~~~~~~~~~~~~~~~~V.IMP~~~~~~~~~~~~~~~~~~~~~~~~~~~getting total leaves and balance leaves from leaveopen.........
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
					PreparedStatement  plo1=con.prepareStatement("select TOTAL,CLOPEN,SLOPEN,PLOPEN from leaveopen where empid=?");
					plo1.setString(1,empid);
					ResultSet rlo1=plo1.executeQuery();
					while(rlo1.next())
					{
					totalleaves=rlo1.getDouble(1);
					CLOPEN=rlo1.getDouble(2);
					SLOPEN=rlo1.getDouble(3);
					PLOPEN=rlo1.getDouble(4);
					}
					//////System.out.println("HalfLOPLeaveAuthentication::TOTAL......"+totalleaves+".....1/2LOP......from leaveopen.......***.......");
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Code ends here(total leaves and balance leaves from leaveopen)

					           //st1=con.createStatement();
				               //rs1=st1.executeQuery("select empid,remainingleaves,grandleaves from leaveapplications where empid='"+emp+"'");//if empid find 
							 p1=con.prepareStatement("select  remainingleaves,grandleaves from leaveapplications where empid=?");
							p1.setString(1,empid);
							rs1=p1.executeQuery();
							while(rs1.next())
				             {
							 
									emp123=empid;
								
						    grandleaves2=Double.parseDouble(rs1.getString("grandleaves"));
						  
			     		  			if(empid.equals(emp123))
									{
									flag=true;
								
									}//flag   for if empid finds
							}	    
			              
						 if(flag) ///////////////////////////if emp is there..........///////////////////////////////////// if.... flag is true .. 
						 {
					      
												  
						   st=con.createStatement(rs.TYPE_SCROLL_SENSITIVE,rs.CONCUR_UPDATABLE);
				           rs=st.executeQuery("select empid,remainingleaves,grandleaves,totalcl,totalsl,totalpl,totalleaves,lop1,bcl,bsl,bpl from leaveapplications where empid='"+emp123+"'");
			        	   rs.afterLast();
						   while(rs.previous())//last record
						  {
				                remainingleaves1=rs.getDouble("remainingleaves");
				                grandleaves1=rs.getDouble("grandleaves");
				                cl1=rs.getDouble("totalcl");
				                sl1=rs.getDouble("totalsl");
				                pl1=rs.getDouble("totalpl");
								lop3=rs.getDouble("lop1");//*******************
								bcl=rs.getDouble("bcl");
								bsl=rs.getDouble("bsl");
								bpl=rs.getDouble("bpl");
								totalleaves=rs.getDouble("totalleaves");
												//////System.out.println("HalfLOPLeaveAuthentication::TOTAL LEAVES IF EMP FINDS.........1/2 LOP......"+totalleaves);

				              flag1=true;
								
						  break;
						  			  
						  }
						 
								if(flag1==true)/////////////////////for getting last record of employeeeeeeeeee
				                  {
								  cl2=cl2;
								  sl2=sl2;
								  pl2=pl2;
								  lop1=lop1;
								 
								  totallop=lop3+lop1;// adding old LOP to new LOP
								  
								  grandleaves=grandleaves1+noofleaves2;// adding noof leaves to grand leaves
								 
						          remainingleaves=remainingleaves1; //deduct noofleaves from remaining leaves
								  bcl=bcl;
								  bsl=bsl;
								  bpl=bpl;
								  totalcl=cl1;
								  totalsl=sl1;
								  totalpl=pl1;
								  //lop1=lop1;          
								
						       if(grandleaves> totalleaves)
				                  {
				                    extraleaves=grandleaves-totalleaves;// lop
									totallop=extraleaves;
				                           
			         	          }
						       else
						          {
						            //extraleaves=0;
									totallop=totallop;
							
						          }
								}//if flag1
						/*	else
								
								{
								 //remainingleaves=remainingleaves2-noofleaves2;
						        // grandleaves=noofleaves2;
								  cl2=cl2;
								  sl2=sl2;
								  pl2=pl2;
								 totalcl=cl2;
								 totalsl=sl2;
								 totalpl=pl2;
								 lop1=lop1;
			  			                      //////System.out.println("IF NoT There........... lop1....LOP "+lop1);
								}//else of flag1
						 		                     			   */
					
							}//flag		
							else
							{
								 remainingleaves=totalleaves;//////////////////if new emp deduct from totalleaves
						         grandleaves=noofleaves2;
								  cl2=cl2;
								  sl2=sl2;
								  pl2=pl2;
								 totalcl=cl2;
								 totalsl=sl2;
								 totalpl=pl2;
								 lop1=lop1;
									totallop=lop1;		
									        //////System.out.println("IF EMP ID NoT There............if new emp.....1/2LOP "+totalleaves);
																 // //////System.out.println("lekununte LOP............if new emp.....LOP "+lop1);
							
							}//else of flag	 
							 pr=con.prepareStatement("insert into leaveapplications(name,empid,fromdate,cl,sl,pl,lop,totalleaves,noofleaves,remainingleaves,lop1,totalcl,totalsl,totalpl,grandleaves,leavetype,todate,bcl,bsl,bpl)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
										 
							  pr.setString(1,name);
							 pr.setString(2,empid);
							 pr.setString(3,dt);
							 pr.setDouble(4,cl2);
							 pr.setDouble(5,sl2);
							 pr.setDouble(6,pl2);

							 pr.setDouble(7,lop1);
			  				 pr.setDouble(8,totalleaves);
			  				 pr.setDouble(9,noofleaves2);
			 				 pr.setDouble(10,remainingleaves);
						//////System.out.println(" LOP....."+totallop);
			 				 pr.setDouble(11,totallop);
							 pr.setDouble(12,totalcl);
			 				 pr.setDouble(13,totalsl);
			  				 pr.setDouble(14,totalpl);
							 pr.setDouble(15,grandleaves);
							 pr.setString(16,leavetype);
							 pr.setString(17,dt);
							 if(bcl==0||bsl==0||bpl==0)
							 {
							 bcl=CLOPEN;
							 bsl=SLOPEN;
							 bpl=PLOPEN;
							 }
							 pr.setDouble(18,bcl);
							 pr.setDouble(19,bsl);
							 pr.setDouble(20,bpl);
							 //pr.setDouble(14,totalpl);
							 pr.executeUpdate();   
						

				
					/////////////////////////////////////////////////////////////////////////////////finding PH and Second Saturdays
					////////////////////////////////delete from leaveapplicatioons where data on PAID HOLIDAYS~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
				   boolean flagph=false;
				   String ddd=null;
				   String event=null;
				   PreparedStatement p111=null;
				   p111=con.prepareStatement("select date,event from ph where date='"+dt+"'");
				   ResultSet r111=p111.executeQuery();
				   ////////System.out.println("*************test123............");
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
				   p2=con.prepareStatement("delete from leaveapplications where fromdate=?"); /////////////////////////////~~~~~~~~if record found on PH
				   //p2.setString(1,event);
				   p2.setString(1,ddd);
				   p2.executeUpdate();
				    ////////System.out.println("data deleted... on ......."+ddd+".....with event...."+event);
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
					PreparedStatement  p444=con.prepareStatement("delete from leaveapplications where fromdate='"+dt11+"'");/////~~~~~~~del on second SAT
					p444.executeUpdate();
					////////System.out.println("data deleted from empabsent on ss............"+dt11);
					////////System.out.println("deleted from leaveapplications on ......."+dt11+".....when SecondSaturday....");
					}//if
					
				}//for loop to find saturday


			/////////////////////////////////////////////////////////////////////////////////////////

					///////////////////////~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
					PreparedStatement p11=null;
					
					p11=con.prepareStatement("delete from leaveapplications where dayname(fromdate)='Sunday'"); ////////////deleted on sunday
					ResultSet r1=null;
				p11.executeUpdate();
				////////System.out.println("deleted from leaveapplications  on ......Sunday.");
					}//for~~~~~~~~FOR LOOP OF LOP~~~~~FOR LOOP~~~~~~LOP~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
					
					//////System.out.println("HalfLOPLeaveAuthentication::~~~~~~~~END~~~~~~~~~~~");
							}//if LOP~~~~~~~~~~~~~IF LOP
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

				
			  }//try
				 catch(SQLException e)
				 {
				 			
					 log.error(util_stacktrace.sendingErrorAsString(e));
				}
				 	finally {
								try
			       				 {
									
									if (con != null) connectionUtils.setDBClose();
									
			        				} catch (SQLException e)
			        				{
			            			//logger.error("The statement cannot be closed.", e);
			        					log.error(util_stacktrace.sendingErrorAsString(e));
			        				}
								}
			//if(ins==1)
			//{
			//s1="<h4>Successfully Inserted </h4>";
			//}
			return s1;
				}
			}

