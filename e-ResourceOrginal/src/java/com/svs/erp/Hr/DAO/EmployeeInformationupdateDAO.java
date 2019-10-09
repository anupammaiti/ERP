package com.svs.erp.Hr.DAO;

import java.io.*;
import java.sql.*;
import java.util.*;

import org.apache.log4j.Logger;

import  com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;


public class EmployeeInformationupdateDAO
{
	Connection con=null;
	ConnectionUtils connectionUtils=new ConnectionUtils();

	Statement st,st1;
	ResultSet rs,rs1,rs2,rs5,rs6,rsdel;
	PreparedStatement pr,pr1,pr2,pr3,pr6,prdel;
	//DBConnection cc=new DBConnection();
	private static Logger logger = Logger.getLogger(EmployeeInformationupdateDAO.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	Iterator iter;
	String a[]=new String[1000];
	String s1,s2;
	int i;
	String oldempno=null;
	String oldempnoo=null;
	String oldempnooo=null;

	int empno=0;
	int empnoooo=0;
	int empnooo=0;

	int oldempid=00000;
	int empide=00000;
	String empid=null;
	String empp=null;
	String emppp=null;
	String empppp=null;
	String empid1=null;
	String empid2=null;

	String companyname=null;
	String name=null;
	String designation=null;
	String designationid=null;
	String department=null;
	String departmentid=null;
	String moe=null;
	boolean flag;
	boolean flag1;
	boolean flag2;




	public EmployeeInformationupdateDAO ()
	{
		flag=false;
		flag1=false;
		flag2=false;

		try
		{
			//////System.out.println("EmployeeInformationupdateDAO::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("EmployeeInformationupdateDAO::ConnectionPool----->>>>After Open --->>>>Test");

		}
		catch (Exception e)
		{
			logger.error(util_stacktrace.sendingErrorAsString(e));
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
					//////System.out.println("---->> Collection="+a[i]);
				}
			}
			employee_coll.clear();

			///////////////////////searching empno is there are not/////////////////////////////////
			boolean flag=false;
			pr1=con.prepareStatement("select empno from employee where empno=?");
			pr1.setString(1,a[33]);
			rs1=pr1.executeQuery();
			while(rs1.next())
			{
				String emp=rs1.getString(1);
				if(emp.equals(a[33]))
					flag=true;

			}
			if(flag)
			{
				pr2=con.prepareStatement("Update employee set empno=?,name=?,lname=?,fathername=?,dob=?,sex=?,joiningdate=?,designation=?,department=?,reportingto=?,joblevel=?,location=?,entrymanner=?,nomination=?,birthpalce=?,phoneno=?,address=?,religion=?,pannumber=?,passportnumber=?,issuedateandplace=?,validity=?,companyname=?,qualification=?,presentsalary=?,expectedsalary=?,salaryoffered=?,BankACNo=?,PFACNo=?,joiningtime=?,designationid=?,empid=?,manager=?,emailid=?,modeofemployement=?,resigndate=?,status=? where empno=?");
				pr2.setString(2,a[0]);
				name=a[0];
				//////System.out.println("EmployeeInformationupdateDAO:::Name"+name);
				pr2.setString(3,a[1]);
				pr2.setString(4,a[2]);
				pr2.setString(5,a[3]);
				pr2.setString(6,a[4]);
				pr2.setString(7,a[5]);
				pr2.setString(8,a[6]);
				designation=a[6];
				pr2.setString(9,a[7]);
				department=a[7];
				pr2.setString(10,a[8]);
				pr2.setString(11,a[9]);
				pr2.setString(12,a[10]);
				pr2.setString(13,a[11]);
				pr2.setString(14,a[12]);
				pr2.setString(15,a[13]);
				pr2.setString(16,a[14]);
				pr2.setString(17,a[15]);
				pr2.setString(18,a[16]);
				pr2.setString(19,a[17]);
				pr2.setString(20,a[18]);////////////inserting PASSPORT NUMBER
				pr2.setString(21,a[19]);
				pr2.setString(22,a[20]);
				pr2.setString(23,a[21]);
				//////System.out.println("Companyname"+a[21]);
				companyname=a[21];
				pr2.setString(24,a[22]);
				pr2.setString(25,a[23]);
				pr2.setString(26,a[24]);
				Double sal=Double.parseDouble(a[25]);
				pr2.setDouble(27,sal);
				pr2.setString(28,a[26]);
				pr2.setString(29,a[27]);
				pr2.setString(30,a[28]);

				pr2.setString(31,"00");
				// String empidd=name+"@"+"kvkenergy.com";

				pr2.setString(32,a[32]);
				pr2.setString(33,a[29]);
				pr2.setString(34,a[30]);
				pr2.setString(35,a[31]);
				moe=a[31];
				pr2.setString(1,a[33]);
				pr2.setString(36,a[34]);
				pr2.setString(37,a[35]);
				pr2.setString(38,a[33]);
				//////System.out.println("EmployeeInformationupdateDAO:::EMPID..ELSE.............="+a[33]);

				empid1=a[33];

				pr2.executeUpdate();
				//~~~~~~~~~~~~~~~~~~~~Update Info in  employeelogin
				pr3=con.prepareStatement("Update employeelogin set estatus=? where username=?");
				pr3.setString(1,a[35]);
				pr3.setString(2,a[33]);
				pr3.executeUpdate();
				//~~~~~~~~~~~~~~~~~~~~~~delete data from empabsent when user is inactive status
				//////System.out.println("EmployeeInformationupdateDAO:::Emp Details Update...Status=="+a[35]);
				if(a[35].equals("InActive"))
				{
					prdel=con.prepareStatement("delete from empabsent where empid=? and date>=?");
					prdel.setString(1,a[33]);
					prdel.setString(2,a[34]);
					prdel.executeUpdate();
				}
			}//if
			logger.info("EmployeeInformationupdateDAO:::returned"+empid1);
		}//try
		catch(Exception e)
		{
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}finally {
			try
			{
				
				if (con != null) connectionUtils.setDBClose();
				

			} catch (SQLException e)
			{

				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}

		return empid1;

	}
}