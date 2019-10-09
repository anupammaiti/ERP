package com.svs.finance.helper;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;

import com.svs.finance.bean.CompanyPaySlipBean;
import com.svs.finance.bean.EmployeeBean;
import com.svs.finance.dao.IN_CompanyPaySlipDAO;
import com.svs.finance.dao.IN_EmployeeDAO;

public class C_CalculatingPaySlip {

	
private static final long serialVersionUID = 1L;
	private JSONObject paysliplist=new JSONObject();
	
	private ArrayList<Double> finalpaysliplist=new ArrayList<Double>();
	private List<CompanyPaySlipBean> paysliplist1;
	

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

	private String loanamount=null;
	private String empid=null;
	private double loan=0;

	@Autowired	IN_EmployeeDAO in_empdao;
	@Autowired IN_CompanyPaySlipDAO in_compdao;
	
	
	//private EmployeeInformationDAO employeeinfo=new EmployeeInformationDAO();
	//private List employeedetails=new ArrayList();
	
	
	//statuscheckDAO leavestatus=new statuscheckDAO();
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	public JSONObject getPaySlipData(long id,String comp){
		// TODO Auto-generated method stub
		EmployeeBean empb=new EmployeeBean();
		try{
		
			
			
			
			
			//////System.out.println("Employee Id\t"+empid);
			List<EmployeeBean> lst_emp=in_empdao.viewEmployeeById(id);
			for(EmployeeBean emp:lst_emp){
				/*System.out.println("Employee Name\t"+emp.getFirstname());
				System.out.println("Employuee LastName"+emp.getLastname());
				System.out.println("Employee Id"+emp.getEmpid());
				System.out.println("BankId\t"+emp.getBankac());
				System.out.println("PFNo\t"+emp.getPfno());
				System.out.println("Department\t"+emp.getDepartment());
				System.out.println("PanNumber\t"+emp.getPancard());
				System.out.println("Designation\t"+emp.getDesignation());*/
				empb.setSalary(emp.getSalary());
				empb.setCompanyname(emp.getCompanyname());
				paysliplist.put("Name", emp.getFirstname()+emp.getLastname());
				paysliplist.put("Empid", emp.getEmpid());
				paysliplist.put("bankac",emp.getBankac());
				paysliplist.put("pfno", emp.getPfno());
				paysliplist.put("dept",emp.getDepartment());
				paysliplist.put("panno", emp.getPancard());
				paysliplist.put("desig", emp.getDesignation());
			}
			
			finalpaysliplist=payslipCalculation(empb.getSalary() ,empb.getGender(),1,empb.getEmpid(),empb.getCompanyname());//Calculating the PaySlip and Display.
			Double ar[]=new Double[100];
			for(int i=0;i<finalpaysliplist.size();i++){
				ar[i]=finalpaysliplist.get(i);
			}
			
			
			paysliplist.put("basic",ar[0]);
			paysliplist.put("hra", ar[1]);
			paysliplist.put("da", ar[4]);
			paysliplist.put("sa", ar[7]);
			paysliplist.put("gs",ar[8]);
			/*System.out.println("Gross Salary\t"+ar[8]);*/
			paysliplist.put("pf",ar[5]);
			/*System.out.println("ITTax\t"+ar[9]);*/
			paysliplist.put("it",ar[9]);
			paysliplist.put("ded", ar[10]);
			paysliplist.put("netsalary", ar[11]);
			paysliplist.put("grat", ar[6]);
			paysliplist.put("conv",ar[3]);
			//paysliplist.put("loan", loanamount);
			
			
			
			
		}catch(Exception e){
		e.printStackTrace();
		}
		
		return paysliplist;
	}
		
	
	public ArrayList<Double> payslipCalculation(String yearlysalary,String gender,double noofleaves,String empid,String company){
		
		finalpaysliplist.clear();
		
		try{
			String companyname="SVSInfomatics";
			String[] payslip=new String[100];
			//////System.out.println("Employee ID\t"+empid);
			//paysliplist1=companypayslipdao.viewCompanyPaySlip(companyname);
			paysliplist1=in_compdao.viewCompanyPaySlipByCollegeName(company);
			for(CompanyPaySlipBean cmpb:paysliplist1){
				basic=Double.parseDouble(cmpb.getBasic());
				
				hra=Double.parseDouble(cmpb.getHra());
				da=Double.parseDouble(cmpb.getDa());
				pf=Double.parseDouble(cmpb.getPf());
				m1i=Double.parseDouble(cmpb.getTx1());
				m1e=Double.parseDouble(cmpb.getTx2());
				m1p=Double.parseDouble(cmpb.getTx3());
				m2i=Double.parseDouble(cmpb.getTx4());
				m2e=Double.parseDouble(cmpb.getTx5());
				m2p=Double.parseDouble(cmpb.getTx6());
				m3i=Double.parseDouble(cmpb.getTx7());
				m3e=Double.parseDouble(cmpb.getTx8());
				m3p=Double.parseDouble(cmpb.getTx9());
				m4i=Double.parseDouble(cmpb.getTx10());
				
				m4p=Double.parseDouble(cmpb.getTx12());
				f1i=Double.parseDouble(cmpb.getFtx1());
				f1e=Double.parseDouble(cmpb.getFtx2());
				f1p=Double.parseDouble(cmpb.getFtx3());
				f2i=Double.parseDouble(cmpb.getFtx4());
				f2e=Double.parseDouble(cmpb.getFtx5());
				f2p=Double.parseDouble(cmpb.getFtx6());
				f3i=Double.parseDouble(cmpb.getFtx7());
				f3e=Double.parseDouble(cmpb.getFtx8());
				f3p=Double.parseDouble(cmpb.getFtx9());
				f4i=Double.parseDouble(cmpb.getFtx10());
				
				f4p=Double.parseDouble(cmpb.getFtx12());
				
			}
			/*System.out.println("Basic\t"+basic);
			System.out.println("Yearly Salary\t"+yearlysalary);*/
					
			//Calculation Starts.
			//Yearly CTC.
			ctcyearly=Double.parseDouble(yearlysalary);
			//Monthly CTC.
			ctcmonthly=ctcyearly/12;
			//////System.out.println("CTC Monthly"+ctcmonthly);
			//basic.
			
			//HRA
			
			//da
			
			//////System.out.println("DA\t"+da);
			//pf
			
			//////System.out.println("PF %\t"+pf);
			
			
			
			//basic
			basic=Math.round(((ctcyearly*basic)/100)/12);
//		System.out.println("Basic"+basic);
			//conveyance
			
			//da
			da=(basic*da)/100;
//			System.out.println("DA is"+da);
			//pf
			pf=(basic*pf)/100;
//			System.out.println("Provident Fund"+pf);
			//hra
			hra=(basic*hra)/100;
//			System.out.println("hra is"+hra);
			//gratuty
			gratuty=(basic*gratuty)/100;
//			System.out.println("gratuty"+gratuty);
			//Special Allowance
			sa=ctcmonthly-(basic+hra+da+conv);
			sa=Math.round(sa);
//			System.out.println("Special Aliance"+sa);
			//Monthly Salary
			montlyctc=basic+hra+pf+LTA+conv+medical+bonus+gratuty+sa;
			montlyctc=Math.round(montlyctc);
//			System.out.println("Monthly CTC"+montlyctc);
			//Yearly Salary						
			salary=montlyctc/30;/*leave salries*/
//			System.out.println("Salary is"+salary);
			//Loass of pay
			orsal=noofleaves*salary;
//			System.out.println("Salary to be cut "+orsal);
			sal2=montlyctc-orsal;
//			System.out.println("Final Salary"+sal2);
//			System.out.println("Salary To be cutted"+Math.round(orsal));
			//yearly salary
			yearly=sal2*12;
			yearly=Math.round(yearly);
//			System.out.println("Yearly Income"+yearly);
	
			//Income Tax Calculations Starts Here
				bpy=basic*12;
//				System.out.println("basic salary per year"+bpy);
				
				
				 double schoolfee=chedu;
				 via1=lic+insurance+schoolfee;
//				 	 System.out.println("via1 is :"+via1);

				 double actualhra=0.0;
				 actualhra=hra*12;
				 double taxablehra=actualhra+(conv*12);
				 
//				 System.out.println("Taxable Hra is :"+taxablehra);
			     gross=basic+hra+conv+sa+chedu+medical+da;
				 /*gross=gross*12;*/

				double totaltaxableincome=gross-(taxablehra-via1);
//			    System.out.println("totaltaxableincome"+totaltaxableincome);
				
				
				
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
//			System.out.println("Income Tax is"+ittax);
//			System.out.println("Your Tax will pay 10% of your Salary");
			}
			else if((bpy>m3i)&&(bpy<m3e))
			{
			ittax=(bpy*m3p)/100;
//			System.out.println("Income Tax is"+ittax);
//			System.out.println("Your Tax will pay 20% of your Salary");
			}
			else
			{
			ittax=(bpy*m4p)/100;
//			System.out.println("Income Tax is"+ittax);
//			System.out.println("Your Tax will pay 30% of salary");
			}
			}

