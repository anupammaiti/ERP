package com.svs.ensign.resort.bean;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 
 * @author RaviKiran , Feb 3, 2014
 * EmployeeBean.java 
 * 
 * Annotating to create tl_employee table in database.
 * 
 */
@Entity
@Table(name="tl_employee")
public class EmployeeBean {
	@Id
	@GeneratedValue
	@Column(name="empno")
	private long empno;
	@Column(name="firstname")
	private String firstname;
	@Column(name="lastname")
	private String lastname;
	@Column(name="dateofbirth")
	private String dateofbirth;
	@Column(name="gender")
	private String gender;
	@Column(name="qualification")
	private String qualification;
	@Column(name="address")
	private String address;
	@Column(name="city")
	private String city;
	@Column(name="state")
	private String state;
	@Column(name="pincode")
	private String pincode;
	@Column(name="email")
	private String email;
	@Column(name="mobile")
	private String mobile;
	@Column(name="land_line")
	private String land_line;
	@Column(name="pannumber")
	private String pannumber;
	@Column(name="passportnumber")
	private String passportnumber;
	@Column(name="expectedsalary")
	private String expectedsalary;
	@Column(name="maritualstatus")
	private String maritualstatus;
	@Column(name="department")
	private String department;
	@Column(name="reportingto")
	private String reportingto;
	@Column(name="username")
	private String username;
	@Column(name="password")
	private String password;
	@Column(name="designation")
	private String designation;
	@Column(name="bankaccountno")
	private String bankaccountno;
	@Column(name="passportexpirydate")
	private String passportexpirydate;
	@Column(name="gendate")
	private String gendate;
	@Column(name="manager")
	private String manager;
	@Column(name="status")
	private String status;
	private String reenterpassword;
	
	public long getEmpno() {
		return empno;
	}
	public void setEmpno(long empno) {
		this.empno = empno;
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
	public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public String getPannumber() {
		return pannumber;
	}
	public void setPannumber(String pannumber) {
		this.pannumber = pannumber;
	}
	public String getPassportnumber() {
		return passportnumber;
	}
	public void setPassportnumber(String passportnumber) {
		this.passportnumber = passportnumber;
	}
	public String getExpectedsalary() {
		return expectedsalary;
	}
	public void setExpectedsalary(String expectedsalary) {
		this.expectedsalary = expectedsalary;
	}
	public String getMaritualstatus() {
		return maritualstatus;
	}
	public void setMaritualstatus(String maritualstatus) {
		this.maritualstatus = maritualstatus;
	}
	
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
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
	
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getLand_line() {
		return land_line;
	}
	public void setLand_line(String land_line) {
		this.land_line = land_line;
	}
	public String getBankaccountno() {
		return bankaccountno;
	}																									
	public void setBankaccountno(String bankaccountno) {
		this.bankaccountno = bankaccountno;
	}
	public String getPassportexpirydate() {
		return passportexpirydate;
	}
	public void setPassportexpirydate(String passportexpirydate) {
		this.passportexpirydate = passportexpirydate;
	}
	public String getReportingto() {
		return reportingto;
	}
	public void setReportingto(String reportingto) {
		this.reportingto = reportingto;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
