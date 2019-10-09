package com.erp.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="temppayslip")
public class TempPaySlipBean {

	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="empid")
	private String empid;
	@Column(name="empname")
	private String empname;
	@Column(name="bankaccount")
	private double bankaccount;
	@Column(name="pfno")
	private double pfno;
	@Column(name="department")
	private String deprtment;
	@Column(name="pannumber")
	private String pannumber;
	@Column(name="designation")
	private String designation;
	@Column(name="paiddays")
	private int paiddays;
	@Column(name="basic")
	private double basic;
	@Column(name="hra")
	private double hra;
	@Column(name="pf")
	private double pf;
	@Column(name="conv")
	private double conv;
	@Column(name="da")
	private double da;
	@Column(name="gratuty")
	private double gratuty;
	@Column(name="sa")
	private double sa;
	@Column(name="monthly")
	private double monthly;
	@Column(name="yearly")
	private double yearly;
	@Column(name="overallsal")
	private double overallsal;
	@Column(name="losspay")
	private double losspay;
	@Column(name="lic")
	private double lic;
	@Column(name="insurence")
	private double insurence;
	@Column(name="medical")
	private double medical;
	@Column(name="schoolfee")
	private double schoolfee;
	@Column(name="childeducation")
	private double childeducation;
	@Column(name="specialallogation")
	private double speicalallogation;
	@Column(name="otherded")
	private double otherded;
	@Column(name="incometax")
	private double incometax;
	@Column(name="grass")
	private double grass;
	@Column(name="totalded")
	private String totalded;
	@Column(name="netammount")
	private double netamount;
	@Column(name="payment")
	private double payment;
	@Column(name="pt")
	private String pt;
	@Column(name="gendate")
	private String gendate;
	
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getEmpid() {
		return empid;
	}
	public void setEmpid(String empid) {
		this.empid = empid;
	}
	public double getBankaccount() {
		return bankaccount;
	}
	public void setBankaccount(double bankaccount) {
		this.bankaccount = bankaccount;
	}
	public double getPfno() {
		return pfno;
	}
	public void setPfno(double pfno) {
		this.pfno = pfno;
	}
	public String getDeprtment() {
		return deprtment;
	}
	public void setDeprtment(String deprtment) {
		this.deprtment = deprtment;
	}
	public String getPannumber() {
		return pannumber;
	}
	public void setPannumber(String pannumber) {
		this.pannumber = pannumber;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public int getPaiddays() {
		return paiddays;
	}
	public void setPaiddays(int paiddays) {
		this.paiddays = paiddays;
	}
	public double getBasic() {
		return basic;
	}
	public void setBasic(double basic) {
		this.basic = basic;
	}
	public double getHra() {
		return hra;
	}
	public void setHra(double hra) {
		this.hra = hra;
	}
	public double getPf() {
		return pf;
	}
	public void setPf(double pf) {
		this.pf = pf;
	}
	public double getConv() {
		return conv;
	}
	public void setConv(double conv) {
		this.conv = conv;
	}
	public double getDa() {
		return da;
	}
	public void setDa(double da) {
		this.da = da;
	}
	public double getGratuty() {
		return gratuty;
	}
	public void setGratuty(double gratuty) {
		this.gratuty = gratuty;
	}
	public double getSa() {
		return sa;
	}
	public void setSa(double sa) {
		this.sa = sa;
	}
	public double getMonthly() {
		return monthly;
	}
	public void setMonthly(double monthly) {
		this.monthly = monthly;
	}
	public double getYearly() {
		return yearly;
	}
	public void setYearly(double yearly) {
		this.yearly = yearly;
	}
	public double getOverallsal() {
		return overallsal;
	}
	public void setOverallsal(double overallsal) {
		this.overallsal = overallsal;
	}
	public double getLosspay() {
		return losspay;
	}
	public void setLosspay(double losspay) {
		this.losspay = losspay;
	}
	public double getLic() {
		return lic;
	}
	public void setLic(double lic) {
		this.lic = lic;
	}
	public double getInsurence() {
		return insurence;
	}
	public void setInsurence(double insurence) {
		this.insurence = insurence;
	}
	public double getMedical() {
		return medical;
	}
	public void setMedical(double medical) {
		this.medical = medical;
	}
	public double getSchoolfee() {
		return schoolfee;
	}
	public void setSchoolfee(double schoolfee) {
		this.schoolfee = schoolfee;
	}
	public double getChildeducation() {
		return childeducation;
	}
	public void setChildeducation(double childeducation) {
		this.childeducation = childeducation;
	}
	public double getSpeicalallogation() {
		return speicalallogation;
	}
	public void setSpeicalallogation(double speicalallogation) {
		this.speicalallogation = speicalallogation;
	}
	public double getOtherded() {
		return otherded;
	}
	public void setOtherded(double otherded) {
		this.otherded = otherded;
	}
	public double getIncometax() {
		return incometax;
	}
	public void setIncometax(double incometax) {
		this.incometax = incometax;
	}
	public double getGrass() {
		return grass;
	}
	public void setGrass(double grass) {
		this.grass = grass;
	}
	public double getNetamount() {
		return netamount;
	}
	public void setNetamount(double netamount) {
		this.netamount = netamount;
	}
	public double getPayment() {
		return payment;
	}
	public void setPayment(double payment) {
		this.payment = payment;
	}
	public String getEmpname() {
		return empname;
	}
	public void setEmpname(String empname) {
		this.empname = empname;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	public String getPt() {
		return pt;
	}
	public void setPt(String pt) {
		this.pt = pt;
	}
	public String getTotalded() {
		return totalded;
	}
	public void setTotalded(String totalded) {
		this.totalded = totalded;
	}

	
	

}
