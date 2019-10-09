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
 * @author RAVI KIRAN
 */

@Entity
@Table(name="tl_hr_companypayslip")
public class CompanyPaySlip {
    @Id
    @GeneratedValue
    @Column(name="sno")
    private long sno;
    @Column(name="companyname")
    private String companyname;
    @Column(name="hra")
    private String hra;
    @Column(name="da")
    private String da;
    @Column(name="pf")
    private String pf;
    @Column(name="basic")
    private String basic;
    @Column(name="pay1i")
    private String pay1i;
    @Column(name="pay1m")
    private String pay1m;
    @Column(name="pay1p")
    private String pay1p;
    @Column(name="pay2i")
    private String pay2i;
    @Column(name="pay2m")
    private String pay2m;
    @Column(name="pay2p")
    private String pay2p;
    @Column(name="pay3i")
    private String pay3i;
    @Column(name="pay3m")
    private String pay3m;
    @Column(name="pay3p")
    private String pay3p;
    @Column(name="payf1i")
    private String payf1i;
    @Column(name="poayf1m")
    private String payf1m;
    @Column(name="payf1p")
    private String payf1p;
    @Column(name="payf2i")
    private String payf2i;
    @Column(name="payf2m")
    private String payf2m;
    @Column(name="payf2p")
    private String payf2p;
    @Column(name="payf3i")
    private String payf3i;
    @Column(name="payf3m")
    private String payf3m;
    @Column(name="payf3p")
    private String payf3p;

    public long getSno() {
        return sno;
    }

    public void setSno(long sno) {
        this.sno = sno;
    }

    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname;
    }

    public String getHra() {
        return hra;
    }

    public void setHra(String hra) {
        this.hra = hra;
    }

    public String getDa() {
        return da;
    }

    public void setDa(String da) {
        this.da = da;
    }

    public String getPf() {
        return pf;
    }

    public void setPf(String pf) {
        this.pf = pf;
    }

    public String getBasic() {
        return basic;
    }

    public void setBasic(String basic) {
        this.basic = basic;
    }

    public String getPay1i() {
        return pay1i;
    }

    public void setPay1i(String pay1i) {
        this.pay1i = pay1i;
    }

    public String getPay1m() {
        return pay1m;
    }

    public void setPay1m(String pay1m) {
        this.pay1m = pay1m;
    }

    public String getPay1p() {
        return pay1p;
    }

    public void setPay1p(String pay1p) {
        this.pay1p = pay1p;
    }

    public String getPay2i() {
        return pay2i;
    }

    public void setPay2i(String pay2i) {
        this.pay2i = pay2i;
    }

    public String getPay2m() {
        return pay2m;
    }

    public void setPay2m(String pay2m) {
        this.pay2m = pay2m;
    }

    public String getPay2p() {
        return pay2p;
    }

    public void setPay2p(String pay2p) {
        this.pay2p = pay2p;
    }

    public String getPay3i() {
        return pay3i;
    }

    public void setPay3i(String pay3i) {
        this.pay3i = pay3i;
    }

    public String getPay3m() {
        return pay3m;
    }

    public void setPay3m(String pay3m) {
        this.pay3m = pay3m;
    }

    public String getPay3p() {
        return pay3p;
    }

    public void setPay3p(String pay3p) {
        this.pay3p = pay3p;
    }

    public String getPayf1i() {
        return payf1i;
    }

    public void setPayf1i(String payf1i) {
        this.payf1i = payf1i;
    }

    public String getPayf1m() {
        return payf1m;
    }

    public void setPayf1m(String payf1m) {
        this.payf1m = payf1m;
    }

    public String getPayf1p() {
        return payf1p;
    }

    public void setPayf1p(String payf1p) {
        this.payf1p = payf1p;
    }

    public String getPayf2i() {
        return payf2i;
    }

    public void setPayf2i(String payf2i) {
        this.payf2i = payf2i;
    }

    public String getPayf2m() {
        return payf2m;
    }

    public void setPayf2m(String payf2m) {
        this.payf2m = payf2m;
    }

    public String getPayf2p() {
        return payf2p;
    }

    public void setPayf2p(String payf2p) {
        this.payf2p = payf2p;
    }

    public String getPayf3i() {
        return payf3i;
    }

    public void setPayf3i(String payf3i) {
        this.payf3i = payf3i;
    }

    public String getPayf3m() {
        return payf3m;
    }

    public void setPayf3m(String payf3m) {
        this.payf3m = payf3m;
    }

    public String getPayf3p() {
        return payf3p;
    }

    public void setPayf3p(String payf3p) {
        this.payf3p = payf3p;
    }

}