			//Female Income Tax Calculations
			else
			{
			if((bpy>f1i)&&(bpy<f1e))
			{
//			System.out.println("No Tax Please");
			ittax=0;					
//			System.out.println("Income Tax"+ittax);
			}
			else
			if((bpy>f2i)&&(bpy<f2e))
			{ittax=(bpy*f2p)/100;
//			System.out.println("Income Tax is"+ittax);
//			System.out.println("Your Tax will pay 10% of your Salary");
			}
			else if((bpy>f3i)&&(bpy<f3e))
			{
			ittax=(bpy*f3p)/100;
//			System.out.println("Income Tax is"+ittax);
//			System.out.println("Your Tax will pay 20% of your Salary");
			}
			else
			{
			ittax=(bpy*f4p)/100;
//			System.out.println("Income Tax is"+ittax);
//			System.out.println("Your Tax will pay 30% of salary");
			}
			}
				double edu=(ittax*3)/100;
//			System.out.println("child Education"+edu);
			ittax=edu+ittax;
			ittax=ittax/12;
			
					
			
				double gross3=basic+hra+conv+sa+chedu+medical+da;
//				System.out.println("Gross"+gross3);
				double ded=pf+pt+ittax+loan;
//				System.out.println("Total Deduction"+ded);
				double net3=0.0;
				net3=gross3-ded;
//				System.out.println("Before Cutting"+net3);
				double daysal=0.0;
				daysal=net3/30;
//				System.out.println("Day Salary"+daysal);
//				System.out.println("No of Leaves"+noofleaves);
				if(noofleaves>0)
				{
				daysal=daysal*noofleaves;
//				System.out.println("DAy salary"+daysal);
				}
				else
				{
//				System.out.println("You have no leaves");
					daysal=0.0;
				}

//				System.out.println("Net3 :"+net3);
				double net4=net3-daysal;
//				System.out.println("Final Salary"+net4);
				
				
				
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
				

		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		
		return finalpaysliplist;
		
	}
	
}
