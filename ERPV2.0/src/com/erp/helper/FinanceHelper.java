package com.erp.helper;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DecimalFormat;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import com.erp.util.DBConnection;

/**
 * @author RaviKiran
 * , Nov 7, 2013
 */
public class FinanceHelper {
		
		@Autowired
		public DBConnection dbconnection;
 
		
		
		private Connection con;
	 	private Statement st;
	 	private String t = "gfsd";
		private double dr_gr_tot=0.0;
		private double open_stk_b=0.0;
		private HttpSession session; 
		
		DecimalFormat df = new DecimalFormat("#.##");
				
		
		
		
	
	/**
	 * 
	 */
	public void generateProfitandLoss() {
			
		try {
				con=dbconnection.getDBConnection();
				st=con.createStatement();
		
				String ps=" select sum(balance) from current_assets where  under='PurchaseAccounts'  ";
				ResultSet prs=st.executeQuery(ps);
				prs.next();
				
				double purchase_b=prs.getDouble(1);
				
				
				
				/////
				
				String dpys=" select sum(balance) from current_assets where  under='DirectExpenses' ";
				ResultSet dpyrs=st.executeQuery(dpys);
				dpyrs.next();
				
				double dir_exp_b=0.0;
				
				dir_exp_b = dpyrs.getDouble(1);
				////
				
				String pys=" select sum(balance) from current_assets where under='IndirectExpenses' ";
				ResultSet pyrs=st.executeQuery(pys);
				pyrs.next();
				

				double indir_exp_b=0;
				indir_exp_b = pyrs.getDouble(1);
				
				//String pys1=" select particulars from voucher_payment ,ledgersdata where ledgername=particulars and under='IndirectExpenses' ";
				//ResultSet pyrs1=st.executeQuery(pys1);
				//while(pyrs1.next())
				//{
					//out.println(pyrs1.getString(1));
				//session.setAttribute("parti",pyrs1.getString(1));
				//}
				
				
				/////
				
				
				String ss=" select sum(balance) from current_assets where  under='SalesAccounts'  ";
				ResultSet srs=st.executeQuery(ss);
				srs.next();
				
				double sales_b = 0;
				sales_b = srs.getDouble(1);
				
				
				/////
				
				
				String sdin=" select sum(balance) from current_assets where  under='DirectIncomes'  ";
				ResultSet sdinrs=st.executeQuery(sdin);
				sdinrs.next();
				
				double dir_income_b=0.0;
				dir_income_b = sdinrs.getDouble(1);
				
				////
				
				
				
				
				
				String sindin=" select sum(balance) from current_assets where  under='IndirectIncomes'  ";
				ResultSet sindinrs=st.executeQuery(sindin);
				sindinrs.next();
				
				double indir_income_b=0.0;
				indir_income_b = sindinrs.getDouble(1);
				
				
				/////
				
				String cs=" select sum(balance) from closing_stock";
				ResultSet crs=st.executeQuery(cs);
				crs.next();
				
				double cl_stk_b=0;
				cl_stk_b = crs.getDouble(1);
				
				////
				
				
					dr_gr_tot = purchase_b + dir_exp_b + open_stk_b;
					
					double cr_grs_tot = 0.0;
					
					cr_grs_tot = sales_b + dir_income_b + cl_stk_b  ;
					
					double tot = 0.0;
					
					double gross_prf_b = 0.00;
					double gross_prf_c = 0.00;
				
				if( dr_gr_tot < cr_grs_tot)
				{
					gross_prf_c = cr_grs_tot - dr_gr_tot ;
					t = "dr";
					tot = cr_grs_tot;
				}
				else
				{
					gross_prf_b = dr_gr_tot - cr_grs_tot ;
					t = "cr"; 
					tot = dr_gr_tot;
				}
				//out.println("greater :" + t);
				
				///////
				
				double net_loss = 0.0;
				double net_profit = 0.0;
				double net_tot = 0.0;
				double dr_net = 0.0;
				double cr_net = 0.0;
				
				dr_net =  indir_exp_b + gross_prf_b;
				cr_net = gross_prf_c + indir_income_b;
				
				session.setAttribute("netpr" , net_profit);
				session.setAttribute("netls" , net_loss);
				String net = null;
				if(dr_net < cr_net)
				{
					net_profit = cr_net - dr_net;
					net_tot = cr_net;
					net="pr";
					session.setAttribute("netpr" , net_profit);
					//out.println(net_profit);
				}
				else
				{
					net_loss = dr_net - cr_net;
					net_tot = dr_net;
					net="ls";
					session.setAttribute("netls" , net_loss);
					//out.println(net_loss);
					
				}
			 

				
				
				
			}catch(Exception ex) {
				ex.printStackTrace();
				
			}
	}
			////
			
		
	public void generateBalancesheetCalculation() {
		
		String t = "gfsd";
		double dr_gr_tot=0.0;
		double open_stk_b=0.0;
		
		DecimalFormat df = new DecimalFormat("#.##");
		
		////
		
		try {
			String ps=" select sum(balance) from current_assets where  under='PurchaseAccounts'  ";
			ResultSet prs=st.executeQuery(ps);
			prs.next();
			
			double purchase_b=prs.getDouble(1);
			
			
			
			/////
			
			String dpys=" select sum(balance) from current_assets where  under='DirectExpenses' ";
			ResultSet dpyrs=st.executeQuery(dpys);
			dpyrs.next();
			
			double dir_exp_b=0.0;
			
			dir_exp_b = dpyrs.getDouble(1);
			////
			
			String pys=" select sum(balance) from current_assets where under='IndirectExpenses' ";
			ResultSet pyrs=st.executeQuery(pys);
			pyrs.next();
			
			double indir_exp_b=0;
			indir_exp_b = pyrs.getDouble(1);
			
			//String pys1=" select particulars from voucher_payment ,ledgersdata where ledgername=particulars and under='IndirectExpenses' ";
			//ResultSet pyrs1=st.executeQuery(pys1);
			//while(pyrs1.next())
			//{
				//out.println(pyrs1.getString(1));
			//session.setAttribute("parti",pyrs1.getString(1));
			//}
			
			
			/////
			
			
			String ss=" select sum(balance) from current_assets where  under='SalesAccounts'  ";
			ResultSet srs=st.executeQuery(ss);
			srs.next();
			
			double sales_b = 0;
			sales_b = srs.getDouble(1);
			
			
			/////
			
			
			String sdin=" select sum(balance) from current_assets where  under='DirectIncomes'  ";
			ResultSet sdinrs=st.executeQuery(sdin);
			sdinrs.next();
			
			double dir_income_b=0.0;
			dir_income_b = sdinrs.getDouble(1);
			
			////
			
			
			
			
			
			String sindin=" select sum(balance) from current_assets where  under='IndirectIncomes'  ";
			ResultSet sindinrs=st.executeQuery(sindin);
			sindinrs.next();
			
			double indir_income_b=0.0;
			indir_income_b = sindinrs.getDouble(1);
			
			
			/////
			
			String cs=" select sum(balance) from closing_stock";
			ResultSet crs=st.executeQuery(cs);
			crs.next();
			
			double cl_stk_b=0;
			cl_stk_b = crs.getDouble(1);
			
			////
			
			
				dr_gr_tot = purchase_b + dir_exp_b + open_stk_b;
				
				double cr_grs_tot = 0.0;
				
				cr_grs_tot = sales_b + dir_income_b + cl_stk_b  ;
				
				double tot = 0.0;
				
				double gross_prf_b = 0.00;
				double gross_prf_c = 0.00;
			
			if( dr_gr_tot < cr_grs_tot)
			{
				gross_prf_c = cr_grs_tot - dr_gr_tot ;
				t = "dr";
				tot = cr_grs_tot;
			}
			else
			{
				gross_prf_b = dr_gr_tot - cr_grs_tot ;
				t = "cr"; 
				tot = dr_gr_tot;
			}
			//out.println("greater :" + t);
			
			///////
			
			double net_loss = 0.0;
			double net_profit = 0.0;
			double net_tot = 0.0;
			double dr_net = 0.0;
			double cr_net = 0.0;
			
			dr_net =  indir_exp_b + gross_prf_b;
			cr_net = gross_prf_c + indir_income_b;
			
			session.setAttribute("netpr" , net_profit);
			session.setAttribute("netls" , net_loss);
			String net = null;
			if(dr_net < cr_net)
			{
				net_profit = cr_net - dr_net;
				net_tot = cr_net;
				net="pr";
				session.setAttribute("netpr" , net_profit);
				//out.println(net_profit);
			}
			else
			{
				net_loss = dr_net - cr_net;
				net_tot = dr_net;
				net="ls";
				session.setAttribute("netls" , net_loss);
				//out.println(net_loss);
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	
	 
	
	
	

	}
	
	
	
			
}
