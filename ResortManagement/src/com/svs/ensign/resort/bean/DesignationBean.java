package com.svs.ensign.resort.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;


/**
 * DesignationBean.java
 * 
 * @author Ravikiran
 *
 * Doing Operations on tl_designation table.
 */
@Entity
@Table(name="tl_designation")//Declaring the Table name
public class DesignationBean {

	@Id//Create Id for table
	@GeneratedValue//AutoIncreament the value of the column
	@Column(name="sno")//Database Column Name
	private long sno;//SerialNo 
	@Column(name="designation")
	private String designation;//Designation of the Company
	@Column(name="designation_id",nullable=false,unique=true)//Designation_id is not null , it is unique.
	private String designation_id;
	@Column(name="department_id")//Department Name
	private String department_id;//Department Name.
	@Column(name="gendate")
	private String gendate;
	
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getDesignation_id() {
		return designation_id;
	}
	public void setDesignation_id(String designation_id) {
		this.designation_id = designation_id;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	public String getDepartment_id() {
		return department_id;
	}
	public void setDepartment_id(String department_id) {
		this.department_id = department_id;
	}
	
}
