package com.svs.helper;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import net.sf.json.JSONObject;

import com.svs.erp.Hr.DAO.CompanyPaySlipDAO;
import com.svs.erp.Hr.DAO.EmployeeInformationDAO;
import com.svs.erp.leavecheck.DAO.statuscheckDAO;
import com.svs.erp.loan.DAO.LoanDAO;
import com.svs.util.ConvertStackTracetoString;

/**
 * Servlet implementation class PaySlipCalculations
 */
public class PaySlipCalculations extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private JSONObject paysliplist=new JSONObject();
	private PrintWriter out;
	private ArrayList finalpaysliplist=new ArrayList();
	private List paysliplist1;
	private CompanyPaySlipDAO companypayslipdao=new CompanyPaySlipDAO();
	private double orsal=0;
	private double ctcyearly=0;
	private double ctcmonthly=0;
	private double basic=0;
	private double hra=0;
	private double gratuatity=0;
	private double pf=0.0;
	private double LTA=0.0;
	private double conv=0.0;
	private double medical=0.0;
	private double bonus=0.0;
	private double sa=0.0;
	private double gratuty=0.0;
	private double montlyctc=0.0;
	private double yearly=0.0;
	private double salary=0.0;
	private double anualctc=0.0;
	private double chedu=0;
	private double da=0.0;
	private double m1i=0.0;
	private double m1e=0.0;
	private double m1p=0.0;
	private double m2i=0.0;
	private double m2e=0.0;
	private double m2p=0.0;
	private double m3i=0.0;
	private double m3e=0.0;
	private double m3p=0.0;
	private double m4i=0.0;
	private double m4e=0.0;
	private double m4p=0.0;
	private double f1i=0.0;
	private double f1e=0.0;
	private double f1p=0.0;
	private double f2i=0.0;
	private double f2e=0.0;
	private double f2p=0.0;
	private double f3i=0.0;
	private double f3e=0.0;
	private double f3p=0.0;
	private double f4i=0.0;
	private double f4e=0.0;
	private double f4p=0.0;
	private double sal2=0;
	private double bpy=0.0;
	private double ittax=0.0;
	private double noofleaves=0;
	private String gender=null;
	private double gross=0;
	private double via1=0;
	private double lic=0;
	private double insurance=0;
	private double pt=0;
	private double totalded=0;
	private double netsalary=0;
	private LoanDAO loandao=new LoanDAO();
	private String loanamount=null;
	private String empid=null;
	private double loan=0;
	private EmployeeInformationDAO employeeinfo=new EmployeeInformationDAO();
	private List employeedetails=new ArrayList();
	 static Logger logger = Logger.getLogger(PaidDaysList.class.getName());
		ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	statuscheckDAO leavestatus=new statuscheckDAO();
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
			out=response.getWriter();
			
			
			empid=request.getParameter("empid");
			
			//////System.out.println("Employee Id\t"+empid);
			employeedetails=employeeinfo.getEmployeePaySlipList(empid);
			//////System.out.println("Employee Details\t"+employeedetails);
			//////System.out.println("Employee Salary\t"+employeedetails.get(8));
			//////System.out.println("Employee Gender\t"+employeedetails.get(3));
			finalpaysliplist=payslipCalculation("1200000","male",1,empid);//Calculating the PaySlip and Display.
			//////System.out.println("Final PaySlip List\t"+finalpaysliplist);
			//////System.out.println("Final Pay Slip Size\t"+finalpaysliplist.size());
			/*//////System.out.println("Basic"+finalpaysliplist.get(1));*/
			
			basic=(Double)finalpaysliplist.get(0);
			////////System.out.println("Basic==============\t"+basic);
			hra=(Double)finalpaysliplist.get(1);
			////////System.out.println("Hra --------------\t"+hra);
			da=(Double)finalpaysliplist.get(3);
			sa=(Double)finalpaysliplist.get(6);
			montlyctc=(Double)finalpaysliplist.get(7);
			ittax=(Double)finalpaysliplist.get(8);
			totalded=(Double)finalpaysliplist.get(9);
			netsalary=(Double)finalpaysliplist.get(10);
			loanamount=gettingLoanDetails(empid);
			
			//////System.out.println("Total Deduction\t"+totalded);
			
			/*String leaves=leavestatus.getNoOfLeaves(empid);
			//////System.out.println("No of Leaves\t"+leaves);
			if((leaves.isEmpty()&&(leaves!=null))){
				noofleaves=0;
				//////System.out.println("No leaves");
			}
			else{
			noofleaves=Double.parseDouble(leavestatus.getNoOfLeaves(empid));//No of Leaves.
			//////System.out.println(" Leaves are");
			}*/
			
			
			paysliplist.put("basic",basic);
			paysliplist.put("hra", hra);
			paysliplist.put("da", da);
			paysliplist.put("sa", sa);
			paysliplist.put("gs",montlyctc);
			paysliplist.put("pf",pf);
			paysliplist.put("it",ittax);
			paysliplist.put("ded", totalded);
			paysliplist.put("netsalary", netsalary);
			paysliplist.put("loan", loanamount);
			
			
			
			out.print(paysliplist);
		}catch(Exception e){
		logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		response.setContentType("plain/text");
		//paysliplist1.clear();
		//paysliplist.clear();
	}

	public String gettingLoanDetails(String empid){
			return loandao.gettingLoanDetails(empid);
	}
	public String gettingLeaveDetails(String empid){
		
		return "";
	}
	
	public ArrayList payslipCalculation(String yearlysalary,String gender,double noofleaves,String empid){
		finalpaysliplist.clear();
		try{
			String companyname="SVSInfomatics";
			String[] payslip=new String[100];
			//////System.out.println("Employee ID\t"+empid);
			paysliplist1=companypayslipdao.viewCompanyPaySlip(companyname);
			for (Iterator iter = paysliplist1.iterator(); iter.hasNext();) {
				for (int i = 0; i < paysliplist1.size(); i++) {
					payslip[i]=(String)iter.next();	
				}
			}
			//////System.out.println("List is\t"+paysliplist1);
					
			//Calculation Starts.
			//Yearly CTC.
			ctcyearly=Double.parseDouble(yearlysalary);
			//Monthly CTC.
			ctcmonthly=ctcyearly/12;
			//////System.out.println("CTC Monthly"+ctcmonthly);
			//basic.
			basic=Double.parseDouble(payslip[1]);
			//HRA
			hra=Double.parseDouble(payslip[3]);
			//da
			da=Double.parseDouble(payslip[6]);
			//////System.out.println("DA\t"+da);
			//pf
			pf=Double.parseDouble(payslip[4]);
			//////System.out.println("PF %\t"+pf);
			
			
			
			//basic
			basic=Math.round(((ctcyearly*basic)/100)/12);
			//////System.out.println("Basic"+basic);
			//conveyance
			
			//da
			da=(basic*da)/100;
			//////System.out.println("DA is"+da);
			//pf
			pf=(basic*pf)/100;
			//////System.out.println("Provident Fund"+pf);
			//hra
			hra=(basic*hra)/100;
			//////System.out.println("hra is"+hra);
			//gratuty
			gratuty=(basic*gratuty)/100;
			//////System.out.println("gratuty"+gratuty);
			//Special Allowance
			sa=ctcmonthly-(basic+hra+da+conv);
			sa=Math.round(sa);
			//////System.out.println("Special Aliance"+sa);
			//Monthly Salary
			montlyctc=basic+hra+pf+LTA+conv+medical+bonus+gratuty+sa;
			montlyctc=Math.round(montlyctc);
			//////System.out.println("Monthly CTC"+montlyctc);
			//Yearly Salary						
			salary=montlyctc/30;/*leave salries*/
			//////System.out.println("Salary is"+salary);
			//Loass of pay
			orsal=noofleaves*salary;
			//////System.out.println("Salary to be cut "+orsal);
			sal2=montlyctc-orsal;
			//////System.out.println("Final Salary"+sal2);
			//////System.out.println("Salary To be cutted"+Math.round(orsal));
			//yearly salary
			yearly=sal2*12;
			yearly=Math.round(yearly);
			//////System.out.println("Yearly Income"+yearly);
	
			//Income Tax Calculations Starts Here
				bpy=basic*12;
				//////System.out.println("basic salary per year"+bpy);
				
				
				 double schoolfee=chedu;
				 via1=lic+insurance+schoolfee;
				 	 //////System.out.println("via1 is :"+via1);

				 double actualhra=0.0;
				 actualhra=hra*12;
				 double taxablehra=actualhra+(conv*12);
				 
				 //////System.out.println("Taxable Hra is :"+taxablehra);
			     gross=basic+hra+conv+sa+chedu+medical+da;
				 /*gross=gross*12;*/

				double totaltaxableincome=gross-(taxablehra-via1);
			    //////System.out.println("totaltaxableincome"+totaltaxableincome);
				
				
				
				if(gender=="Male")
				{
			if((bpy>m1i)&&(bpy<m1e))
			{
			//////System.out.println("No Tax Please");
			ittax=0;					
			//////System.out.println("Income Tax"+ittax);
			}
			else
			if((bpy>m2i)&&(bpy<m2e))
			{ittax=(bpy*m2p)/100;
			//////System.out.println("Income Tax is"+ittax);
			//////System.out.println("Your Tax will pay 10% of your Salary");
			}
			else if((bpy>m3i)&&(bpy<m3e))
			{
			ittax=(bpy*m3p)/100;
			//////System.out.println("Income Tax is"+ittax);
			//////System.out.println("Your Tax will pay 20% of your Salary");
			}
			else
			{
			ittax=(bpy*m4p)/100;
			//////System.out.println("Income Tax is"+ittax);
			//////System.out.println("Your Tax will pay 30% of salary");
			}
			}

			//Female Income Tax Calculations
			else
			{
			if((bpy>f1i)&&(bpy<f1e))
			{
			//////System.out.println("No Tax Please");
			ittax=0;					
			//////System.out.println("Income Tax"+ittax);
			}
			else
			if((bpy>f2i)&&(bpy<f2e))
			{ittax=(bpy*f2p)/100;
			//////System.out.println("Income Tax is"+ittax);
			//////System.out.println("Your Tax will pay 10% of your Salary");
			}
			else if((bpy>f3i)&&(bpy<f3e))
			{
			ittax=(bpy*f3p)/100;
			//////System.out.println("Income Tax is"+ittax);
			//////System.out.println("Your Tax will pay 20% of your Salary");
			}
			else
			{
			ittax=(bpy*f4p)/100;
			//////System.out.println("Income Tax is"+ittax);
			//////System.out.println("Your Tax will pay 30% of salary");
			}
			}
				double edu=(ittax*3)/100;
			//////System.out.println("child Education"+edu);
			ittax=edu+ittax;
			ittax=ittax/12;
			
					if(gettingLoanDetails(empid)==null){
						loan=0;
					}else{
						loan=Double.parseDouble(gettingLoanDetails(empid));			
					}
			
				double gross3=basic+hra+conv+sa+chedu+medical+da;
				//////System.out.println("Gross"+gross3);
				double ded=pf+pt+ittax+loan;
				//////System.out.println("Total Deduction"+ded);
				double net3=0.0;
				net3=gross3-ded;
				//////System.out.println("Before Cutting"+net3);
				double daysal=0.0;
				daysal=net3/30;
				//////System.out.println("Day Salary"+daysal);
				//////System.out.println("No of Leaves"+noofleaves);
				if(noofleaves>0)
				{
				daysal=daysal*noofleaves;
				//////System.out.println("DAy salary"+daysal);
				}
				else
				{
				//////System.out.println("You have no leaves");
					daysal=0.0;
				}

				//////System.out.println("Net3 :"+net3);
				double net4=net3-daysal;
				//////System.out.println("Final Salary"+net4);
				
				
				
				finalpaysliplist.add(basic);
				finalpaysliplist.add(hra);
				finalpaysliplist.add(conv);
				finalpaysliplist.add(da);
				finalpaysliplist.add(pf);
				finalpaysliplist.add(gratuty);
				finalpaysliplist.add(sa);
				finalpaysliplist.add(gross);
				finalpaysliplist.add(ittax);
				finalpaysliplist.add(ded);
				finalpaysliplist.add(net4);
				/*finalpaysliplist.add();*/
				//////System.out.println("Fianl PaySlip List\t"+finalpaysliplist);
		}catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		
		
		
		return finalpaysliplist;
		
	}
	
	
	
}
