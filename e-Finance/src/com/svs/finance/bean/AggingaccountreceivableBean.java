package com.svs.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_fn_aggingaccountreceivable")
public class AggingaccountreceivableBean {

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
	@Column(name="invoice1")
	private String invoice1;
	@Column(name="account1")
	private String account1;
	@Column(name="description1")
	private String description1;
	@Column(name="thirtydays1")
	private String thirtydays1;
	@Column(name="sixtydays1")
	private String sixtydays1;
	@Column(name="nintydays1")
	private String nintydays1;
	@Column(name="accounta1")
	private String accounta1;
	@Column(name="total1")
	private String total1;


	@Column(name="accounta2")
	private String accounta2;
	@Column(name="accounta3")
	private String accounta3;
	@Column(name="accounta4")
	private String accounta4;
	@Column(name="accounta5")
	private String accounta5;
	@Column(name="date2")
	private String date2;
	@Column(name="invoice2")
	private String invoice2;
	@Column(name="account2")
	private String account2;
	@Column(name="description2")
	private String description2;
	@Column(name="thirtydays2")
	private String thirtydays2;
	@Column(name="sixtydays2")
	private String sixtydays2;
	@Column(name="nintydays2")
	private String nintydays2;
	@Column(name="total2")
	private String total2;
	
	@Column(name="date3")
	private String date3;
	@Column(name="invoice3")
	private String invoice3;
	@Column(name="account3")
	private String account3;
	@Column(name="description3")
	private String description3;
	@Column(name="thirtydays3")
	private String thirtydays3;
	@Column(name="sixtydays3")
	private String sixtydays3;
	@Column(name="nintydays3")
	private String nintydays3;
	@Column(name="total3")
	private String total3;
	
	@Column(name="date4")
	private String date4;
	@Column(name="invoice4")
	private String invoice4;
	@Column(name="account4")
	private String account4;
	@Column(name="description4")
	private String description4;
	@Column(name="thirtydays4")
	private String thirtydays4;
	@Column(name="sixtydays4")
	private String sixtydays4;
	@Column(name="nintydays4")
	private String nintydays4;
	@Column(name="total4")
	private String total4;
	
