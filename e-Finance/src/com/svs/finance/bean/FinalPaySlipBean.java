package com.svs.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="tl_finalpayslip")
public class FinalPaySlipBean {
@Id
@GeneratedValue
@Column(name="sno")
private long sno;
@Column(name="empid")
private String empid;
@Column(name="bankaccount")
private String bankaccount;
@Column(name="pfno")
private String pfno;
@Column(name="empname")
private String  empname;
@Column(name="dept")
private String dept;
@Column(name="pan")
private String pan;
@Column(name="desig")
private String desig;
@Column(name="paiddays")
private String paiddays;
@Column(name="basic")
private String basic;
@Column(name="hra")
private String hra;
@Column(name="conv")
private String conv;
@Column(name="da")
private String da;
@Column(name="sa")
private String sa;
@Column(name="medical")
private String medical;
@Column(name="childedu")
private String childedu;
@Column(name="gross")
private String gross;
@Column(name="pf")
private String pf;
@Column(name="pt")
private String pt;
@Column(name="ittax")
private String ittax;
@Column(name="loan")
private String loan;
@Column(name="otherded")
private String otherded;
@Column(name="totalnet")
private String totalnet;
@Column(name="payment")
private String payment;
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
public String getBankaccount() {
	return bankaccount;
}
public void setBankaccount(String bankaccount) {
	this.bankaccount = bankaccount;
}
public String getPfno() {
	return pfno;
}
public void setPfno(String pfno) {
	this.pfno = pfno;
}
public String getEmpname() {
	return empname;
}
public void setEmpname(String empname) {
	this.empname = empname;
}
public String getDept() {
	return dept;
}
public void setDept(String dept) {
	this.dept = dept;
}
public String getPan() {
	return pan;
}
public void setPan(String pan) {
	this.pan = pan;
}
public String getDesig() {
	return desig;
}
public void setDesig(String desig) {
	this.desig = desig;
}
public String getPaiddays() {
	return paiddays;
}
public void setPaiddays(String paiddays) {
	this.paiddays = paiddays;
}
public String getBasic() {
	return basic;
}
public void setBasic(String basic) {
	this.basic = basic;
}
public String getHra() {
	return hra;
}
public void setHra(String hra) {
	this.hra = hra;
}
public String getConv() {
	return conv;
}
public void setConv(String conv) {
	this.conv = conv;
}
public String getDa() {
	return da;
}
public void setDa(String da) {
	this.da = da;
}
public String getSa() {
	return sa;
}
public void setSa(String sa) {
	this.sa = sa;
}
public String getMedical() {
	return medical;
}
public void setMedical(String medical) {
	this.medical = medical;
}
public String getChildedu() {
	return childedu;
}
public void setChildedu(String childedu) {
	this.childedu = childedu;
}
public String getGross() {
	return gross;
}
public void setGross(String gross) {
	this.gross = gross;
}
public String getPf() {
	return pf;
}
public void setPf(String pf) {
	this.pf = pf;
}
public String getPt() {
	return pt;
}
public void setPt(String pt) {
	this.pt = pt;
}
public String getIttax() {
	return ittax;
}
public void setIttax(String ittax) {
	this.ittax = ittax;
}
public String getLoan() {
	return loan;
}
public void setLoan(String loan) {
	this.loan = loan;
}
public String getOtherded() {
	return otherded;
}
public void setOtherded(String otherded) {
	this.otherded = otherded;
}
public String getTotalnet() {
	return totalnet;
}
public void setTotalnet(String totalnet) {
	this.totalnet = totalnet;
}
public String getPayment() {
	return payment;
}
public void setPayment(String payment) {
	this.payment = payment;
}



}
