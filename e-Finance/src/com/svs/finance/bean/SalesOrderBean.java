package com.svs.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_sl_salsesorder")
public class SalesOrderBean {
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="toaddress")
	private String toaddress;
	@Column(name="customer")
	private String customer;
	@Column(name="terms")
	private String terms;
	@Column(name="salesperson")
	private String salesperson;
	@Column(name="shipto")
	private String shipto;
	@Column(name="shipweek")
	private String shipweek;
	@Column(name="item")
	private String item;
	@Column(name="quantityordered")
	private String quantityordered;
	@Column(name="description")
	private String description;
	@Column(name="unitcount")
	private String unitcount;
	@Column(name="unitprice")
	private String unitprice;
	@Column(name="specilainstructions")
	private String specilainstructions;
	@Column(name="date")
	private String date;
	@Column(name="approvalname")
	private String approvalname;
	@Column(name="purchasername")
	private String purchasername;
	@Column(name="title")
	private String title;
	@Column(name="gendate")
	private String gendate;
	@Column(name="deltby")
	private String deltby;
	@Column(name="manager")
	private String manager;
	@Column(name="deparment")
	private String department;
	@Column(name="login_comp")
	private String login_comp;
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getToaddress() {
		return toaddress;
	}
	public void setToaddress(String toaddress) {
		this.toaddress = toaddress;
	}
	public String getCustomer() {
		return customer;
	}
	public void setCustomer(String customer) {
		this.customer = customer;
	}
	public String getTerms() {
		return terms;
	}
	public void setTerms(String terms) {
		this.terms = terms;
	}
	public String getSalesperson() {
		return salesperson;
	}
	public void setSalesperson(String salesperson) {
		this.salesperson = salesperson;
	}
	public String getShipto() {
		return shipto;
	}
	public void setShipto(String shipto) {
		this.shipto = shipto;
	}
	public String getShipweek() {
		return shipweek;
	}
	public void setShipweek(String shipweek) {
		this.shipweek = shipweek;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public String getQuantityordered() {
		return quantityordered;
	}
	public void setQuantityordered(String quantityordered) {
		this.quantityordered = quantityordered;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getUnitcount() {
		return unitcount;
	}
	public void setUnitcount(String unitcount) {
		this.unitcount = unitcount;
	}
	public String getUnitprice() {
		return unitprice;
	}
	public void setUnitprice(String unitprice) {
		this.unitprice = unitprice;
	}
	public String getSpecilainstructions() {
		return specilainstructions;
	}
	public void setSpecilainstructions(String specilainstructions) {
		this.specilainstructions = specilainstructions;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getApprovalname() {
		return approvalname;
	}
	public void setApprovalname(String approvalname) {
		this.approvalname = approvalname;
	}
	public String getPurchasername() {
		return purchasername;
	}
	public void setPurchasername(String purchasername) {
		this.purchasername = purchasername;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	public String getDeltby() {
		return deltby;
	}
	public void setDeltby(String deltby) {
		this.deltby = deltby;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getLogin_comp() {
		return login_comp;
	}
	public void setLogin_comp(String login_comp) {
		this.login_comp = login_comp;
	}
	

}
