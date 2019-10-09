package com.svs.helper;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.util.ConvertStackTracetoString;

/**
 * Servlet implementation class Mail2
 */
public class Mail2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HttpSession session=null;
	Connection con=null;
	  ConnectionUtils connectionUtils=new ConnectionUtils();
	  static Logger logger = Logger.getLogger(LoanAuthentication.class.getName());
		ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mail2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		// TODO Auto-generated method stub
		//////System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");
		String employeecode1="Suman,KEE00604";//request.getParameter("empid");
		String arr[]=employeecode1.split(",");
		 String employeecode=arr[0];
		 String empname=arr[1];

		String fromdate=request.getParameter("fromdate");
		String todate=request.getParameter("todate");
		//////System.out.println("From date\t"+fromdate);
		//////System.out.println("ToDate\t"+todate);
		/////////////////////////////////////////////////////////////////////////////////////////////////////getting all employee ids through session
		String empnumber=request.getParameter("empnumber");
		//////System.out.println("Session Value in Helper Class............"+empnumber);

		/////////////////////////////////////////////////////////////////////////////////////////String tokenizer to split values
				 String  empno2= empnumber.replace( '[', ',' );
				String  empno3= empno2.replace( ']', ',' );
				
				ArrayList<String> empno5 = new ArrayList<String>(); ////////////array list to add empnos
				 StringTokenizer st1 = new StringTokenizer(empno3, ",");
						while(st1.hasMoreTokens()) {
						
						 String empno4 = st1.nextToken();
										
						empno5.add(empno4); // adding empno in array list
						
					}
						try{
							 // Class.forName("com.mysql.jdbc.Driver");
					      		//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"hrerp","root","root");
					      		//////System.out.println("mail2.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
								con=connectionUtils.getDBConnection();
								//////System.out.println("mail2.jsp::ConnectionPool----->>>>After Open --->>>>Test");
						  
							  String table=null;
							  boolean flagleave=false;
								PreparedStatement ps7=con.prepareStatement("show tables");
								ResultSet rs7=ps7.executeQuery();
								while(rs7.next())
								{
								table=rs7.getString(1).trim();
								////////System.out.println(" name.........."+table);
								if(table.equals("templeave"))
							flagleave=true;
								}//while
								if(flagleave)
								{
								PreparedStatement ps8=con.prepareStatement("drop table templeave");
								ps8.executeUpdate();
								//////System.out.println("mail2.jsp:::templeave deleted...........");
								PreparedStatement ps6=con.prepareStatement("create table templeave(name varchar(60),empid varchar(15),email varchar(50),fromdate date,todate date,CL double,SL double,PL double,LOP double,TOTLEAVES double,REMAIN double,TAKENLEAVES double,AB double,TL double)");
								ps6.executeUpdate();
								//////System.out.println("mail2.jsp:::templeave Created...........");
								}//if
								else
								{
								PreparedStatement ps6=con.prepareStatement("create table templeave(name varchar(60),empid varchar(15),email varchar(50),fromdate date,todate date,CL double,SL double,PL double,LOP double,TOTLEAVES double,REMAIN double,TAKENLEAVES double,AB double,TL double)");
								ps6.executeUpdate();
								//////System.out.println("mail2.jsp:::templeave Created...........");
								}//else
								/////////////////////////////////////////FOR LOOP of String Tokenizer
							  for(int i=0; i< empno5.size(); i++){ 
								employeecode=empno5.get(i).trim();
						///////////////////////////////////////////////////////////////////////////////////////// String Tokenizer For loop
						//////System.out.println("mail2.jsp:::Employee......."+employeecode+"......leave details");
												  
					      
					      PreparedStatement pr=null;
					      ResultSet rs=null;
					      Statement st=null;
						  String emailidd=null;
						    String empname1=null;
					         st=con.createStatement();
							 rs=st.executeQuery("select empid,name from employee where empno='"+employeecode+"'");
					            
					            while(rs.next())
						             {
											emailidd=rs.getString(1);
						                	empname1=rs.getString(2);
									 }
									 
								
								double CL=0;
								double SL=0;
								double AB=0;
								double PL=0;
								double TL=0;
								
								//Class.forName("com.mysql.jdbc.Driver");
								//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"hrerp","root","root");
								////////////////////////////////////////////////////////////////////////////////
								PreparedStatement ps=con.prepareStatement("select count(authentication) from empabsent where empid=? and authentication=? and date between ? and ? group by authentication");
								ps.setString(1,employeecode);
								ps.setString(2,"CL");
								ps.setString(3,fromdate);
								ps.setString(4,todate);
								ResultSet rs0=ps.executeQuery();
								
								while(rs0.next())
								{
								CL=rs0.getDouble(1);
								}
								//////System.out.println("mail2.jsp:::CL"+CL);
								////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
								PreparedStatement ps1=con.prepareStatement("select count(authentication) from empabsent where empid=? and authentication=? and date between ? and ? group by authentication");
								ps1.setString(1,employeecode);
								ps1.setString(2,"AB");
								ps1.setString(3,fromdate);
								ps1.setString(4,todate);
								ResultSet rs1=ps1.executeQuery();
								while(rs1.next())
								{
								AB=rs1.getDouble(1);
								}
								//////System.out.println("mail2.jsp:::AB"+AB);
								////////////////////////////////////////////////////////////////////////////
								////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
								PreparedStatement ps2=con.prepareStatement("select count(authentication) from empabsent where empid=? and authentication=? and date between ? and ? group by authentication");
								ps2.setString(1,employeecode);
								ps2.setString(2,"TL");
								ps2.setString(3,fromdate);
								ps2.setString(4,todate);
								ResultSet rs2=ps2.executeQuery();
								while(rs2.next())
								{
								TL=rs2.getDouble(1);
								}
								//////System.out.println("mail2.jsp:::TL"+TL);
								////////////////////////////////////////////////////////////////////////////
								////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
								PreparedStatement ps3=con.prepareStatement("select count(authentication) from empabsent where empid=? and authentication=? and date between ? and ? group by authentication");
								ps3.setString(1,employeecode);
								ps3.setString(2,"SL");
								ps3.setString(3,fromdate);
								ps3.setString(4,todate);
								ResultSet rs3=ps3.executeQuery();
								while(rs3.next())
								{
								 SL=rs3.getDouble(1);
								}
								//////System.out.println("mail2.jsp:::SL"+SL);
								////////////////////////////////////////////////////////////////////////////
								////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
								PreparedStatement ps4=con.prepareStatement("select count(authentication) from empabsent where empid=? and authentication=? and date between ? and ? group by authentication");
								ps4.setString(1,employeecode);
								ps4.setString(2,"PL");
								ps4.setString(3,fromdate);
								ps4.setString(4,todate);
								ResultSet rs4=ps4.executeQuery();
								while(rs4.next())
								{
								PL=rs4.getDouble(1);
								}
								//////System.out.println("mail2.jsp:::PL...."+PL);
								logger.info("Employee Name\t"+empname+"\temail Id\t"+emailidd);
								out.println("<tr onMouseOver='this.className='highlight'' onMouseOut='this.className='normal'' class='tr1'><td align='right'><font color='#006600'><strong>"+employeecode+"</strong></font><font color='#000066'></td><td align='left'>&nbsp;&nbsp;&nbsp;"+empname1+"</font></td><td align='left'/>&nbsp;&nbsp;"+emailidd+"</font></td></tr>");
							   String eid=null;
							   String name1=null;
							   double cl1=0;
							   double sl1=0;
							   double pl1=0;
							   double ab1=0;
							   double lop1=0;
							   double totleaves=0;
							   double remainleaves=0;
							   double takenleaves=0;
								PreparedStatement ps5=con.prepareStatement("select empid,name,max(totalcl),max(totalsl),max(totalpl),totalleaves,max(lop1) as lop,min(remainingleaves)as remainingleaves,max(grandleaves) as grandleaves from leaveapplications where empid=? and fromdate between ? and ? group by ?");
								ps5.setString(1,employeecode);
								
								ps5.setString(2,fromdate);
								ps5.setString(3,todate);
								ps5.setString(4,employeecode);
								ResultSet rs5=ps5.executeQuery();
								while(rs5.next())
								{
								eid=rs5.getString(1);
								name1=rs5.getString(2);
								cl1=rs5.getDouble(3);
								sl1=rs5.getDouble(4);
								pl1=rs5.getDouble(5);
								lop1=rs5.getDouble(7);
								totleaves=rs5.getDouble(6);
								remainleaves=rs5.getDouble(8);
								takenleaves=rs5.getDouble(9);
								}
								//////System.out.println("eid......."+employeecode);
								//////////////////////////////////////////////////////////////////////////////
								PreparedStatement ps10=con.prepareStatement("select name from employee where empno=?");
								ps10.setString(1,employeecode);
								ResultSet rs10=ps10.executeQuery();
								String empname2=null;
								while(rs10.next())
								{
								empname2=rs10.getString(1);
								}
								//////System.out.println("Email id of Employee"+emailidd);
								////////////////////////////////////////////////////////////////////////////CODE TO INSERT  IN TO NEW TABLE(TEMPLEAVE)
								PreparedStatement ps9=con.prepareStatement("insert into templeave(name,empid,fromdate,todate,cl,sl,pl,lop,totleaves,remain,TAKENLEAVES,AB,email,TL)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
								ps9.setString(2,employeecode);
								ps9.setString(1,empname2);
								ps9.setString(3,fromdate);
								ps9.setString(4,todate);
								ps9.setDouble(5,cl1);
								ps9.setDouble(6,sl1);
								ps9.setDouble(7,pl1);
								ps9.setDouble(8,lop1);
								ps9.setDouble(9,totleaves);
								ps9.setDouble(10,remainleaves);
								ps9.setDouble(11,takenleaves);
								ps9.setDouble(12,AB);
								ps9.setString(13,emailidd);
								ps9.setDouble(14,TL);
								ps9.executeUpdate();
								//////System.out.println("mail2.jsp:::details inserted..........................");
								
							   }/////////////////////String Tokenizer for loop
							   }//try
							   catch(Exception e)
							   {
							   
							   logger.error(util_stacktrace.sendingErrorAsString(e));
							   
							   }finally {
								try
								{
									
									if (con != null) connectionUtils.setDBClose();
									

								} catch (Exception e)
								{
									logger.error(util_stacktrace.sendingErrorAsString(e));
								}
							}
						response.setContentType("text/plain");
						
	}

}
