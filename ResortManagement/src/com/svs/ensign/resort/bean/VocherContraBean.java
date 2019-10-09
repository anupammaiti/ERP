package com.svs.ensign.resort.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_fn_vochercontra")
public class VocherContraBean {
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="reciptno")
	private String reciptno;
	@Column(name="date")
	private String date;
	@Column(name="under")
	private String under;
	@Column(name="currentbalance")
	private String currentbalance;
	@Column(name="particular")
	private String particular;
	@Column(name="account")
	private String account;
	@Column(name="currentbalance1")
	private String currentbalance1;
	@Column(name="ammount")
	private String ammount;
	@Column(name="narration")
	private String narration;
	@Column(name="gendate")
	private String gendate;
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getReciptno() {
		return reciptno;
	}
	public void setReciptno(String reciptno) {
		this.reciptno = reciptno;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getUnder() {
		return under;
	}
	public void setUnder(String under) {
		this.under = under;
	}
	public String getCurrentbalance() {
		return currentbalance;
	}
	public void setCurrentbalance(String currentbalance) {
		this.currentbalance = currentbalance;
	}
	public String getParticular() {
		return particular;
	}
	public void setParticular(String particular) {
		this.particular = particular;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getNarration() {
		return narration;
	}
	public void setNarration(String narration) {
		this.narration = narration;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	public String getAmmount() {
		return ammount;
	}
	public void setAmmount(String ammount) {
		this.ammount = ammount;
	}
	public String getCurrentbalance1() {
		return currentbalance1;
	}
	public void setCurrentbalance1(String currentbalance1) {
		this.currentbalance1 = currentbalance1;
	}
	
	
}
