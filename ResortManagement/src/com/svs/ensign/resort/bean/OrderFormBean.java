package com.svs.ensign.resort.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="tl_sl_orderform")
public class OrderFormBean {

	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="number")
	private String number;
	@Column(name="today")
	private String today;
	@Column(name="salesperson")
	private String salesperson;
	@Column(name="soldto")
	private String soldto;
	@Column(name="shipto")
	private String shipto;
	@Column(name="phone")
	private String phone;
	@Column(name="shipby")
	private String shipby;
	@Column(name="quantity")
	private String quantity;
	@Column(name="itemdesc")
	private String itemdesc;
	@Column(name="price")
	private String price;
	@Column(name="gendate")
	private String gendate;
	@Column(name="deparment")
	private String department;
	@Column(name="manager")
	private String manager;
	@Column(name="deltby")
	private String deltby;
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getToday() {
		return today;
	}
	public void setToday(String today) {
		this.today = today;
	}
	public String getSalesperson() {
		return salesperson;
	}
	public void setSalesperson(String salesperson) {
		this.salesperson = salesperson;
	}
	public String getSoldto() {
		return soldto;
	}
	public void setSoldto(String soldto) {
		this.soldto = soldto;
	}
	public String getShipto() {
		return shipto;
	}
	public void setShipto(String shipto) {
		this.shipto = shipto;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getShipby() {
		return shipby;
	}
	public void setShipby(String shipby) {
		this.shipby = shipby;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getItemdesc() {
		return itemdesc;
	}
	public void setItemdesc(String itemdesc) {
		this.itemdesc = itemdesc;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
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
	
	
}
