package com.svs.ensign.resort.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_fn_stockgroupdetails")
public class StockGroupDetailsBean {
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="name")
	private String name;
	@Column(name="alias")
	private String alias;
	@Column(name="under")
	private String under;
	@Column(name="qtyadd")
	private String qtyadd;
	@Column(name="getdate")
	private String getdate;
	@Column(name="deltby")
	private String deltby;
	@Column(name="manager")
	private String manager;
	
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
	public String getQtyadd() {
		return qtyadd;
	}
	public void setQtyadd(String qtyadd) {
		this.qtyadd = qtyadd;
	}
	public String getGetdate() {
		return getdate;
	}
	public void setGetdate(String getdate) {
		this.getdate = getdate;
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
	
}
