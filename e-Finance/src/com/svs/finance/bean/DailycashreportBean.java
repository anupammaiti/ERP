package com.svs.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_fn_dailycashreport")
public class DailycashreportBean {
	
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="dates")
	private String dates;
	@Column(name="sno1")
	private String sno1;
	@Column(name="cashrecordedform1")
	private String cashrecordedform1;
	@Column(name="amount1")
	private String amount1;
	@Column(name="cashpaidoutto1")
	private String cashpaidoutto1;
	@Column(name="amounts1")
	private String amounts1;
	@Column(name="gendate")
	private String gendate;
	
	@Column(name="sno2")
	private String sno2;
	@Column(name="cashrecordedform2")
	private String cashrecordedform2;
	@Column(name="amount2")
	private String amount2;
	@Column(name="cashpaidoutto2")
	private String cashpaidoutto2;
	@Column(name="amounts2")
	private String amounts2;
	
	
	@Column(name="sno3")
	private String sno3;
	@Column(name="cashrecordedform3")
	private String cashrecordedform3;
	@Column(name="amount3")
	private String amount3;
	@Column(name="cashpaidoutto3")
	private String cashpaidoutto3;
	@Column(name="amounts3")
	private String amounts3;
	
	
	@Column(name="sno4")
	private String sno4;
	@Column(name="cashrecordedform4")
	private String cashrecordedform4;
	@Column(name="amount4")
	private String amount4;
	@Column(name="cashpaidoutto4")
	private String cashpaidoutto4;
	@Column(name="amounts4")
	private String amounts4;
	
	@Column(name="sno5")
	private String sno5;
	@Column(name="cashrecordedform5")
	private String cashrecordedform5;
	@Column(name="amount5")
	private String amount5;
	@Column(name="cashpaidoutto5")
	private String cashpaidoutto5;
	@Column(name="amounts5")
	private String amounts5;
	
	@Column(name="login_comp")
	private String login_comp;
	@Column(name="deltby")
	private String deltby;
	
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getDates() {
		return dates;
	}
	public void setDates(String dates) {
		this.dates = dates;
	}
	public String getSno1() {
		return sno1;
	}
	public void setSno1(String sno1) {
		this.sno1 = sno1;
	}
	public String getCashrecordedform1() {
		return cashrecordedform1;
	}
	public void setCashrecordedform1(String cashrecordedform1) {
		this.cashrecordedform1 = cashrecordedform1;
	}
	public String getAmount1() {
		return amount1;
	}
	public void setAmount1(String amount1) {
		this.amount1 = amount1;
	}
	public String getCashpaidoutto1() {
		return cashpaidoutto1;
	}
	public void setCashpaidoutto1(String cashpaidoutto1) {
		this.cashpaidoutto1 = cashpaidoutto1;
	}
	public String getAmounts1() {
		return amounts1;
	}
	public void setAmounts1(String amounts1) {
		this.amounts1 = amounts1;
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
	public String getCashrecordedform2() {
		return cashrecordedform2;
	}
	public void setCashrecordedform2(String cashrecordedform2) {
		this.cashrecordedform2 = cashrecordedform2;
	}
	public String getAmount2() {
		return amount2;
	}
	public void setAmount2(String amount2) {
		this.amount2 = amount2;
	}
	public String getCashpaidoutto2() {
		return cashpaidoutto2;
	}
	public void setCashpaidoutto2(String cashpaidoutto2) {
		this.cashpaidoutto2 = cashpaidoutto2;
	}
	public String getAmounts2() {
		return amounts2;
	}
	public void setAmounts2(String amounts2) {
		this.amounts2 = amounts2;
	}
	public String getSno3() {
		return sno3;
	}
	public void setSno3(String sno3) {
		this.sno3 = sno3;
	}
	public String getCashrecordedform3() {
		return cashrecordedform3;
	}
	public void setCashrecordedform3(String cashrecordedform3) {
		this.cashrecordedform3 = cashrecordedform3;
	}
	public String getAmount3() {
		return amount3;
	}
	public void setAmount3(String amount3) {
		this.amount3 = amount3;
	}
	public String getCashpaidoutto3() {
		return cashpaidoutto3;
	}
	public void setCashpaidoutto3(String cashpaidoutto3) {
		this.cashpaidoutto3 = cashpaidoutto3;
	}
	public String getAmounts3() {
		return amounts3;
	}
	public void setAmounts3(String amounts3) {
		this.amounts3 = amounts3;
	}
	public String getSno4() {
		return sno4;
	}
	public void setSno4(String sno4) {
		this.sno4 = sno4;
	}
	public String getCashrecordedform4() {
		return cashrecordedform4;
	}
	public void setCashrecordedform4(String cashrecordedform4) {
		this.cashrecordedform4 = cashrecordedform4;
	}
	public String getAmount4() {
		return amount4;
	}
	public void setAmount4(String amount4) {
		this.amount4 = amount4;
	}
	public String getCashpaidoutto4() {
		return cashpaidoutto4;
	}
	public void setCashpaidoutto4(String cashpaidoutto4) {
		this.cashpaidoutto4 = cashpaidoutto4;
	}
	public String getAmounts4() {
		return amounts4;
	}
	public void setAmounts4(String amounts4) {
		this.amounts4 = amounts4;
	}
	public String getSno5() {
		return sno5;
	}
	public void setSno5(String sno5) {
		this.sno5 = sno5;
	}
	public String getCashrecordedform5() {
		return cashrecordedform5;
	}
	public void setCashrecordedform5(String cashrecordedform5) {
		this.cashrecordedform5 = cashrecordedform5;
	}
	public String getAmount5() {
		return amount5;
	}
	public void setAmount5(String amount5) {
		this.amount5 = amount5;
	}
	public String getCashpaidoutto5() {
		return cashpaidoutto5;
	}
	public void setCashpaidoutto5(String cashpaidoutto5) {
		this.cashpaidoutto5 = cashpaidoutto5;
	}
	public String getAmounts5() {
		return amounts5;
	}
	public void setAmounts5(String amounts5) {
		this.amounts5 = amounts5;
	}
	public long getSno() {
		return sno;
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
