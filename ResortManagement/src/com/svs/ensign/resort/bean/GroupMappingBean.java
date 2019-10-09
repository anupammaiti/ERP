package com.svs.ensign.resort.bean;

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
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	

}
