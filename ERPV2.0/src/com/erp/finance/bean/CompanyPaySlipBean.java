package com.erp.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 * @author RaviKiran
 * , Sep 24, 2013
 */
@Entity
@Table(name="companypayslip")
public class CompanyPaySlipBean {
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="companyname")
	private String companyname;
	@Column(name="basic")
	private String basic;
	@Column(name="conv")
	private String conv;
	@Column(name="hra")
	private String hra;
	@Column(name="pf")
	private String pf;
	@Column(name="gratuaty")
	private String gratuaty;
	@Column(name="da")
	private String da;
	@Column(name="mis1")
	private String mis1;
	@Column(name="mie1")
	private String mie1;
	@Column(name="mip1")
	private String mip1;
	@Column(name="mis2")
	private String mis2;
	@Column(name="mie2")
	private String mie2;
	@Column(name="mip2")
	private String mip2;
	@Column(name="mis3")
	private String mis3;
	@Column(name="mie3")
	private String mie3;
	@Column(name="mip3")
	private String mip3;
	@Column(name="mis4")
	private String mis4;
	@Column(name="mie4")
	private String mie4;
	@Column(name="mip4")
	private String mip4;
	@Column(name="fis1")
	private String fis1;
	@Column(name="fie1")
	private String fie1;
	@Column(name="fip1")
	private String fip1;
	@Column(name="fis2")
	private String fis2;
	@Column(name="fie2")
	private String fie2;
	@Column(name="fip2")
	private String fip2;
	@Column(name="fis3")
	private String fis3;
	@Column(name="fie3")
	private String fie3;
	@Column(name="fip3")
	private String fip3;
	@Column(name="fis4")
	private String fis4;
	@Column(name="fie4")
	private String fie4;
	@Column(name="fip4")
	private String fip4;
	@Column(name="gendate")
	private String gendate;
	
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
	public String getBasic() {
		return basic;
	}
	public void setBasic(String basic) {
		this.basic = basic;
	}
	public String getConv() {
		return conv;
	}
	public void setConv(String conv) {
		this.conv = conv;
	}
	public String getHra() {
		return hra;
	}
	public void setHra(String hra) {
		this.hra = hra;
	}
	public String getPf() {
		return pf;
	}
	public void setPf(String pf) {
		this.pf = pf;
	}
	public String getGratuaty() {
		return gratuaty;
	}
	public void setGratuaty(String gratuaty) {
		this.gratuaty = gratuaty;
	}
	public String getDa() {
		return da;
	}
	public void setDa(String da) {
		this.da = da;
	}
	public String getMis1() {
		return mis1;
	}
	public void setMis1(String mis1) {
		this.mis1 = mis1;
	}
	public String getMie1() {
		return mie1;
	}
	public void setMie1(String mie1) {
		this.mie1 = mie1;
	}
	public String getMip1() {
		return mip1;
	}
	public void setMip1(String mip1) {
		this.mip1 = mip1;
	}
	public String getMis2() {
		return mis2;
	}
	public void setMis2(String mis2) {
		this.mis2 = mis2;
	}
	public String getMie2() {
		return mie2;
	}
	public void setMie2(String mie2) {
		this.mie2 = mie2;
	}
	public String getMip2() {
		return mip2;
	}
	public void setMip2(String mip2) {
		this.mip2 = mip2;
	}
	public String getMis3() {
		return mis3;
	}
	public void setMis3(String mis3) {
		this.mis3 = mis3;
	}
	public String getMie3() {
		return mie3;
	}
	public void setMie3(String mie3) {
		this.mie3 = mie3;
	}
	public String getMip3() {
		return mip3;
	}
	public void setMip3(String mip3) {
		this.mip3 = mip3;
	}
	public String getMis4() {
		return mis4;
	}
	public void setMis4(String mis4) {
		this.mis4 = mis4;
	}
	public String getMie4() {
		return mie4;
	}
	public void setMie4(String mie4) {
		this.mie4 = mie4;
	}
	public String getMip4() {
		return mip4;
	}
	public void setMip4(String mip4) {
		this.mip4 = mip4;
	}
	public String getFis1() {
		return fis1;
	}
	public void setFis1(String fis1) {
		this.fis1 = fis1;
	}
	public String getFie1() {
		return fie1;
	}
	public void setFie1(String fie1) {
		this.fie1 = fie1;
	}
	public String getFip1() {
		return fip1;
	}
	public void setFip1(String fip1) {
		this.fip1 = fip1;
	}
	public String getFis2() {
		return fis2;
	}
	public void setFis2(String fis2) {
		this.fis2 = fis2;
	}
	public String getFie2() {
		return fie2;
	}
	public void setFie2(String fie2) {
		this.fie2 = fie2;
	}
	public String getFip2() {
		return fip2;
	}
	public void setFip2(String fip2) {
		this.fip2 = fip2;
	}
	public String getFis3() {
		return fis3;
	}
	public void setFis3(String fis3) {
		this.fis3 = fis3;
	}
	public String getFie3() {
		return fie3;
	}
	public void setFie3(String fie3) {
		this.fie3 = fie3;
	}
	public String getFip3() {
		return fip3;
	}
	public void setFip3(String fip3) {
		this.fip3 = fip3;
	}
	public String getFis4() {
		return fis4;
	}
	public void setFis4(String fis4) {
		this.fis4 = fis4;
	}
	public String getFie4() {
		return fie4;
	}
	public void setFie4(String fie4) {
		this.fie4 = fie4;
	}
	public String getFip4() {
		return fip4;
	}
	public void setFip4(String fip4) {
		this.fip4 = fip4;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
  
}
