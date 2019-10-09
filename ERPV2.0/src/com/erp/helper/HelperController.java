package com.erp.helper;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.erp.util.DBConnection;



@Controller
public class HelperController {
	List<String> ll;
	
	
	@Autowired
	DBConnection dbconnection;
	
	
	DataSource ds1;
	
	@Autowired
	public void setDataSource(DataSource ds){
		ds1=ds;
	}
	
	
	PrintWriter out;
	
	@RequestMapping(value="getdata.erp",method=RequestMethod.GET)
	public void getData(HttpServletRequest request,HttpServletResponse response){
		Connection con;
		PreparedStatement pr;
		ResultSet rs;	
		System.out.println("Hello");
		
		try{
			out=response.getWriter();
			con=ds1.getConnection();
			//con=dbconnection.getDBConnection();
			pr=con.prepareStatement("select * from employee");
			rs=pr.executeQuery();
				while(rs.next()){
				out.print(rs.getString(2));
			}
				
				rs.close();
				con.close();
				pr.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		response.setContentType("plian/text");
	}
	
	@RequestMapping(value="groups_under.erp",method=RequestMethod.GET)
	public void getLedgerDetails(HttpServletRequest request,HttpServletResponse response){
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		
		try{
			out=response.getWriter();
			//con=dbconnection.getDBConnection();
			con=ds1.getConnection();
			pr=con.prepareStatement("select groupname from groups");
			
			rs=pr.executeQuery();
				while(rs.next()){
					//System.out.println("Data is"+rs.getString(1));
				out.print("<option>"+rs.getString(1)+"</option>");
			}
			rs.close();
			pr.close();
			con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		response.setContentType("plain/text");
	}
	
	
	@RequestMapping(value="vocher_under.erp",method=RequestMethod.GET)
	public void getVocherDetails(HttpServletRequest request,HttpServletResponse response){
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		
		try{
			out=response.getWriter();
			//con=dbconnection.getDBConnection();
			con=ds1.getConnection();
			pr=con.prepareStatement("select vochername from vochertype");
			rs=pr.executeQuery();
				while(rs.next()){
					System.out.println("Vocher Type"+rs.getString(1));
				out.print("<option>"+rs.getString(1)+"</option>");
			}
				rs.close();
				pr.close();
				con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		response.setContentType("plain/text");
	}
	
	@RequestMapping(value="vocherreciptno.erp",method=RequestMethod.GET)
	public void getReciptNo(HttpServletRequest request,HttpServletResponse response){
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		
		try{
			out=response.getWriter();
			//con=dbconnection.getDBConnection();
			con=ds1.getConnection();
			pr=con.prepareStatement("select count(*) from recipt");
			rs=pr.executeQuery();
				while(rs.next()){
				out.println(rs.getString(1));
			}
			rs.close();
			pr.close();
			con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		response.setContentType("plain/text");
		
	}
	
	@RequestMapping(value="contrareciptno.erp",method=RequestMethod.GET)
	public void getContraReciptNo(HttpServletRequest request,HttpServletResponse response){
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		
		try{
			out=response.getWriter();
			//con=dbconnection.getDBConnection();
			con=ds1.getConnection();
			pr=con.prepareStatement("select count(*) from vochercontra");
			rs=pr.executeQuery();
				while(rs.next()){
				out.println(rs.getString(1));
			}
			rs.close();
			pr.close();
			con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		response.setContentType("plain/text");
		
	}
	
	@RequestMapping(value="paymentreciptno.erp",method=RequestMethod.GET)
	public void getPaymentReciptNo(HttpServletRequest request,HttpServletResponse response){
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		
		try{
			out=response.getWriter();
			//con=dbconnection.getDBConnection();
			con=ds1.getConnection();
			pr=con.prepareStatement("select count(*) from vocherpayment");
			rs=pr.executeQuery();
				while(rs.next()){
				out.println(rs.getString(1));
			}
			rs.close();
			pr.close();
			con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		response.setContentType("plain/text");
		
	}

	@RequestMapping(value="journalreciptno.erp",method=RequestMethod.GET)
	public void getJournalReciptNo(HttpServletRequest request,HttpServletResponse response){
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		
		try{
			out=response.getWriter();
			//con=dbconnection.getDBConnection();
			con=ds1.getConnection();
			pr=con.prepareStatement("select count(*) from vocherpayment");
			rs=pr.executeQuery();
				while(rs.next()){
				out.println(rs.getString(1));
			}
			rs.close();
			pr.close();
			con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		response.setContentType("plain/text");
		
	}
	
	@RequestMapping(value="purchasereciptno.erp",method=RequestMethod.GET)
	public void getPurchaseReciptNo(HttpServletResponse response){
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		
		try{
			out=response.getWriter();
			//con=dbconnection.getDBConnection();
			con=ds1.getConnection();
			pr=con.prepareStatement("select count(*) from purchase");
			rs=pr.executeQuery();
				while(rs.next()){
				out.println(rs.getString(1));
			}
			rs.close();
			pr.close();
			con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		response.setContentType("plain/text");
		
	}
	

	@RequestMapping(value="vochersales.erp",method=RequestMethod.GET)
	public void getSalesReciptNo(HttpServletResponse response){
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		
		try{
			out=response.getWriter();
			//con=dbconnection.getDBConnection();
			con=ds1.getConnection();
			pr=con.prepareStatement("select count(*) from vochersales");
			rs=pr.executeQuery();
				while(rs.next()){
				out.println(rs.getString(1));
			}
			rs.close();
			pr.close();
			con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		response.setContentType("plain/text");
		
	}
	
	@RequestMapping(value="vocherpurchasereturn.erp",method=RequestMethod.GET)
	public void getPurchaseReturnReciptNo(HttpServletResponse response){
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		
		try{
			out=response.getWriter();
			//con=dbconnection.getDBConnection();
			con=ds1.getConnection();
			pr=con.prepareStatement("select count(*) from vocherpurcahsereturn");
			rs=pr.executeQuery();
				while(rs.next()){
				out.println(rs.getString(1));
			}
			rs.close();
			pr.close();
			con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		response.setContentType("plain/text");
		
	}
	@RequestMapping(value="salesreturn.erp",method=RequestMethod.GET)
	public void getSalesReturnReciptNo(HttpServletResponse response){
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		
		try{
			out=response.getWriter();
			//con=dbconnection.getDBConnection();
			con=ds1.getConnection();
			pr=con.prepareStatement("select count(*) from vocherpurcahsereturn");
			rs=pr.executeQuery();
				while(rs.next()){
				out.println(rs.getString(1));
			}
			rs.close();
			pr.close();
			con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		response.setContentType("plain/text");
		
	}
	
	@RequestMapping(value="account_recive.erp",method=RequestMethod.GET)
	public void getAccounts(HttpServletResponse response){
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		String query="select ledgername from Ledger where  under='Cash-in-hand' or under='BankAccounts' or under='BankOCC-A/c' or under='BankOD-A/c'";
		System.out.println("*******************************Start*******************************");
		try{
			out=response.getWriter();
			//con=dbconnection.getDBConnection();
			con=ds1.getConnection();
			pr=con.prepareStatement(query);
			rs=pr.executeQuery();
				while(rs.next()){
				System.out.println("Start: \t 1 \t"+rs.getString(1));	
				out.println("<option name="+rs.getString(1)+">"+rs.getString(1)+"</option>");
			}
			rs.close();
			pr.close();
			con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		response.setContentType("plain/text");
		
	}
	
	@RequestMapping(value="second_account_recive.erp",method=RequestMethod.GET)
	public void getSecondAccounts(HttpServletResponse response){
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		String query="select ledgername from Ledger where ledgername!='Cash'";
		System.out.println("####################Second#####################################");
		try{
			out=response.getWriter();
			//con=dbconnection.getDBConnection();
			con=ds1.getConnection();
			pr=con.prepareStatement(query);
			rs=pr.executeQuery();
				while(rs.next()){
				System.out.println("Second:\t 2 \t"+rs.getString(1));
				out.println("<option "+rs.getString(1)+">"+rs.getString(1)+"</option>");
			}
			rs.close();
			pr.close();
			con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		response.setContentType("plain/text");
		
	}
	@RequestMapping(value="empidgen.erp",method=RequestMethod.GET)
	public void getEmpId(HttpServletResponse response){
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		String query="select empno from employe";
		int empno=0;
		String eno=null;
		System.out.println("Getting empid");
		try{
			out=response.getWriter();
			//con=dbconnection.getDBConnection();
			con=ds1.getConnection();
			pr=con.prepareStatement(query);
			rs=pr.executeQuery();
				while(rs.last()){
					
					eno=rs.getString(1);
					
				}
				
				if(eno.equals(null)||(eno.equals(0))){
					empno=1000+1;
					System.out.println("It is ok1");
				}
				else{
					empno=Integer.parseInt(eno)+1;
					System.out.println("Is it ok");
				}
			
			System.out.println("Employee"+empno);
			out.println(empno);
			rs.close();
			pr.close();
			con.close();
			}catch(Exception e){
					e.printStackTrace();
				}
			response.setContentType("plain/text");
		}
}
