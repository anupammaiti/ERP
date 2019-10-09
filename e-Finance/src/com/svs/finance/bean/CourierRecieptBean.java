package com.svs.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_courierReciept")
public class CourierRecieptBean {
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="recieptdate")
	private String recieptdate;
	@Column(name="formdtype")
	private String formtype;
	@Column(name="dcforeligibility")
	private String dcforeligibility;
	@Column(name="misleneous")
	private String misleneous;
	@Column(name="weightofcourier")
	private String weightofcourier;
	@Column(name="paymentmode")
	private String paymentmode;
	@Column(name="ccno")
	private String ccno;
	@Column(name="ccompany")
	private String ccompany;
	@Column(name="deltby")
	private String deltby;
	@Column(name="gendate")
	private String gendate;
	
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getRecieptdate() {
		return recieptdate;
	}
	public void setRecieptdate(String recieptdate) {
		this.recieptdate = recieptdate;
	}
	public String getFormtype() {
		return formtype;
	}
	public void setFormtype(String formtype) {
		this.formtype = formtype;
	}
	public String getDcforeligibility() {
		return dcforeligibility;
	}
	public void setDcforeligibility(String dcforeligibility) {
		this.dcforeligibility = dcforeligibility;
	}
	public String getMisleneous() {
		return misleneous;
	}
	public void setMisleneous(String misleneous) {
		this.misleneous = misleneous;
	}
	public String getWeightofcourier() {
		return weightofcourier;
	}
	public void setWeightofcourier(String weightofcourier) {
		this.weightofcourier = weightofcourier;
	}
	public String getPaymentmode() {
		return paymentmode;
	}
	public void setPaymentmode(String paymentmode) {
		this.paymentmode = paymentmode;
	}
	public String getCcno() {
		return ccno;
	}
	public void setCcno(String ccno) {
		this.ccno = ccno;
	}
	public String getCcompany() {
		return ccompany;
	}
	public void setCcompany(String ccompany) {
		this.ccompany = ccompany;
	}
	public String getDeltby() {
		return deltby;
	}
	public void setDeltby(String deltby) {
		this.deltby = deltby;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}

}
