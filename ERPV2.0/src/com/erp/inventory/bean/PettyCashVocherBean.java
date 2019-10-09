package com.erp.inventory.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="pettycashvocher")
public class PettyCashVocherBean {

	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="account1")
	private String account1;
	@Column(name="description1")
	private String description1;
	@Column(name="amount1")
	private String amount1;
	@Column(name="account2")
	private String account2;
	@Column(name="description2")
	private String description2;
	@Column(name="amount2")
	private String amount2;
	@Column(name="account3")
	private String account3;
	@Column(name="description3")
	private String description3;
	@Column(name="amount3")
	private String amount3;
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
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
	
}
