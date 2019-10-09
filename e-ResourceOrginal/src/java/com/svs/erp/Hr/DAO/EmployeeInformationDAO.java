package com.svs.erp.Hr.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

import org.apache.log4j.Logger;

import com.svs.bean.EmployeeBean;
import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.util.ConvertStackTracetoString;


public class EmployeeInformationDAO
{
	Connection con=null;;
	ConnectionUtils connectionUtils=new ConnectionUtils();

	private static Logger logger = Logger.getLogger(EmployeeInformationDAO.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	Statement st,st1;
	ResultSet rs,rs1,rs2,rs5,rs6,rs7;
	PreparedStatement pr,pr1,pr2,pr5,pr6,pr7;
	//DBConnection cc=new DBConnection();
	
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
	
	private ArrayList employee=new ArrayList();
	private String viewquery="select * from employee where empno=?";
	private String viewemployeequery="select empno from employee";
	private String getEmployemax="select MAX(sno) from employee";
	
	private List<EmployeeBean> employeelist=new ArrayList<EmployeeBean>();
	private EmployeeBean empbean;

	private int noOfRecords=0;
	private String max_empid;
	private boolean result=false;
	
	public EmployeeInformationDAO ()
	{
		flag=false;
		flag1=false;
		flag2=false;

		try
		{
			//////System.out.println("EmployeeInformationDAO::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("EmployeeInformationDAO::ConnectionPool----->>>>After Open --->>>>Test");
		}
		catch (Exception e)
		{
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}

	}
	public String insert(Collection employee_coll)throws Exception
	{
		try
		{	//////System.out.println(employee_coll);
			//////System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");
			for(iter=employee_coll.iterator();iter.hasNext();)
			{
				for( i=0;i<employee_coll.size();i++)
				{
					a[i]=(String)(iter.next());
					
					System.out.print(a[i]);
				}
			}
			//////System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");
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
			if(flag==false)
			{
				//pr=con.prepareStatement("insert into employee values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				pr=con.prepareStatement("insert into employee(empno,name,lname,fathername,dob,sex,joiningdate,designation,department,reportingto,joblevel,location,entrymanner,nomination,birthpalce,phoneno,address,religion,pannumber,passportnumber,issuedateandplace,validity,companyname,qualification,presentsalary,expectedsalary,salaryoffered,BankACNO,PFACNo,joiningtime,designationid,manager,empid,modeofemployement,emailid,resigndate,status) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

				//////System.out.println("Already there, Iam going to update");
				

				pr.setString(1,a[33]);
				//////System.out.println("EMPID...............="+a[33]);

				empid1=a[33];

				//	//////System.out.println("daoempid1"+empid);
				////////System.out.println("updatedao"+employee_coll);



				//String emp=s2+"-"+s1+"-"+empno;
				pr.setString(2,a[0]);
				name=a[0];
				//////System.out.println("Name"+name);
				pr.setString(3,a[1]);
				pr.setString(4,a[2]);
				pr.setString(5,a[3]);
				pr.setString(6,a[4]);
				pr.setString(7,a[5]);
				pr.setString(8,a[6]);
				designation=a[6];
				pr.setString(9,a[7]);
				department=a[7];
				pr.setString(10,a[8]);
				pr.setString(11,a[9]);
				pr.setString(12,a[10]);
				pr.setString(13,a[11]);
				pr.setString(14,a[12]);
				pr.setString(15,a[13]);
				pr.setString(16,a[14]);
				pr.setString(17,a[15]);
				pr.setString(18,a[16]);
				pr.setString(19,a[17]);
				pr.setString(20,a[18]);////////////inserting PASSPORT NUMBER
				pr.setString(21,a[19]);
				pr.setString(22,a[20]);
				pr.setString(23,a[21]);
				//////System.out.println("Companyname"+a[21]);
				companyname=a[21];
				pr.setString(24,a[22]);
				pr.setString(25,a[23]);
				pr.setString(26,a[24]);
				Double sal=Double.parseDouble(a[25]);
				pr.setDouble(27,sal);
				pr.setString(28,a[26]);
				pr.setString(29,a[27]);
				pr.setString(30,a[28]);


				pr.setString(31,a[32]);//emailidd
				// String empidd=name+"@"+"kvkenergy.com";
				//////System.out.println("email id"+a[32]);
				pr.setString(32,a[29]);
				//////System.out.println("Manager"+a[29]);
				
				pr.setString(33,a[29]);
				//////System.out.println("Manager\t"+a[29]);
				pr.setString(34,a[30]);
				//////System.out.println(a[30]);
				pr.setString(35,a[31]);
				//////System.out.println(a[31]);
				pr.setString(36,"9999-12-12");//resign date
				pr.setString(37,"Active");//Status
				moe=a[31];




				pr.executeUpdate();
			}
			else
			{
				pr2=con.prepareStatement("Update employee set empno=?,name=?,lname=?,fathername=?,dob=?,sex=?,joiningdate=?,designation=?,department=?,reportingto=?,joblevel=?,location=?,entrymanner=?,nomination=?,birthpalce=?,phoneno=?,address=?,religion=?,pannumber=?,passportnumber=?,issuedateandplace=?,validity=?,companyname=?,qualification=?,presentsalary=?,expectedsalary=?,salaryoffered=?,BankACNo=?,PFACNo=?,joiningtime=?,designationid=?,empid=?,manager=?,emailid=?,modeofemployement=? where empno=?");
				pr2.setString(2,a[0]);
				name=a[0];
				//////System.out.println("Name"+name);
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
				pr2.setString(36,a[33]);
				//////System.out.println("EMPID..ELSE.............="+a[33]);

				empid1=a[33];

				////////System.out.println("daoempid2"+empid1);
				////////System.out.println("updatedao"+employee_coll);



				//String emp=s2+"-"+s1+"-"+empno;
				pr2.executeUpdate();
			}//else
			//////System.out.println("returned"+empid1);
		}
		catch(Exception e)
		{
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		/*finally {
			try
			{
				//////System.out.println("EmployeeInformationDAO::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("EmployeeInformationDAO::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}*/
		return empid1;

	}
	
	public ArrayList getEmployeePaySlipList(String empid){
		employee.clear();
			try {
				pr=con.prepareStatement(viewquery);
				pr.setString(1,empid);
				rs=pr.executeQuery();
				while(rs.next()){
					//////System.out.println("Employee Details"+rs.getString(1));
					employee.add(rs.getString("empno"));
					employee.add(rs.getString("name"));
					employee.add(rs.getString("sex"));
					employee.add(rs.getString("BankACNO"));
					employee.add(rs.getString("PFACNo"));
					employee.add(rs.getString("department"));
					employee.add(rs.getString("pannumber"));
					employee.add(rs.getString("designation"));
					employee.add(rs.getString("presentsalary"));
					employee.add(rs.getString("companyname"));
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
			
		return employee;
	}
	
	public ArrayList gettingEmployeeName(){
		employee.clear();
		try{
			pr=con.prepareStatement(viewemployeequery);
			rs=pr.executeQuery();
			while(rs.next()){
				employee.add(rs.getString(1));
			}
			
		}catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		
		return employee;
	}
	public List<EmployeeBean> viewEmployeeInfoList(int offset, int noOfRecords,String companyname){
		try{
			
		
		pr=con.prepareStatement("SELECT SQL_CALC_FOUND_ROWS * FROM employee  where companyname=? limit ? , ?");
		pr.setString(1,companyname);
		pr.setInt(2,offset);
		pr.setInt(3,noOfRecords);
		rs=pr.executeQuery();
		while(rs.next()){
			empbean=new EmployeeBean();
			empbean.setEmpid(rs.getString(1));
			empbean.setEmpname(rs.getString(2));
			empbean.setDob(rs.getString("dob"));
			empbean.setDoj(rs.getString("joiningdate"));
			empbean.setDesig(rs.getString("designation"));
			empbean.setDept(rs.getString("department"));
			empbean.setRm(rs.getString(10));
			empbean.setHod(rs.getString(33));
			empbean.setComp(rs.getString(23));
			employeelist.add(empbean);
			
		}
		rs.close();
		 rs = pr.executeQuery("SELECT FOUND_ROWS()");
           if(rs.next()){
               this.noOfRecords = rs.getInt(1);
               
               //////System.out.println("No Of Rows \t"+rs.getInt(1));
               }
		
		}catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		return employeelist;
	}

	
	public int getNoOfRecords() {
        return noOfRecords;
    }
	
	public String getMaxOfEmployee(){
		
		try{
			pr=con.prepareStatement(getEmployemax);
			rs=pr.executeQuery();
			while(rs.next()){
				//////System.out.println("Employee Max number is\t"+rs.getString(1));
				max_empid=rs.getString(1);
			}
		}catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		
		return max_empid;
	}

	public boolean getEmployeeList(String empid){
		
		try{
			pr=con.prepareStatement("select * from employee where reportingto=?");
			pr.setString(1, empid);
			rs=pr.executeQuery();
			while(rs.next()){
				if(!rs.next()){
					result=false;
				}else{
					result=true;
				}
			}
		}catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		
		return result;
		
	}
	
	
	
}