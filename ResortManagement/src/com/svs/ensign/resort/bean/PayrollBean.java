/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.svs.ensign.resort.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author RAVIKIRAN
 */

@Entity
@Table(name="hr_tl_payroll")
public class PayrollBean {
    @Id
    @GeneratedValue
    @Column(name="sno")
    private long sno;
    @Column(name="empid")
    private String empid;
    @Column(name="bankacc")
    private String bankacc;
    @Column(name="pfac")
    private String pfac;
    @Column(name="empName")
    private String empName;
    @Column(name="Department")
    private String Department;
    @Column(name="panno")
    private String panno;
    @Column(name="designation")
    private String designation;
    @Column(name="paiddays")
    private String paiddays;
    @Column(name="basic")
    private String basic;
    @Column(name="pfvalue")
    private String pfvalue;
    @Column(name="hra")
    private String hra;
    @Column(name="vpf")
    private String vpf;
    @Column(name="conveyance")
    private String conveyance;
    @Column(name="pt")
    private String pt;
    @Column(name="specialallowance")
    private String specialallowance;
    @Column(name="IncomeTax")
    private String IncomeTax;
    @Column(name="childeducation")
    private String childeducation;
    @Column(name="corpusfund")
    private String corpusfund;
    @Column(name="hostelreimb")
    private String hostelreimb;
    @Column(name="advance")
    private String advance;
    @Column(name="miscpayment")
    private String miscpayment;
    @Column(name="miscreiv")
    private String miscreiv;
    @Column(name="grossalary")
    private String grossalary;
    @Column(name="totaldeductions")
    private String totaldeductions;
    @Column(name="netamount")
    private String netamount;
    @Column(name="paymentBy")
    private String paymentBy;
    @Column(name="generatedMonth")
    private String generatedMonth;

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

    public String getBankacc() {
        return bankacc;
    }

    public void setBankacc(String bankacc) {
        this.bankacc = bankacc;
    }

    public String getPfac() {
        return pfac;
    }

    public void setPfac(String pfac) {
        this.pfac = pfac;
    }

    public String getEmpName() {
        return empName;
    }

    public void setEmpName(String empName) {
        this.empName = empName;
    }

    public String getDepartment() {
        return Department;
    }

    public void setDepartment(String Department) {
        this.Department = Department;
    }

    public String getPanno() {
        return panno;
    }

    public void setPanno(String panno) {
        this.panno = panno;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
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

    public String getPfvalue() {
        return pfvalue;
    }

    public void setPfvalue(String pfvalue) {
        this.pfvalue = pfvalue;
    }

    public String getHra() {
        return hra;
    }

    public void setHra(String hra) {
        this.hra = hra;
    }

    public String getVpf() {
        return vpf;
    }

    public void setVpf(String vpf) {
        this.vpf = vpf;
    }

    public String getConveyance() {
        return conveyance;
    }

    public void setConveyance(String conveyance) {
        this.conveyance = conveyance;
    }

    public String getPt() {
        return pt;
    }

    public void setPt(String pt) {
        this.pt = pt;
    }

    public String getSpecialallowance() {
        return specialallowance;
    }

    public void setSpecialallowance(String specialallowance) {
        this.specialallowance = specialallowance;
    }

    public String getIncomeTax() {
        return IncomeTax;
    }

    public void setIncomeTax(String IncomeTax) {
        this.IncomeTax = IncomeTax;
    }

    public String getChildeducation() {
        return childeducation;
    }

    public void setChildeducation(String childeducation) {
        this.childeducation = childeducation;
    }

    public String getCorpusfund() {
        return corpusfund;
    }

    public void setCorpusfund(String corpusfund) {
        this.corpusfund = corpusfund;
    }

    public String getHostelreimb() {
        return hostelreimb;
    }

    public void setHostelreimb(String hostelreimb) {
        this.hostelreimb = hostelreimb;
    }

    public String getAdvance() {
        return advance;
    }

    public void setAdvance(String advance) {
        this.advance = advance;
    }

    public String getMiscpayment() {
        return miscpayment;
    }

    public void setMiscpayment(String miscpayment) {
        this.miscpayment = miscpayment;
    }

    public String getMiscreiv() {
        return miscreiv;
    }

    public void setMiscreiv(String miscreiv) {
        this.miscreiv = miscreiv;
    }

    public String getGrossalary() {
        return grossalary;
    }

    public void setGrossalary(String grossalary) {
        this.grossalary = grossalary;
    }

    public String getTotaldeductions() {
        return totaldeductions;
    }

    public void setTotaldeductions(String totaldeductions) {
        this.totaldeductions = totaldeductions;
    }

    public String getNetamount() {
        return netamount;
    }

    public void setNetamount(String netamount) {
        this.netamount = netamount;
    }

    public String getPaymentBy() {
        return paymentBy;
    }

    public void setPaymentBy(String paymentBy) {
        this.paymentBy = paymentBy;
    }

    public String getGeneratedMonth() {
        return generatedMonth;
    }

    public void setGeneratedMonth(String generatedMonth) {
        this.generatedMonth = generatedMonth;
    }
    
}
