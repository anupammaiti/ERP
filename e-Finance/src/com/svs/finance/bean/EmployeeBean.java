package com.svs.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="tl_hr_employee")
public class EmployeeBean {
	
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="firstname")
	private String firstname;
	@Column(name="lastname")
	private String lastname;
	@Column(name="mobileno")
	private String mobileno;
	@Column(name="address")
	private String address;
	@Column(name="salary")
	private String salary;
	@Column(name="emailid")
	private String emailid;
	@Column(name="pancard")
	private String pancard;
	@Column(name="bankac")
	private String bankac;
	@Column(name="pfno")
	private String pfno;
	@Column(name="department")
	private String department;
	@Column(name="username")
	private String username;
	@Column(name="password")
	private String password;
	private String reenterpassword;
	@Column(name="companyname")
	private String companyname;
	@Column(name="designation")
	private String designation;
	@Column(name="dateofbirth")
	private String dateofbirth;
	@Column(name="dateofjoining")
	private String dateofjoining;
	@Column(name="qualification")
	private String qualification;
	@Column(name="empid")
	private String empid;
	@Column(name="gendate")
	private String gendate;
	@Column(name="gender")
	public String gender;
	
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getMobileno() {
		return mobileno;
	}
	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getPancard() {
		return pancard;
	}
	public void setPancard(String pancard) {
		this.pancard = pancard;
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
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public String getDateofjoining() {
		return dateofjoining;
	}
	public void setDateofjoining(String dateofjoining) {
		this.dateofjoining = dateofjoining;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getEmpid() {
		return empid;
	}
	public void setEmpid(String empid) {
		this.empid = empid;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	public String getReenterpassword() {
		return reenterpassword;
	}
	public void setReenterpassword(String reenterpassword) {
		this.reenterpassword = reenterpassword;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getBankac() {
		return bankac;
	}
	public void setBankac(String bankac) {
		this.bankac = bankac;
	}
	public String getPfno() {
		return pfno;
	}
	public void setPfno(String pfno) {
		this.pfno = pfno;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
}
