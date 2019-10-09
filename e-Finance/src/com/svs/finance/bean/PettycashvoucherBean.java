package com.svs.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_fn_pettycashvoucher")
public class PettycashvoucherBean {
	
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="sno1")
	private String sno1;
	@Column(name="account1")
	private String account1;
	@Column(name="description1")
	private String description1;
	@Column(name="amount1")
	private String amount1;
	@Column(name="gendate")
	private String gendate;
	
	@Column(name="sno2")
	private String sno2;
	@Column(name="account2")
	private String account2;
	@Column(name="description2")
	private String description2;
	@Column(name="amount2")
	private String amount2;
	
	@Column(name="sno3")
	private String sno3;
	@Column(name="account3")
	private String account3;
	@Column(name="description3")
	private String description3;
	@Column(name="amount3")
	private String amount3;
	
	@Column(name="sno4")
	private String sno4;
	@Column(name="account4")
	private String account4;
	@Column(name="description4")
	private String description4;
	@Column(name="amount4")
	private String amount4;
	
	@Column(name="sno5")
	private String sno5;
	@Column(name="account5")
	private String account5;
	@Column(name="description5")
	private String description5;
	@Column(name="amount5")
	private String amount5;
	@Column(name="login_comp")
	private String login_comp;
	@Column(name="deltby")
	private String deltby;
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getSno1() {
		return sno1;
	}
	public void setSno1(String sno1) {
		this.sno1 = sno1;
	}
	public String getAccount1() {
		return account1;
	}
	public void setAccount1(String account1) {
		this.account1 = account1;
	}
	public String getDescription1() {
		return description1;
	}
	public void setDescription1(String description1) {
		this.description1 = description1;
	}
	public String getAmount1() {
		return amount1;
	}
	public void setAmount1(String amount1) {
		this.amount1 = amount1;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	public String getSno2() {
		return sno2;
	}
	public void setSno2(String sno2) {
		this.sno2 = sno2;
	}
	public String getAccount2() {
		return account2;
	}
	public void setAccount2(String account2) {
		this.account2 = account2;
	}
	public String getDescription2() {
		return description2;
	}
	public void setDescription2(String description2) {
		this.description2 = description2;
	}
	public String getAmount2() {
		return amount2;
	}
	public void setAmount2(String amount2) {
		this.amount2 = amount2;
	}
	public String getSno3() {
		return sno3;
	}
	public void setSno3(String sno3) {
		this.sno3 = sno3;
	}
	public String getAccount3() {
		return account3;
	}
	public void setAccount3(String account3) {
		this.account3 = account3;
	}
	public String getDescription3() {
		return description3;
	}
	public void setDescription3(String description3) {
		this.description3 = description3;
	}
	public String getAmount3() {
		return amount3;
	}
	public void setAmount3(String amount3) {
		this.amount3 = amount3;
	}
	public String getSno4() {
		return sno4;
	}
	public void setSno4(String sno4) {
		this.sno4 = sno4;
	}
	public String getAccount4() {
		return account4;
	}
	public void setAccount4(String account4) {
		this.account4 = account4;
	}
	public String getDescription4() {
		return description4;
	}
	public void setDescription4(String description4) {
		this.description4 = description4;
	}
	public String getAmount4() {
		return amount4;
	}
	public void setAmount4(String amount4) {
		this.amount4 = amount4;
	}
	public String getSno5() {
		return sno5;
	}
	public void setSno5(String sno5) {
		this.sno5 = sno5;
	}
	public String getAccount5() {
		return account5;
	}
	public void setAccount5(String account5) {
		this.account5 = account5;
	}
	public String getDescription5() {
		return description5;
	}
	public void setDescription5(String description5) {
		this.description5 = description5;
	}
	public String getAmount5() {
		return amount5;
	}
	public void setAmount5(String amount5) {
		this.amount5 = amount5;
	}
	public String getLogin_comp() {
		return login_comp;
	}
	public void setLogin_comp(String login_comp) {
		this.login_comp = login_comp;
	}
	public String getDeltby() {
		return deltby;
	}
	public void setDeltby(String deltby) {
		this.deltby = deltby;
	}
	
	

}
