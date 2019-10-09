package com.svs.ensign.resort.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_vm_insurence")
public class VehicleInsurenceBean {

	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="vhno")
	private String vhno;
	@Column(name="vehicle_model")
	private String vehcile_model;
	@Column(name="ins_date")
	private String ins_date;
	@Column(name="no_years")
	private String no_years;
	@Column(name="ins_price")
	private String ins_price;
	@Column(name="gendate")
	private String gendate;
	@Column(name="ins_no")
	private String ins_no;
	
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getVhno() {
		return vhno;
	}
	public void setVhno(String vhno) {
		this.vhno = vhno;
	}
	public String getVehcile_model() {
		return vehcile_model;
	}
	public void setVehcile_model(String vehcile_model) {
		this.vehcile_model = vehcile_model;
	}
	
	public String getIns_date() {
		return ins_date;
	}
	public void setIns_date(String ins_date) {
		this.ins_date = ins_date;
	}
	public String getNo_years() {
		return no_years;
	}
	public void setNo_years(String no_years) {
		this.no_years = no_years;
	}
	public String getIns_price() {
		return ins_price;
	}
	public void setIns_price(String ins_price) {
		this.ins_price = ins_price;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	public String getIns_no() {
		return ins_no;
	}
	public void setIns_no(String ins_no) {
		this.ins_no = ins_no;
	}
	
}
