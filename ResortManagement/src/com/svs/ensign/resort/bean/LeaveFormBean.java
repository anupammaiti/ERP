package com.svs.ensign.resort.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tl_hr_leaveform")
public class LeaveFormBean {

    @Id
    @GeneratedValue
    @Column(name = "sno")
    private long sno;
    @Column(name = "empid")
    private String empid;
    @Column(name = "empname")
    private String empname;
    @Column(name = "designation")
    private String designation;
    @Column(name = "fromdate")
    private String fromdate;
    @Column(name = "todate")
    private String todate;
    @Column(name = "cl")
    private String cl;
    @Column(name = "sl")
    private String sl;
    @Column(name = "pl")
    private String pl;
    @Column(name = "lop")
    private String lop;
    @Column(name = "totalleaves")
    private String totalleaves;
    @Column(name = "noofleaves")
    private String noofleaves;
    @Column(name = "remainingleaves")
    private String remainingleaves;
    @Column(name = "lop1")
    private String lop1;
    @Column(name = "totalcl")
    private String totalcl;
    @Column(name = "totalsl")
    private String totalsl;
    @Column(name = "totalpl")
    private String totalpl;
    @Column(name = "grandleave")
    private String grandleave;
    @Column(name = "leavetype")
    private String leavetype;
    @Column(name = "bcl")
    private String bcl;
    @Column(name = "bsl")
    private String bsl;
    @Column(name = "bpl")
    private String bpl;
    @Column(name = "tcl")
    private String tcl;
    @Column(name = "tsl")
    private String tsl;
    @Column(name = "tpl")
    private String tpl;
    @Column(name = "companyname")
    private String companyname;
    @Column(name = "manager")
    private String manager;
    @Column(name = "deltby")
    private String deltby;
    @Column(name = "status")
    private String status;
    @Column(name = "oddhours")
    private String oddhours;
    @Column(name = "sess")
    private String sess;
    private String noofdays;
 
    public String getNoofdays() {
        return noofdays;
    }

    public void setNoofdays(String noofdays) {
        this.noofdays = noofdays;
    }
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

    public String getEmpname() {
        return empname;
    }

    public void setEmpname(String empname) {
        this.empname = empname;
    }

    public String getFromdate() {
        return fromdate;
    }

    public void setFromdate(String fromdate) {
        this.fromdate = fromdate;
    }

    public String getTodate() {
        return todate;
    }

    public void setTodate(String todate) {
        this.todate = todate;
    }

    public String getCl() {
        return cl;
    }

    public void setCl(String cl) {
        this.cl = cl;
    }

    public String getSl() {
        return sl;
    }

    public void setSl(String sl) {
        this.sl = sl;
    }

    public String getPl() {
        return pl;
    }

    public void setPl(String pl) {
        this.pl = pl;
    }

    public String getLop() {
        return lop;
    }

    public void setLop(String lop) {
        this.lop = lop;
    }

    public String getTotalleaves() {
        return totalleaves;
    }

    public void setTotalleaves(String totalleaves) {
        this.totalleaves = totalleaves;
    }

    public String getNoofleaves() {
        return noofleaves;
    }

    public void setNoofleaves(String noofleaves) {
        this.noofleaves = noofleaves;
    }

    public String getRemainingleaves() {
        return remainingleaves;
    }

    public void setRemainingleaves(String remainingleaves) {
        this.remainingleaves = remainingleaves;
    }

    public String getLop1() {
        return lop1;
    }

    public void setLop1(String lop1) {
        this.lop1 = lop1;
    }

    public String getTotalcl() {
        return totalcl;
    }

    public void setTotalcl(String totalcl) {
        this.totalcl = totalcl;
    }

    public String getTotalsl() {
        return totalsl;
    }

    public void setTotalsl(String totalsl) {
        this.totalsl = totalsl;
    }

    public String getTotalpl() {
        return totalpl;
    }

    public void setTotalpl(String totalpl) {
        this.totalpl = totalpl;
    }

    public String getGrandleave() {
        return grandleave;
    }

    public void setGrandleave(String grandleave) {
        this.grandleave = grandleave;
    }

    public String getLeavetype() {
        return leavetype;
    }

    public void setLeavetype(String leavetype) {
        this.leavetype = leavetype;
    }

    public String getBcl() {
        return bcl;
    }

    public void setBcl(String bcl) {
        this.bcl = bcl;
    }

    public String getBsl() {
        return bsl;
    }

    public void setBsl(String bsl) {
        this.bsl = bsl;
    }

    public String getBpl() {
        return bpl;
    }

    public void setBpl(String bpl) {
        this.bpl = bpl;
    }

    public String getTcl() {
        return tcl;
    }

    public void setTcl(String tcl) {
        this.tcl = tcl;
    }

    public String getTsl() {
        return tsl;
    }

    public void setTsl(String tsl) {
        this.tsl = tsl;
    }

    public String getTpl() {
        return tpl;
    }

    public void setTpl(String tpl) {
        this.tpl = tpl;
    }

    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname;
    }

    public String getManager() {
        return manager;
    }

    public void setManager(String manager) {
        this.manager = manager;
    }

    public String getDeltby() {
        return deltby;
    }

    public void setDeltby(String deltby) {
        this.deltby = deltby;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getOddhours() {
        return oddhours;
    }

    public void setOddhours(String oddhours) {
        this.oddhours = oddhours;
    }

    public String getSess() {
        return sess;
    }

    public void setSess(String sess) {
        this.sess = sess;
    }

}
