package com.svs.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_fn_cashreciptjournal")
public class CashReciptJournalBean {

	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="fromdate")
	private String fromdate;
	@Column(name="todate")
	private String todate;
	@Column(name="date1")
	private String date1;
	@Column(name="accountc1")
	private String accountc1;
	@Column(name="account1")
	private String account1;
	@Column(name="sales1")
	private String sales1;
	@Column(name="amountr1")
	private String amountr1;
	@Column(name="cash1")
	private String cash1;
	@Column(name="discount1")
	private String discount1;
	@Column(name="other1")
	private String other1;
	@Column(name="accountd1")
	private String accountd1;
	@Column(name="accountp1")
	private String accountp1;
	@Column(name="othera1")
	private String othera1;
	@Column(name="date2")
	private String date2;
	@Column(name="accountc2")
	private String accountc2;
	@Column(name="account2")
	private String account2;
	@Column(name="sales2")
	private String sales2;
	@Column(name="amountr2")
	private String amountr2;
	@Column(name="cash2")
	private String cash2;
	@Column(name="discount2")
	private String discount2;
	@Column(name="other2")
	private String other2;
	@Column(name="accountd2")
	private String accountd2;
	@Column(name="accountp2")
	private String accountp2;
	@Column(name="othera2")
	private String othera2;
	@Column(name="date3")
	private String date3;
	@Column(name="accountc3")
	private String accountc3;
	@Column(name="account3")
	private String account3;
	@Column(name="sales3")
	private String sales3;
	@Column(name="amountr3")
	private String amountr3;
	@Column(name="cash3")
	private String cash3;
	@Column(name="discount3")
	private String discount3;
	@Column(name="other3")
	private String other3;
	@Column(name="accountd3")
	private String accountd3;
	@Column(name="accountp3")
	private String accountp3;
	@Column(name="othera3")
	private String othera3;
	@Column(name="department")
	private String department;
	@Column(name="manager")
	private String manager;
	@Column(name="deltby")
	private String deltby;
	@Column(name="login_comp")
	private String login_comp;
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getFromdate() {
		return fromdate;
	}
	public void setFromdate(String fromdate) {
		this.fromdate = fromdate;
	}
	public String getTodate() {
		return todate;
	}
	public void setTodate(String todate) {
		this.todate = todate;
	}
	public String getDate1() {
		return date1;
	}
	public void setDate1(String date1) {
		this.date1 = date1;
	}
	public String getAccountc1() {
		return accountc1;
	}
	public void setAccountc1(String accountc1) {
		this.accountc1 = accountc1;
	}
	public String getAccount1() {
		return account1;
	}
	public void setAccount1(String account1) {
		this.account1 = account1;
	}
	public String getSales1() {
		return sales1;
	}
	public void setSales1(String sales1) {
		this.sales1 = sales1;
	}
	public String getAmountr1() {
		return amountr1;
	}
	public void setAmountr1(String amountr1) {
		this.amountr1 = amountr1;
	}
	public String getCash1() {
		return cash1;
	}
	public void setCash1(String cash1) {
		this.cash1 = cash1;
	}
	public String getDiscount1() {
		return discount1;
	}
	public void setDiscount1(String discount1) {
		this.discount1 = discount1;
	}
	public String getOther1() {
		return other1;
	}
	public void setOther1(String other1) {
		this.other1 = other1;
	}
	public String getAccountd1() {
		return accountd1;
	}
	public void setAccountd1(String accountd1) {
		this.accountd1 = accountd1;
	}
	public String getAccountp1() {
		return accountp1;
	}
	public void setAccountp1(String accountp1) {
		this.accountp1 = accountp1;
	}
	public String getOthera1() {
		return othera1;
	}
	public void setOthera1(String othera1) {
		this.othera1 = othera1;
	}
	public String getDate2() {
		return date2;
	}
	public void setDate2(String date2) {
		this.date2 = date2;
	}
	public String getAccountc2() {
		return accountc2;
	}
	public void setAccountc2(String accountc2) {
		this.accountc2 = accountc2;
	}
	public String getAccount2() {
		return account2;
	}
	public void setAccount2(String account2) {
		this.account2 = account2;
	}
	public String getSales2() {
		return sales2;
	}
	public void setSales2(String sales2) {
		this.sales2 = sales2;
	}
	public String getAmountr2() {
		return amountr2;
	}
	public void setAmountr2(String amountr2) {
		this.amountr2 = amountr2;
	}
	public String getCash2() {
		return cash2;
	}
	public void setCash2(String cash2) {
		this.cash2 = cash2;
	}
	public String getDiscount2() {
		return discount2;
	}
	public void setDiscount2(String discount2) {
		this.discount2 = discount2;
	}
	public String getOther2() {
		return other2;
	}
	public void setOther2(String other2) {
		this.other2 = other2;
	}
	public String getAccountd2() {
		return accountd2;
	}
	public void setAccountd2(String accountd2) {
		this.accountd2 = accountd2;
	}
	public String getAccountp2() {
		return accountp2;
	}
	public void setAccountp2(String accountp2) {
		this.accountp2 = accountp2;
	}
	public String getOthera2() {
		return othera2;
	}
	public void setOthera2(String othera2) {
		this.othera2 = othera2;
	}
	public String getDate3() {
		return date3;
	}
	public void setDate3(String date3) {
		this.date3 = date3;
	}
	public String getAccountc3() {
		return accountc3;
	}
	public void setAccountc3(String accountc3) {
		this.accountc3 = accountc3;
	}
	public String getAccount3() {
		return account3;
	}
	public void setAccount3(String account3) {
		this.account3 = account3;
	}
	public String getSales3() {
		return sales3;
	}
	public void setSales3(String sales3) {
		this.sales3 = sales3;
	}
	public String getAmountr3() {
		return amountr3;
	}
	public void setAmountr3(String amountr3) {
		this.amountr3 = amountr3;
	}
	public String getCash3() {
		return cash3;
	}
	public void setCash3(String cash3) {
		this.cash3 = cash3;
	}
	public String getDiscount3() {
		return discount3;
	}
	public void setDiscount3(String discount3) {
		this.discount3 = discount3;
	}
	public String getOther3() {
		return other3;
	}
	public void setOther3(String other3) {
		this.other3 = other3;
	}
	public String getAccountd3() {
		return accountd3;
	}
	public void setAccountd3(String accountd3) {
		this.accountd3 = accountd3;
	}
	public String getAccountp3() {
		return accountp3;
	}
	public void setAccountp3(String accountp3) {
		this.accountp3 = accountp3;
	}
	public String getOthera3() {
		return othera3;
	}
	public void setOthera3(String othera3) {
		this.othera3 = othera3;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public String getDeltby() {
		return deltby;
	}
	public void setDeltby(String deltby) {
		this.deltby = deltby;
	}
	public String getLogin_comp() {
		return login_comp;
	}
	public void setLogin_comp(String login_comp) {
		this.login_comp = login_comp;
	}
	
	
}
