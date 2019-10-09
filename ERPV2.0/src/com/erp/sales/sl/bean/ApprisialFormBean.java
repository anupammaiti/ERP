package com.erp.sales.sl.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="ApprisialForm")
public class ApprisialFormBean {
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="name")
	private String name;
	@Column(name="address")
	private String address;
	@Column(name="item1")
	private String item1;
	@Column(name="description")
	private String description;
	@Column(name="apprisedvalue")
	private String apprisedvalue;
	@Column(name="today")
	private String today;
	@Column(name="appraisalname")
	private String appraisalname;
	@Column(name="gendate")
	private String gendate;
	
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getItem1() {
		return item1;
	}
	public void setItem1(String item1) {
		this.item1 = item1;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getApprisedvalue() {
		return apprisedvalue;
	}
	public void setApprisedvalue(String apprisedvalue) {
		this.apprisedvalue = apprisedvalue;
	}
	public String getToday() {
		return today;
	}
	public void setToday(String today) {
		this.today = today;
	}
	public String getAppraisalname() {
		return appraisalname;
	}
	public void setAppraisalname(String appraisalname) {
		this.appraisalname = appraisalname;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	
	
	

}
