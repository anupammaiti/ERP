package com.erp.sales.sl.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="invoiceworkperform")
public class InvoiceWorkPerformBean {
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="lb_date")
	private String lb_date;
	@Column(name="lb_quantity")
	private String lb_quantity;
	@Column(name="lb_description")
	private String lb_description;
	@Column(name="lb_price")
	private String lb_price;
	@Column(name="mat_date")
	private String mat_date;
	@Column(name="mat_quantity")
	private String mat_quantity;
	@Column(name="mat_description")
	private String mat_description;
	@Column(name="mat_price")
	private String mat_price;
	@Column(name="misc_date")
	private String misc_date;
	@Column(name="mis_quantity")
	private String mis_quantity;
	@Column(name="mis_description")
	private String mis_description;
	@Column(name="mis_price")
	private String mis_price;
	@Column(name="gendate")
	private String gendate;
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getLb_date() {
		return lb_date;
	}
	public void setLb_date(String lb_date) {
		this.lb_date = lb_date;
	}
	public String getLb_quantity() {
		return lb_quantity;
	}
	public void setLb_quantity(String lb_quantity) {
		this.lb_quantity = lb_quantity;
	}
	public String getLb_description() {
		return lb_description;
	}
	public void setLb_description(String lb_description) {
		this.lb_description = lb_description;
	}
	public String getLb_price() {
		return lb_price;
	}
	public void setLb_price(String lb_price) {
		this.lb_price = lb_price;
	}
	public String getMat_date() {
		return mat_date;
	}
	public void setMat_date(String mat_date) {
		this.mat_date = mat_date;
	}
	public String getMat_quantity() {
		return mat_quantity;
	}
	public void setMat_quantity(String mat_quantity) {
		this.mat_quantity = mat_quantity;
	}
	public String getMat_description() {
		return mat_description;
	}
	public void setMat_description(String mat_description) {
		this.mat_description = mat_description;
	}
	public String getMat_price() {
		return mat_price;
	}
	public void setMat_price(String mat_price) {
		this.mat_price = mat_price;
	}
	public String getMisc_date() {
		return misc_date;
	}
	public void setMisc_date(String misc_date) {
		this.misc_date = misc_date;
	}
	public String getMis_quantity() {
		return mis_quantity;
	}
	public void setMis_quantity(String mis_quantity) {
		this.mis_quantity = mis_quantity;
	}
	public String getMis_description() {
		return mis_description;
	}
	public void setMis_description(String mis_description) {
		this.mis_description = mis_description;
	}
	public String getMis_price() {
		return mis_price;
	}
	public void setMis_price(String mis_price) {
		this.mis_price = mis_price;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}

	
}
