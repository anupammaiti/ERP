package com.svs.hrerp.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.apache.log4j.Logger;

import net.sf.json.JSONObject;

import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.util.ConvertStackTracetoString;

public class loginDAO {

	Connection con=null;
	PreparedStatement pr=null;
	PreparedStatement pr1=null;
	PreparedStatement pr2=null;

	Statement st=null;
	ResultSet rs=null;
	ResultSet rs2=null;

	//DBConnection cc=new DBConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();
	private boolean insertorupdate=false;
	int r=0;
	private JSONObject logindetails=new JSONObject();
	  static Logger log = Logger.getLogger(loginDAO.class);
		ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();    

	public loginDAO()
	{
		try
		{
			////////System.out.println("loginDAO(1)::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			////////System.out.println("loginDAO(1)::ConnectionPool----->>>>After Open --->>>>Test");

		}catch(Exception ex)
		{
			log.error(util_stacktrace.sendingErrorAsString(ex));
		}finally {
			try
			{
				////////System.out.println("loginDAO(1) ::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				////////System.out.println("loginDAO(1) ::ConnectionPool--After Close--->>>>Test");
			} catch (SQLException e)
			{
				log.error(util_stacktrace.sendingErrorAsString(e));
				//logger.error("The statement cannot be closed.", e);
				////////System.out.println("Exception"+e);
			}
		}
	}
	public int getinfo(String username,String password,String ip)throws SQLException,IOException
	{
		try
		{
		////////System.out.println("loginDAO(2)::ConnectionPool----->>>>Before Open --->>>>Test");
		con=connectionUtils.getDBConnection();
		////////System.out.println("loginDAO(2)::ConnectionPool----->>>>After Open --->>>>Test");
		pr=con.prepareStatement("select username,password,status from employeelogin where username=?");
		pr.setString(1,username);
		//pr.setString(2,password);
		rs=pr.executeQuery();
		String u=null;
		String p=null;
		String s=null;

		boolean f=false;
		while(rs.next())
		{
			u=rs.getString(1);
			p=rs.getString(2);
			s=rs.getString(3);
			//////System.out.println(".....status.........."+s);
			if(username.equals(u)&&password.equals(p))
			{
				f=true;
				////////System.out.println(".....User...giving."+username+"..dao"+u+"..giving pwd...."+password+"..daopwd...."+p+"..");
			}

			if(f==true)
			{

				if(s.equals("logoff"))
				{

					r=1;
					pr1=con.prepareStatement("update employeelogin set status='login',ip=? where username=?");
					pr1.setString(1,ip);
					pr1.setString(2,username);
					pr1.executeUpdate();
					////////System.out.println(".....User logging in DAO........");
				}
				else if(s.equals("login"))
				{
					////////System.out.println(".....User logged in DAO........");
					r=2;
				}
			}
			else if(f==false)
			{
				//	//////System.out.println(".....Username and password is wrong......DAO..");
				r=0;

			}
		}con.close();
		}catch (Exception ex){
			////////System.out.println("Exception"+ex);
			log.error(util_stacktrace.sendingErrorAsString(ex));
			
		}
		finally {
			try
			{
				////////System.out.println("loginDAO(2) ::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				////////System.out.println("loginDAO(2) ::ConnectionPool--After Close--->>>>Test");
			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				////////System.out.println("Exception"+e);
				log.error(util_stacktrace.sendingErrorAsString(e));
			}
		}


		//rs.close();
		//pr.close();
		//pr1.close();
		//con.close();
		return r;
	}
	//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`user login code
	public int getinfouser(String username,String password)throws SQLException,IOException
	{
		try
		{
		//////System.out.println("loginDAO(3)::ConnectionPool----->>>>Before Open --->>>>Test");
		con=connectionUtils.getDBConnection();
		//////System.out.println("loginDAO(3)::ConnectionPool----->>>>After Open --->>>>Test");
		pr2=con.prepareStatement("select username,password from employeelogin where estatus='Active' ");
		rs2=pr2.executeQuery();
		String uuser=null;
		String puser=null;
		boolean fuser=false;
		while(rs2.next())
		{
			uuser=rs2.getString(1);
			puser=rs2.getString(2);

			if(username.equals(uuser)&&password.equals(puser))
			{
				fuser=true;
				////////System.out.println(".....User...giving."+username+"..dao"+u+"..giving pwd...."+password+"..daopwd...."+p+"..");
			}

			if(fuser==true)
			{
				r=3;
			}
			else if(fuser==false)
			{
				//	//////System.out.println(".....Username and password is wrong......DAO..");
				r=0;
			}
		}//while
		con.close();
		}catch (Exception ex){
			////////System.out.println("Exception"+ex);
			ex.printStackTrace();
		}
		finally {
			try
			{
				////////System.out.println("loginDAO(3)::getinfouser ::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				////////System.out.println("loginDAO(3)::getinfouser ::ConnectionPool--After Close--->>>>Test");
			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				////////System.out.println("Exception"+e);
				log.error(util_stacktrace.sendingErrorAsString(e));
			}
		}


		//rs2.close();
		//pr2.close();
		//con.close();
		return r;
	}//end of methd
	