	@Column(name="date5")
	private String date5;
	@Column(name="invoice5")
	private String invoice5;
	@Column(name="account5")
	private String account5;
	@Column(name="description5")
	private String description5;
	@Column(name="thirtydays5")
	private String thirtydays5;
	@Column(name="sixtydays5")
	private String sixtydays5;
	@Column(name="nintydays5")
	private String nintydays5;
	@Column(name="total5")
	private String total5;
	@Column(name="gendate")
	private String gendate;
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
	public String getInvoice1() {
		return invoice1;
	}
	public void setInvoice1(String invoice1) {
		this.invoice1 = invoice1;
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
	public String getThirtydays1() {
		return thirtydays1;
	}
	public void setThirtydays1(String thirtydays1) {
		this.thirtydays1 = thirtydays1;
	}
	public String getSixtydays1() {
		return sixtydays1;
	}
	public void setSixtydays1(String sixtydays1) {
		this.sixtydays1 = sixtydays1;
	}
	public String getNintydays1() {
		return nintydays1;
	}
	public void setNintydays1(String nintydays1) {
		this.nintydays1 = nintydays1;
	}
	public String getTotal1() {
		return total1;
	}
	public void setTotal1(String total1) {
		this.total1 = total1;
	}
	public String getDate2() {
		return date2;
	}
	public void setDate2(String date2) {
		this.date2 = date2;
	}
	public String getInvoice2() {
		return invoice2;
	}
	public void setInvoice2(String invoice2) {
		this.invoice2 = invoice2;
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
	public String getThirtydays2() {
		return thirtydays2;
	}
	public void setThirtydays2(String thirtydays2) {
		this.thirtydays2 = thirtydays2;
	}
	public String getSixtydays2() {
		return sixtydays2;
	}
	public void setSixtydays2(String sixtydays2) {
		this.sixtydays2 = sixtydays2;
	}
	public String getNintydays2() {
		return nintydays2;
	}
	public void setNintydays2(String nintydays2) {
		this.nintydays2 = nintydays2;
	}
	public String getTotal2() {
		return total2;
	}
	public void setTotal2(String total2) {
		this.total2 = total2;
	}
	public String getDate3() {
		return date3;
	}
	public void setDate3(String date3) {
		this.date3 = date3;
	}
	public String getInvoice3() {
		return invoice3;
	}
	public void setInvoice3(String invoice3) {
		this.invoice3 = invoice3;
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
	public String getThirtydays3() {
		return thirtydays3;
	}
	public void setThirtydays3(String thirtydays3) {
		this.thirtydays3 = thirtydays3;
	}
	public String getSixtydays3() {
		return sixtydays3;
	}
	public void setSixtydays3(String sixtydays3) {
		this.sixtydays3 = sixtydays3;
	}
	public String getNintydays3() {
		return nintydays3;
	}
	public void setNintydays3(String nintydays3) {
		this.nintydays3 = nintydays3;
	}
	public String getTotal3() {
		return total3;
	}
	public void setTotal3(String total3) {
		this.total3 = total3;
	}
	public String getDate4() {
		return date4;
	}
	public void setDate4(String date4) {
		this.date4 = date4;
	}
	public String getInvoice4() {
		return invoice4;
	}
	public void setInvoice4(String invoice4) {
		this.invoice4 = invoice4;
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
	public String getThirtydays4() {
		return thirtydays4;
	}
	public void setThirtydays4(String thirtydays4) {
		this.thirtydays4 = thirtydays4;
	}
	public String getSixtydays4() {
		return sixtydays4;
	}
	public void setSixtydays4(String sixtydays4) {
		this.sixtydays4 = sixtydays4;
	}
	public String getNintydays4() {
		return nintydays4;
	}
	public void setNintydays4(String nintydays4) {
		this.nintydays4 = nintydays4;
	}
	public String getTotal4() {
		return total4;
	}
	public void setTotal4(String total4) {
		this.total4 = total4;
	}
	public String getDate5() {
		return date5;
	}
	public void setDate5(String date5) {
		this.date5 = date5;
	}
	public String getInvoice5() {
		return invoice5;
	}
	public void setInvoice5(String invoice5) {
		this.invoice5 = invoice5;
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
	public String getThirtydays5() {
		return thirtydays5;
	}
	public void setThirtydays5(String thirtydays5) {
		this.thirtydays5 = thirtydays5;
	}
	public String getSixtydays5() {
		return sixtydays5;
	}
	public void setSixtydays5(String sixtydays5) {
		this.sixtydays5 = sixtydays5;
	}
	public String getNintydays5() {
		return nintydays5;
	}
	public void setNintydays5(String nintydays5) {
		this.nintydays5 = nintydays5;
	}
	public String getTotal5() {
		return total5;
	}
	public void setTotal5(String total5) {
		this.total5 = total5;
	}
	public String getAccounta1() {
		return accounta1;
	}
	public void setAccounta1(String accounta1) {
		this.accounta1 = accounta1;
	}
	public String getAccounta2() {
		return accounta2;
	}
	public void setAccounta2(String accounta2) {
		this.accounta2 = accounta2;
	}
	public String getAccounta3() {
		return accounta3;
	}
	public void setAccounta3(String accounta3) {
		this.accounta3 = accounta3;
	}
	public String getAccounta4() {
		return accounta4;
	}
	public void setAccounta4(String accounta4) {
		this.accounta4 = accounta4;
	}
	public String getAccounta5() {
		return accounta5;
	}
	public void setAccounta5(String accounta5) {
		this.accounta5 = accounta5;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	public String getLogin_comp() {
		return login_comp;
	}
	public void setLogin_comp(String login_comp) {
		this.login_comp = login_comp;
	}
	
	
	
	
	
	
	
}
