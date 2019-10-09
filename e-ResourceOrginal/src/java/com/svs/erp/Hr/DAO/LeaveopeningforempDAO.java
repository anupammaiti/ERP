package com.svs.erp.Hr.DAO;

import java.io.*;
import java.sql.*;
import java.util.*;

import org.apache.log4j.Logger;
import org.jfree.util.Log;

import  com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;


public class LeaveopeningforempDAO
{
	Connection con;
	ConnectionUtils connectionUtils=new ConnectionUtils();
	static Logger log = Logger.getLogger(LeaveopeningforempDAO.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();	
	Statement st,st1;
	ResultSet rs,rs1,rs2,rs5,rs6,rs7;
	PreparedStatement pr,pr1,pr2,pr5,pr6,pr7;
	//DBConnection cc=new DBConnection();

	Iterator iter;
	String a[]=new String[1000];
	String s1,s2;
	int i;

	int empno=0;
	int empnoooo=0;
	int empnooo=0;
	Double cl=0.0;
	Double sl=0.0;
	Double pl=0.0;
	Double tot=0.0;
	String empid=null;
	String msg="No Data Found";

	String name=null;


	boolean flag;
	boolean flag1;
	boolean flag2;




	public LeaveopeningforempDAO ()
	{
		flag=false;
		flag1=false;
		flag2=false;

		try
		{
			//////System.out.println("LeaveopeningforempDAO::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("LeaveopeningforempDAO::ConnectionPool----->>>>After Open --->>>>Test");

		}
		catch (Exception e)
		{
			Log.error(util_stacktrace.sendingErrorAsString(e));
		}

	}
	public String insert(Collection employee_coll)throws Exception
	{
		try
		{
			for(iter=employee_coll.iterator();iter.hasNext();)
			{
				for( i=0;i<employee_coll.size();i++)
				{
					a[i]=(String)(iter.next());
					//////System.out.println("Collection="+a[i]);
				}
			}
			employee_coll.clear();
			/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			pr5=con.prepareStatement("select  name from employee where empno=?");
			pr5.setString(1,a[0]);
			rs5=pr5.executeQuery();
			while(rs5.next())
			{
				name=rs5.getString(1);
			}
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

			///////////////////////searching empno is there are not/////////////////////////////////
			boolean flag=false;
			pr1=con.prepareStatement("select empid,name from leaveopen where empid=?");
			pr1.setString(1,a[0]);
			rs1=pr1.executeQuery();
			while(rs1.next())
			{
				String emp=rs1.getString(1);

				if(emp.equals(a[0]))
					flag=true;

			}
			if(flag==false)
			{
				pr=con.prepareStatement("insert into leaveopen(empid,name,CLOPEN,SLOPEN,PLOPEN,TOTAL) values(?,?,?,?,?,?)");
				//pr=con.prepareStatement("insert into employee(name,nameinhris,fathername,dob,sex,joiningdate,designation,department,reportingto,joblevel,location,entrymanner,nomination,birthpalce,maritalstatus,marriagedate,religion,pannumber,passportnumber,issuedateandplace,validity,companyname,qualification,presentsalary,expectedsalary,salaryoffered,BankACNO,PFACNo,joiningtime) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");



				pr.setString(1,a[0]);
				empid=a[0];
				////////System.out.println("EMP ID........."+empid);
				pr.setString(2,name);
				////////System.out.println("NAME........."+name);


				cl=Double.parseDouble(a[1]);

				sl=Double.parseDouble(a[2]);

				pl=Double.parseDouble(a[3]);
				pr.setDouble(3,cl);
				pr.setDouble(4,sl);
				pr.setDouble(5,pl);

				tot=cl+sl+pl;
				//////System.out.println("Total Leaves....inserted...."+tot);
				pr.setDouble(6,tot);
				////////System.out.println("updatedao"+employee_coll);



				//String emp=s2+"-"+s1+"-"+empno;
				pr.executeUpdate();
				msg="Leave Opening Values Inserted Successfully for ...."+empid;
			}
			else
			{
				//////System.out.println("Already there, Iam going to update");
				pr2=con.prepareStatement("Update leaveopen set CLOPEN=?,SLOPEN=?,PLOPEN=?,TOTAL=? where empid=?");

				empid=a[0];
				////////System.out.println("Emp ID..update.."+empid);
				//pr2.setString(2,name);
				////////System.out.println("NAME.....update...."+name);

				cl=Double.parseDouble(a[1]);

				sl=Double.parseDouble(a[2]);

				pl=Double.parseDouble(a[3]);
				pr2.setDouble(1,cl);
				pr2.setDouble(2,sl);
				pr2.setDouble(3,pl);

				tot=cl+sl+pl;
				pr2.setDouble(4,tot);
				pr2.setString(5,a[0]);
				//////System.out.println("Total Leaves....Updated...."+tot);
				////////System.out.println("daoempid2"+empid1);
				////////System.out.println("updatedao"+employee_coll);



				//String emp=s2+"-"+s1+"-"+empno;
				pr2.executeUpdate();
				msg="Leave Opening Values Updated Successfully for ...."+empid;
			}//else
			//////System.out.println("returned"+msg);
		}
		catch(Exception e)
		{
			Log.error(util_stacktrace.sendingErrorAsString(e));
		}
		finally {
			try
			{
				//////System.out.println("LeaveopeningforempDAO::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("LeaveopeningforempDAO::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				Log.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
		return msg;

	}
}