package com.erp.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="dailycashreport")
public class DailyCashReportBean {

	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="date1")
	private String date1;
	@Column(name="cashr1")
	private String cashr1;
	@Column(name="amount1")
	private String amount1;
	@Column(name="cashp1")
	private String cashp1;
	@Column(name="amounta1")
	private String amounta1;
	@Column(name="cashr2")
	private String cashr2;
	@Column(name="amount2")
	private String amount2;
	@Column(name="cashp2")
	private String cashp2;
	@Column(name="amounta2")
	private String amounta2;
	@Column(name="cashr3")
	private String cashr3;
	@Column(name="amount3")
	private String amount3;
	@Column(name="cashp3")
	private String cashp3;
	@Column(name="amounta3")
	private String amounta3;
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getDate1() {
		return date1;
	}
	public void setDate1(String date1) {
		this.date1 = date1;
	}
	public String getCashr1() {
		return cashr1;
	}
	public void setCashr1(String cashr1) {
		this.cashr1 = cashr1;
	}
	public String getAmount1() {
		return amount1;
	}
	public void setAmount1(String amount1) {
		this.amount1 = amount1;
	}
	public String getCashp1() {
		return cashp1;
	}
	public void setCashp1(String cashp1) {
		this.cashp1 = cashp1;
	}
	public String getAmounta1() {
		return amounta1;
	}
	public void setAmounta1(String amounta1) {
		this.amounta1 = amounta1;
	}
	public String getCashr2() {
		return cashr2;
	}
	public void setCashr2(String cashr2) {
		this.cashr2 = cashr2;
	}
	public String getAmount2() {
		return amount2;
	}
	public void setAmount2(String amount2) {
		this.amount2 = amount2;
	}
	public String getCashp2() {
		return cashp2;
	}
	public void setCashp2(String cashp2) {
		this.cashp2 = cashp2;
	}
	public String getAmounta2() {
		return amounta2;
	}
	public void setAmounta2(String amounta2) {
		this.amounta2 = amounta2;
	}
	public String getCashr3() {
		return cashr3;
	}
	public void setCashr3(String cashr3) {
		this.cashr3 = cashr3;
	}
	public String getAmount3() {
		return amount3;
	}
	public void setAmount3(String amount3) {
		this.amount3 = amount3;
	}
	public String getCashp3() {
		return cashp3;
	}
	public void setCashp3(String cashp3) {
		this.cashp3 = cashp3;
	}
	public String getAmounta3() {
		return amounta3;
	}
	public void setAmounta3(String amounta3) {
		this.amounta3 = amounta3;
	}
	
}