	public boolean insert(String username,String password,String companyname,String designation){
		try{
			con=connectionUtils.getDBConnection();
			pr=con.prepareStatement("insert into employeelogin (username,password,companyname,designation) value(?,?,?,?)");
			pr.setString(1, username);
			pr.setString(2, password);
			pr.setString(3, companyname);
			pr.setString(4, designation);
			int i=pr.executeUpdate();
			////////System.out.println("Inserted "+i);
			
		}catch(Exception e){
			
			log.error(util_stacktrace.sendingErrorAsString(e));
		}finally {
			try
			{
				con.close();
				////////System.out.println("loginDAO(3)::getinfouser ::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				////////System.out.println("loginDAO(3)::getinfouser ::ConnectionPool--After Close--->>>>Test");
			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				////////System.out.println("Exception"+e);
				log.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
		return insertorupdate;
	}
	
	public boolean usernameAvailable(String username){
	String usrname=null;
		try{
			con=connectionUtils.getDBConnection();
			pr=con.prepareStatement("select username from employeelogin where username=?");
			pr.setString(1, username);
			rs=pr.executeQuery();
			while(rs.next()){
				if(rs.getString("username")==null){
					insertorupdate=false;
				}else{
					usrname=rs.getString("usrename");
					if(usrname.equals(username)){
						insertorupdate=true;
					}
				}
			}
			
		}catch(Exception e){
			log.error(util_stacktrace.sendingErrorAsString(e));
		}finally {
			try
			{con.close();
				////////System.out.println("loginDAO(3)::getinfouser ::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				////////System.out.println("loginDAO(3)::getinfouser ::ConnectionPool--After Close--->>>>Test");
			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				////////System.out.println("Exception"+e);
				log.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
		
		return insertorupdate;
	}
	
	public boolean generateLogin(String username,String password,String companyname,String designation){
		try{
			
			con=connectionUtils.getDBConnection();
			pr=con.prepareStatement("insert into employeelogin (username,password,companyname,designation) values(?,?,?,?)");
			pr.setString(1, username);
			pr.setString(2, password);
			pr.setString(3,companyname);
			pr.setString(4, designation);
			int id=pr.executeUpdate();
			if(id!=0){
				insertorupdate=false;
			}else{
				insertorupdate=true;
			}
			
		}catch(Exception e){
			log.error(util_stacktrace.sendingErrorAsString(e));
		}finally {
			try
			{con.close();
				////////System.out.println("loginDAO(3)::getinfouser ::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				////////System.out.println("loginDAO(3)::getinfouser ::ConnectionPool--After Close--->>>>Test");
			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				////////System.out.println("Exception"+e);
				log.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
		return insertorupdate;
	}

	public JSONObject getLoginDetails(String username,String password)throws SQLException,IOException
	{
		String designation=null;
		
		try
		{
		//////System.out.println("loginDAO(3)::ConnectionPool----->>>>Before Open --->>>>Test");
		con=connectionUtils.getDBConnection();
		//////System.out.println("loginDAO(3)::ConnectionPool----->>>>After Open --->>>>Test");
		pr2=con.prepareStatement("select designation,companyname from employeelogin where username=? and password=?");
		pr2.setString(1,username);
		pr2.setString(2,password);
		rs2=pr2.executeQuery();
		String uuser=null;
		String puser=null;
		boolean fuser=false;
		while(rs2.next())
		{
			//////System.out.println("Designation\t"+ rs2.getString("designation"));
			//////System.out.println("Company Name\t"+rs2.getString("companyname"));
		logindetails.put("designation", rs2.getString("designation"));
		logindetails.put("company", rs2.getString("companyname"));
			
			
		}//while
		}catch (Exception ex){
			////////System.out.println("Exception"+ex);
			
			log.error(util_stacktrace.sendingErrorAsString(ex));
		}
		finally {
			try
			{con.close();
				////////System.out.println("loginDAO(3)::getinfouser ::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				////////System.out.println("loginDAO(3)::getinfouser ::ConnectionPool--After Close--->>>>Test");
			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				////////System.out.println("Exception"+e);
				log.error(util_stacktrace.sendingErrorAsString(e));
			}
		}


		//rs2.close();
		//pr2.close();
		//con.close();
		return logindetails;
	}//end of methd
	
}
