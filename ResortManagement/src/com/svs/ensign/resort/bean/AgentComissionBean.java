package com.svs.ensign.resort.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_tc_agent_comission")
public class AgentComissionBean {

	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="villa_name")
	private String villa_name;
	@Column(name="facing_villa")
	private String facing_villa;
	@Column(name="villa_type")
	private String villa_type;
	@Column(name="villa_price")
	private String villa_price;
	@Column(name="comission_percent")
	private String comission_percent;
	@Column(name="agent_amount")
	private String agent_amount;
	@Column(name="gendate")
	private String gendate;
	
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getVilla_name() {
		return villa_name;
	}
	public void setVilla_name(String villa_name) {
		this.villa_name = villa_name;
	}
	public String getFacing_villa() {
		return facing_villa;
	}
	public void setFacing_villa(String facing_villa) {
		this.facing_villa = facing_villa;
	}
	public String getVilla_type() {
		return villa_type;
	}
	public void setVilla_type(String villa_type) {
		this.villa_type = villa_type;
	}
	public String getVilla_price() {
		return villa_price;
	}
	public void setVilla_price(String villa_price) {
		this.villa_price = villa_price;
	}
	public String getComission_percent() {
		return comission_percent;
	}
	public void setComission_percent(String comission_percent) {
		this.comission_percent = comission_percent;
	}
	public String getAgent_amount() {
		return agent_amount;
	}
	public void setAgent_amount(String agent_amount) {
		this.agent_amount = agent_amount;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	
	
}
