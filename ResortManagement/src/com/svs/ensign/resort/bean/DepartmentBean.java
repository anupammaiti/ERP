package com.svs.ensign.resort.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 * DepartmentBean.java
 * @author Ravikiran
 * Creates tl_department table.
 *
 */
@Entity
@Table(name="tl_department")
public class DepartmentBean {

	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="department_id")
	private String department_id;
	@Column(name="department")
	private String department;
	@Column(name="gendate")
	private String gendate;
	
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getDepartment_id() {
		return department_id;
	}
	public void setDepartment_id(String department_id) {
		this.department_id = department_id;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	
}
