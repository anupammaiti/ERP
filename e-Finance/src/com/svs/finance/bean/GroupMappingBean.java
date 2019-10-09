package com.svs.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_fn_groupmapping")
public class GroupMappingBean {
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="primarygroup")
	private String primarygroup;
	@Column(name="subgroup")
	private String subgroup;
	@Column(name="login_comp")
	private String login_comp;
	@Column(name="gendate")
	private String gendate;

	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getPrimarygroup() {
		return primarygroup;
	}
	public void setPrimarygroup(String primarygroup) {
		this.primarygroup = primarygroup;
	}
	public String getSubgroup() {
		return subgroup;
	}
	public void setSubgroup(String subgroup) {
		this.subgroup = subgroup;
	}
	public String getGendate() {
		return gendate;
	}
	public String getLogin_comp() {
		return login_comp;
	}
	public void setLogin_comp(String login_comp) {
		this.login_comp = login_comp;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	

}
