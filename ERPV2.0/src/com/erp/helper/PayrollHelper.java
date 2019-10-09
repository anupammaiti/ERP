package com.erp.helper;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.erp.finance.bean.TempPaySlipBean;
import com.erp.finance.dao.CompanyPaySlipDAO;
import com.erp.finance.dao.TempPaySlipDAO;
import com.erp.util.DBConnection;
import com.erp.util.DateUtil;

public class PayrollHelper {

	@Autowired
	CompanyPaySlipDAO companypayslipdao;
	@Autowired
	DBConnection dbconnection;
	
	
	@Autowired
	TempPaySlipDAO temppayslipdao;
	@Autowired
	DateUtil dateutil;
	
	TempPaySlipBean payslipbean=new TempPaySlipBean();

	
	List payslip;
	double grossin=0.0;
	double sal2=0.00;
	double orsal=0;
	double ctc=0.00;
	double basic=0.00;
	double hra=0.00;
	double pf=0.00;
	double LTA=0.00;
	double conv=0.00;
	double medical=0.00;
	double bonus=0.00;
	double sa=0.00;
	double gratuty=0.00;
	double montlyctc=0.00;
	double yearly=0.00;
	double salary=0.00;
	double anualctc=0.00;
	double da=0.00;
	double m1i=0.00;
	double m1e=0.00;
	double m1p=0.00;
	double m2i=0.00;
	double m2e=0.00;
	double m2p=0.00;
	double m3i=0.00;
	double m3e=0.00;
	double m3p=0.00;
	double m4i=0.00;
	double m4e=0.00;
	double m4p=0.00;
	double f1i=0.00;
	double f1e=0.00;
	double f1p=0.00;
	double f2i=0.00;
	double f2e=0.00;
	double f2p=0.00;
	double f3i=0.00;
	double f3e=0.00;
	double f3p=0.00;
	double f4i=0.00;
	double f4e=0.00;
	double f4p=0.00;
	double via1=0.0;
	double noofleaves=0.0;
	double ded=0.0;
	
	
	double bpy=0.00;
	double ittax=0.00;
	double it3=0.00;
	String[] payslipdetails=new String[40];//String array
	String presentsalary=null;
		
	
	Connection con,con1;//Database Connection
	PreparedStatement pr,pr1;//PreparedStatement
	ResultSet rs,rs1;//Result Set
	
