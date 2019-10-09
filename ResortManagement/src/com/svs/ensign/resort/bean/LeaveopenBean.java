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
 * Document : LeaveopenBean Created on : 3 Jul, 2016, 6:37:13 PM Author : RAVI
 * KIRAN
 *
 */
@Entity
@Table(name="tl_hr_leaveopen")
@SuppressWarnings("PersistenceUnitPresent")
public class LeaveopenBean {
    @Id
    @GeneratedValue
    @Column(name="sno")
    private long sno;
    @Column(name="empid")
    private String empid;
    @Column(name="empName")
    private String empName;
    @Column(name="clOpen" , nullable = false , columnDefinition = "9")
    private String clOpen;
    @Column(name="slOpen" ,  nullable = false, columnDefinition = "4.5")
    private String slOpen;
    @Column(name="plOpen" ,  nullable = false, columnDefinition ="13.5")
    private String plOpen;
    @Column(name="total")
    private String total;
    @Column(name="clbal")
    private String clbal;
    @Column(name="plbal")
    private String plbal;
    @Column(name="spl")
    private String spl;
    @Column(name="gendate")
    private String gendate;
    @Column(name="reportingTo")
    private String reportingTo;
    @Column(name="companyName")
    private String companyName;
    
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

    public String getEmpName() {
        return empName;
    }

    public void setEmpName(String empName) {
        this.empName = empName;
    }

    public String getClOpen() {
        return clOpen;
    }

    public void setClOpen(String clOpen) {
        this.clOpen = clOpen;
    }

    public String getSlOpen() {
        return slOpen;
    }

    public void setSlOpen(String slOpen) {
        this.slOpen = slOpen;
    }

    public String getPlOpen() {
        return plOpen;
    }

    public void setPlOpen(String plOpen) {
        this.plOpen = plOpen;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    public String getClbal() {
        return clbal;
    }

    public void setClbal(String clbal) {
        this.clbal = clbal;
    }

    public String getPlbal() {
        return plbal;
    }

    public void setPlbal(String plbal) {
        this.plbal = plbal;
    }

    public String getSpl() {
        return spl;
    }

    public void setSpl(String spl) {
        this.spl = spl;
    }

    public String getGendate() {
        return gendate;
    }

    public void setGendate(String gendate) {
        this.gendate = gendate;
    }

    public String getReportingTo() {
        return reportingTo;
    }

    public void setReportingTo(String reportingTo) {
        this.reportingTo = reportingTo;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

}
