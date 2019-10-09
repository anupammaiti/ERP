package com.svs.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_fn_stockitem")
public class StockItemBean {
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="name")
	private String name;
	@Column(name="alias")
	private String  alias;
	@Column(name="under")
	private String under;
	@Column(name="units")
	private String units;
	@Column(name="rateofduty")
	private String rateofduty;
	@Column(name="trafficclassification")
	private String trafficclassification;
	@Column(name="gendate")
	private String gendate;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAlias() {
		return alias;
	}
	public void setAlias(String alias) {
		this.alias = alias;
	}
	public String getUnder() {
		return under;
	}
	public void setUnder(String under) {
		this.under = under;
	}
	public String getUnits() {
		return units;
	}
	public void setUnits(String units) {
		this.units = units;
	}
	public String getRateofduty() {
		return rateofduty;
	}
	public void setRateofduty(String rateofduty) {
		this.rateofduty = rateofduty;
	}
	public String getTrafficclassification() {
		return trafficclassification;
	}
	public void setTrafficclassification(String trafficclassification) {
		this.trafficclassification = trafficclassification;
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
	public String getLogin_comp() {
		return login_comp;
	}
	public void setLogin_comp(String login_comp) {
		this.login_comp = login_comp;
	}
	
	

}
