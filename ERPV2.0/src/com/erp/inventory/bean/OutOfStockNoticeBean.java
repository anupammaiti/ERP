package com.erp.inventory.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="outofstocknotice")
public class OutOfStockNoticeBean {
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="orderno")
	private String orderno;
	@Column(name="date")
	private String date;
	@Column(name="custname")
	private String custname;
	@Column(name="phone")
	private String phone;
	@Column(name="address")
	private String address;
	@Column(name="city")
	private String City;
	@Column(name="state")
	private String State;
	@Column(name="zip")
	private String Zip;
	@Column(name="qnty")
	private String qnty;
	@Column(name="item")
	private String item;
	@Column(name="esdate")
	private String esdate;
	
	
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getOrderno() {
		return orderno;
	}
	public void setOrderno(String orderno) {
		this.orderno = orderno;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getCustname() {
		return custname;
	}
	public void setCustname(String custname) {
		this.custname = custname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getZip() {
		return Zip;
	}
	public void setZip(String zip) {
		Zip = zip;
	}
	public String getQnty() {
		return qnty;
	}
	public void setQnty(String qnty) {
		this.qnty = qnty;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public String getEsdate() {
		return esdate;
	}
	public void setEsdate(String esdate) {
		this.esdate = esdate;
	}
	
	
	

}
