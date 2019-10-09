package com.svs.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_fn_measures")
public class MeasuresBean {

	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="type")
	private String type;
	@Column(name="symbol")
	private String symbol;
	@Column(name="formalname")
	private String formalname;
	@Column(name="numofdec")
	private String numofdec;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getSymbol() {
		return symbol;
	}
	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}
	public String getFormalname() {
		return formalname;
	}
	public void setFormalname(String formalname) {
		this.formalname = formalname;
	}
	public String getNumofdec() {
		return numofdec;
	}
	public void setNumofdec(String numofdec) {
		this.numofdec = numofdec;
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
