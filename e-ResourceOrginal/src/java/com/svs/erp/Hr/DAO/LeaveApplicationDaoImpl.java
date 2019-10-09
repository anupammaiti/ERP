package com.svs.erp.Hr.DAO;

import java.io.*;
import java.sql.*;
import java.util.*;

import  com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;

import org.apache.log4j.Logger;


public class LeaveApplicationDaoImpl
{
	static Logger log = Logger.getLogger(LeaveApplicationDaoImpl.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();	
	Connection con;
	Statement st;
	ResultSet rs;
	PreparedStatement pr;
	//DBConnection cc=new DBConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();

	Iterator iter;
	String a[]=new String[1000];
	int totalleaves=25;
	int i;
	int noofleaves=0;
	int noofleaves1=0;
    int extraleaves=0;
    int extraleaves1=0;
	String empid=null;
	int remainingleaves1=0;

	int remainingleaves=0;
	int cl=0;
	int sl=0;
	int el=0;
		int tcl=0;
	int tsl=0;
	int tel=0;

	int grandleaves=0;
	int grandleaves1=0;
	int casualleaves1=0;
	int sickleaves1=0;
	int earningleaves1=0;
	int co=0;
int rr=0;
	int countrow=1;
	
	public LeaveApplicationDaoImpl ()
	{
		try
		{
			//////System.out.println("LeaveApplicationDaoImpl::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("LeaveApplicationDaoImpl::ConnectionPool----->>>>After Open --->>>>Test");
		}
		catch (Exception e)
		{
			log.error(util_stacktrace.sendingErrorAsString(e));
		}
		
	}
	public int insert(String name,String company,String empid,String designation,String date1,String date2,String open,String ref,String reporting,String leavetype,String sess,String odhours,String purposeofleave,String rmname,String comp)throws Exception
	{
			/*try
	{
		for(iter=leave_coll.iterator();iter.hasNext();)
		{
			for( i=0;i<leave_coll.size();i++)
			{
			         a[i]=(String)(iter.next());
			}
		}
    leave_coll.clear();
	}
	catch(Exception e)
	{
		//////System.out.println(e);
	}*/
		try
		{
	String empno=null;
	String fdate=null;
	//empno=a[2];
	empno=empid;
	//////System.out.println("LeaveApplicationDaoImpl::--->>fromdate............"+date1);

	st=con.createStatement();
	rs=st.executeQuery("select employeecode,fromdate from leavestatus where employeecode='"+empno+"' and fromdate='"+date1+"'");
		int count=0;
	while(rs.next())
	{
	fdate=rs.getString(2);
	if(fdate.equals(date1))
	{
	count++;
	//////System.out.println("LeaveApplicationDaoImpl::If record already exists--->>>"+rs.getString(1)+"......."+fdate+"......"+count+"....."+date1);
	}
	}
	/*{
	remainingleaves1=Integer.parseInt(rs.getString(3));
	noofleaves1=Integer.parseInt(rs.getString(2));
	grandleaves1=Integer.parseInt(rs.getString(4));
	extraleaves1=Integer.parseInt(rs.getString(5));
	casualleaves1=Integer.parseInt(rs.getString(6));
	sickleaves1=Integer.parseInt(rs.getString(7));
	earningleaves1=Integer.parseInt(rs.getString(8));

	flag=1;
	}
	}*/
	//////System.out.println("LeaveApplicationDaoImpl::Count value is........."+count);
		if(count==0)
	   {
		pr=con.prepareStatement("insert into leavestatus(name,company,employeecode,designation,fromdate,todate,status,referenceno,toempcode,leavetype,session,odtime,purposeofleave,rmname,companyname) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		pr.setString(1,name);
		pr.setString(2,company);
		pr.setString(3,empno);
		pr.setString(4,designation);
		pr.setString(5,date1);
		pr.setString(6,date2);
		pr.setString(7,open);
		pr.setString(8,ref);
		//--------------cl=Integer.parseInt(a[8]);
		//cl=cl+casualleaves1;
		pr.setString(9,reporting);
		//----------------sl=Integer.parseInt(a[9]);
		pr.setString(10,leavetype);
		//---------------el=Integer.parseInt(a[10]);
		pr.setString(11,sess);
		//pr.setString(12,a[11]);
		pr.setString(12,odhours);
		
		pr.setString(13,purposeofleave);
		
		pr.setString(14,rmname);
		pr.setString(15, comp);
		
	       
			
			//noofleaves=cl+sl+el+noofleaves1;
			//remainingleaves=totalleaves-noofleaves;
		
			/*if(noofleaves > totalleaves)
	         {
	             extraleaves=noofleaves-totalleaves;
	             //////System.out.println("extraleaves"+extraleaves);

	          }*/
			

		/*pr.setInt(13,totalleaves);
		pr.setInt(14,noofleaves);
		pr.setInt(15,remainingleaves);
		
		pr.setInt(16,extraleaves);
		pr.setString(17,a[12]);
		pr.setInt(18,grandleaves);
		pr.setString(19,a[13]);
		pr.setString(20,a[14]);
				pr.setInt(21,tcl);
		pr.setInt(22,tsl);
		pr.setInt(23,tel);
*/

		co=pr.executeUpdate();
		//////System.out.println("LeaveApplicationDaoImpl::----->>>>DAO RESULT IS..........."+co);
		log.debug("LeaveApplicationDaoImpl::insert::---FromDate"+fdate+"...Count Value..."+count+"..To Date..."+date1+"DAO RESULT IS"+co);
		if(co==1)
		{
			rr=1; 
		}
		else
		{
		rr=0;
		}
		}//flag=0
		else if(count!=0)
			{
			rr=2;
			}
		}
		catch (Exception e)
		{
			
			
			log.error(util_stacktrace.sendingErrorAsString(e));
		}finally 
		{
			try
			{
				//////System.out.println("LeaveApplicationDaoImpl::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("LeaveApplicationDaoImpl::ConnectionPool--After Close --->>>>Test");
			}  

			catch (Exception e) {
				log.error(util_stacktrace.sendingErrorAsString(e));
			}
			
		}
		return rr;
	}	
}

