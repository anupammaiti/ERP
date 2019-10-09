package com.svs.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="tl_fn_taxdetails")
public class VatAndTaxBean {
	
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="vat")
	private String vat;
	@Column(name="tax")
	private String tax;
	@Column(name="eduservicetax")
	private String eduservicetax;
	@Column(name="companyname")
	private String companyname;
	@Column(name="gendate")
	private String gendate;
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getVat() {
		return vat;
	}
	public void setVat(String vat) {
		this.vat = vat;
	}
	public String getTax() {
		return tax;
	}
	public void setTax(String tax) {
		this.tax = tax;
	}
	public String getEduservicetax() {
		return eduservicetax;
	}
	public void setEduservicetax(String eduservicetax) {
		this.eduservicetax = eduservicetax;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}

	
}
