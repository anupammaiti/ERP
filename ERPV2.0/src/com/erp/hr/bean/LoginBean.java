/**
 * 
 */
package com.erp.hr.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author RAVI
 *
 */


@Entity
@Table(name="login")
public class LoginBean {
	@Id
	@GeneratedValue
	@Column(name="userid")
	private long userid;
	@Column(name="username")
	private String username;
	@Column(name="password")
	private String password;
	@Column(name="department")
	private String department;

	public long getUserid() {
		return userid;
	}
	public void setUserid(long userid) {
		this.userid = userid;
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
}
