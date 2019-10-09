package com.svs.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_courierDispath")
public class CourierDispatchDetailsBean {

	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="dispatchdocument")
	private String dispatchdocument;
	@Column(name="prospectus")
	private String prospectus;
	@Column(name="noteligible")
	private String noteligible;
	@Column(name="mislenious")
	private String mislenious;
	@Column(name="paymentmode")
	private String paymentmode;
	@Column(name="displatchmode")
	private String displatchmode;
	@Column(name="byhand")
	private String byhand;
	@Column(name="entrydate")
	private String entrydate;
	@Column(name="gendate")
	private String gendate;
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getDispatchdocument() {
		return dispatchdocument;
	}
	public void setDispatchdocument(String dispatchdocument) {
		this.dispatchdocument = dispatchdocument;
	}
	public String getProspectus() {
		return prospectus;
	}
	public void setProspectus(String prospectus) {
		this.prospectus = prospectus;
	}
	public String getNoteligible() {
		return noteligible;
	}
	public void setNoteligible(String noteligible) {
		this.noteligible = noteligible;
	}
	public String getMislenious() {
		return mislenious;
	}
	public void setMislenious(String mislenious) {
		this.mislenious = mislenious;
	}
	public String getPaymentmode() {
		return paymentmode;
	}
	public void setPaymentmode(String paymentmode) {
		this.paymentmode = paymentmode;
	}
	public String getDisplatchmode() {
		return displatchmode;
	}
	public void setDisplatchmode(String displatchmode) {
		this.displatchmode = displatchmode;
	}
	public String getByhand() {
		return byhand;
	}
	public void setByhand(String byhand) {
		this.byhand = byhand;
	}
	public String getEntrydate() {
		return entrydate;
	}
	public void setEntrydate(String entrydate) {
		this.entrydate = entrydate;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	
}
