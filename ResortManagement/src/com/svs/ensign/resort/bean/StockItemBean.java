package com.svs.ensign.resort.bean;

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
	
	

}
