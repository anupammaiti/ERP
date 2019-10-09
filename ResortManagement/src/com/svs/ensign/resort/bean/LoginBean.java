package com.svs.ensign.resort.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 
 * @author Ravikiran
 *
 */

@Entity
@Table(name="tl_login")// Create the table for tl_login.
public class LoginBean {

	@Id//Create id for the table.
	@GeneratedValue//Auto Increment the value of the Column.
	@Column(name="sno")//Serial No of the Table.
	private long sno;//Serial No of the Table.
	@Column(name="username")//UserName
	private String username;//UserName of the login
	@Column(name="password")//Password of the login
	private String password;//Password of the login.
	@Column(name="department")//Department Name of the Login User
	private String department;//Department Name of the Login User
	@Column(name="status")//Status of the Login User (Future Purpose).
	private String status;//Status of the Login User (Future Purpose).
	private String newpassword;//Change Password 
	@Column(name="gendate")//Login Created Date.
	private String gendate;//Login Created Date.
	private String conformpassword;//Conforming Password for Change Password purpose.
	
	
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	public String getNewpassword() {
		return newpassword;
	}
	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}
	public String getConformpassword() {
		return conformpassword;
	}
	public void setConformpassword(String conformpassword) {
		this.conformpassword = conformpassword;
	}
	
	
}