	/**
	 * @param empno it will take empno and generate Payslip.
	 * @return Generate PaySlip and send to DAO.
	 */
	public void generatePaySlip(String empno) {
		
		System.out.println("Employee ID "+empno);
		try {
			con1=dbconnection.getDBConnection();
			pr1=con1.prepareStatement("select * from employee where empno=?");
			pr1.setString(1, empno);
			rs1=pr1.executeQuery();
			while(rs1.next()) {
				
				payslipbean.setEmpid(rs1.getString(2));
				payslipbean.setBankaccount(Double.parseDouble(rs1.getString(31)));
				payslipbean.setPfno(Double.parseDouble(rs1.getString(32)));
				presentsalary=rs1.getString(28);
				payslipbean.setEmpname(rs1.getString(3));
				payslipbean.setDeprtment(rs1.getString(10));
				payslipbean.setPannumber(rs1.getString(20));
				payslipbean.setDesignation(rs1.getString(9));
				
			}
		}catch(Exception e) {
		e.printStackTrace();	
		}
		
		try
		{
			con=dbconnection.getDBConnection();
			pr=con.prepareStatement("select * from companypayslip");
			rs=pr.executeQuery();
			while(rs.next()){
				basic=Double.parseDouble(rs.getString(3));
				conv=Double.parseDouble(rs.getString(4));
				hra=Double.parseDouble(rs.getString(5));
				pf=Double.parseDouble(rs.getString(6));
				//gratuty=Double.parseDouble(rs.getString(7));
				da=Double.parseDouble(rs.getString(8));
				
				}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		System.out.println("**************************************\n");
		System.out.println("Basic"+basic);
		System.out.println("conv"+conv);
		System.out.println("Hra"+hra);
		System.out.println("Pf"+pf);
		System.out.println("da"+da);
		System.out.println("**************************************\n");
		
		//Yearly CTC
		
		System.out.println("Calculation Started"+presentsalary);
		ctc=Double.parseDouble(presentsalary);
		System.out.println("Ctc"+ctc);
		
		//Calculation Start
		
		basic=Math.round(((ctc*basic)/100)/12);
		System.out.println("Basic"+basic);


		//PF

		pf=(basic*pf)/100;
		System.out.println("Provident Fund"+pf);
		
		//Da
		da=(basic*da)/100;
		System.out.println("Da is"+da);
		//Hra
		hra=(basic*hra)/100;
		System.out.println("hra is"+hra);

		//gratuty
		gratuty=(basic*gratuty)/100;
		System.out.println("gratuty"+gratuty);

	
//Special Allowance
		sa=(ctc/12)-(basic+hra+pf+conv+medical+bonus+gratuty);
		sa=Math.round(sa);
		System.out.println("Special Aliance"+sa);

//		Monthly Salary
		montlyctc=basic+hra+pf+LTA+conv+medical+bonus+gratuty+sa;
		montlyctc=Math.round(montlyctc);
		System.out.println("Monthly CTC"+montlyctc);


//		Yearly Salary						
		salary=montlyctc/30;/*leave salries*/
		System.out.println("Salary is"+salary);

	
//		Loass of pay
		orsal=noofleaves*salary;
		System.out.println("Salary to be cut "+orsal);
		sal2=montlyctc-orsal;
		System.out.println("Final Salary"+sal2);
		System.out.println("Salary To be cutted"+Math.round(orsal));


//		yearly salary
		yearly=sal2*12;
		yearly=Math.round(yearly);
		System.out.println("Yearly Income"+yearly);
		
		/*
		 * 
		 * 	
	
		
	
	 via1=lic+insurance+schoolfee;
	 	 System.out.println("via1 is :"+via1);

	 double actualhra=0.0;
	 actualhra=hra*12;
	 double taxablehra=actualhra+(con3*12);
	 
	 System.out.println("Taxable Hra is :"+taxablehra);
     grossin=basic3+hra3+con3+sa3+chedu+medical+da3;
	 grossin=grossin*12;

	double totaltaxableincome=grossin-(taxablehra-via1);
    System.out.println("totaltaxableincome"+totaltaxableincome);
					

    if(totaltaxableincome>m1e)
	{
	totaltaxableincome=totaltaxableincome-m1e;
	System.out.println("Total Taxable Income"+totaltaxableincome);
	}
	else
	{
	totaltaxableincome=totaltaxableincome;
	System.out.println("Income tax is less than the the amount"+totaltaxableincome);
	}
		System.out.println("After cutting Incometax is "+totaltaxableincome);


					//Income Tax Calculations Starts Here
						bpy=totaltaxableincome;
							
					
						System.out.println("basic salary per year"+bpy);
						if(gender=="Male")
						{
					if((bpy>m1i)&&(bpy<m1e))
					{
					System.out.println("No Tax Please");
					ittax=0;					
					System.out.println("Income Tax"+ittax);
					}
					else
					if((bpy>m2i)&&(bpy<m2e))
					{ittax=(bpy*m2p)/100;
					System.out.println("Income Tax is"+ittax);
					System.out.println("Your Tax will pay 10% of your Salary");
					}
					else if((bpy>m3i)&&(bpy<m3e))
					{
					ittax=(bpy*m3p)/100;
					System.out.println("Income Tax is"+ittax);
					System.out.println("Your Tax will pay 20% of your Salary");
					}
					else
					{
					ittax=(bpy*m4p)/100;
					System.out.println("Income Tax is"+ittax);
					System.out.println("Your Tax will pay 30% of salary");
					}
					}

					//Female Income Tax Calculations
					else
					{
					if((bpy>f1i)&&(bpy<f1e))
					{
					System.out.println("No Tax Please");
					ittax=0;					
					System.out.println("Income Tax"+ittax);
					}
					else
					if((bpy>f2i)&&(bpy<f2e))
					{ittax=(bpy*f2p)/100;
					System.out.println("Income Tax is"+ittax);
					System.out.println("Your Tax will pay 10% of your Salary");
					}
					else if((bpy>f3i)&&(bpy<f3e))
					{
					ittax=(bpy*f3p)/100;
					System.out.println("Income Tax is"+ittax);
					System.out.println("Your Tax will pay 20% of your Salary");
					}
					else
					{
					ittax=(bpy*f4p)/100;
					System.out.println("Income Tax is"+ittax);
					System.out.println("Your Tax will pay 30% of salary");
					}
					System.out.println("Test1");
					double edu=(ittax*3)/100;
					System.out.println("child Education"+edu);
					ittax=edu+ittax;
					ittax=ittax/12;
							
							//Gross Salary  
							
								double gross3=basic3+hra3+con3+sa3+chedu+medical+da3;
								System.out.println(gross3);
								double ded3=pf3+pt3+ittax;
								System.out.println(ded3);
								double net3=0.0;
								net3=gross3-ded3;
								System.out.println("Before Cutting"+net3);
								double daysal=0.0;
								daysal=net3/30;
								System.out.println("Day Salary"+daysal);
								System.out.println("No of Leaves"+noofleaves);
								if(noofleaves>0)
								{
								daysal=daysal*noofleaves;
								System.out.println("DAy salary"+daysal);
								}
								else
								{
								System.out.println("You have no leaves");
									daysal=0.0;
								}

								System.out.println("Net3 :"+net3);
								double net4=net3-daysal;
								System.out.println("Final Salary"+net4);


	 * */
			payslipbean.setMonthly(montlyctc);
			payslipbean.setYearly(yearly);
			payslipbean.setBasic(basic);
			payslipbean.setHra(hra);
			payslipbean.setDa(da);
			payslipbean.setSa(sa);
			payslipbean.setPf(pf);
			payslipbean.setIncometax(ittax);
			payslipbean.setOtherded(ded);
			payslipbean.setGendate(dateutil.generateDate());
			temppayslipdao.generateTempPaySlip(payslipbean);
	
	}
	
}
