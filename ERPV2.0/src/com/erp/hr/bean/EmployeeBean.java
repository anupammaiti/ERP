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
@Table(name="employee")
public class EmployeeBean {
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="empno")
	private String empno;
	@Column(name="name")
	private String name;
	@Column(name="nameinhris", unique=true)
	private String nameinhris;
	@Column(name="fathername")
	private String fathername;
	@Column(name="dob")
	private String dob;
	@Column(name="sex")
	private String sex;
	@Column(name="joinindate")
	private String joiningdate;
	@Column(name="designation")
	private String designation;
	@Column(name="department")
	private String department;
	@Column(name="reportingto")
	private String reportingto;
	@Column(name="joblevel")
	private String joblevel;
	@Column(name="location")
	private String location;
	@Column(name="entrymanner")
	private String entrymanner;
	@Column(name="nomination")
	private String nomination;
	@Column(name="birthplace")
	private String birthplace;
	@Column(name="maritalstatus")
	private String maritalstatus;
	@Column(name="marriagedate")
	private String marriagedate;
	@Column(name="religion")
	private String religion;
	@Column(name="pannumber")
	private String pannumber;
	@Column(name="passportnumber")
	private String passportnumber;
	@Column(name="issueddateandplace")
	private String issueddateandplace;
	@Column(name="validity")
	private String validity;
	@Column(name="companyname")
	private String companyname;
	@Column(name="qualification")
	private String qualification;
	@Column(name="username")
	private String username;
	@Column(name="password")
	private String password;
	@Column(name="presentsalary")
	private String presentsalary;
	@Column(name="join_time_req")
	private String join_time_req;
	@Column(name="bankaccount")
	private String bankaccount;
	@Column(name="pfno")
	private String pfno;
	@Column(name="gendate")
	private String gendate;

	public long getSno() {
			return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getEmpno() {
		return empno;
	}
	public void setEmpno(String empno) {
		this.empno = empno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNameinhris() {
		return nameinhris;
	}
	public void setNameinhris(String nameinhris) {
		this.nameinhris = nameinhris;
	}
	public String getFathername() {
		return fathername;
	}
	public void setFathername(String fathername) {
		this.fathername = fathername;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getJoiningdate() {
		return joiningdate;
	}
	public void setJoiningdate(String joiningdate) {
		this.joiningdate = joiningdate;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getReportingto() {
		return reportingto;
	}
	public void setReportingto(String reportingto) {
		this.reportingto = reportingto;
	}
	public String getJoblevel() {
		return joblevel;
	}
	public void setJoblevel(String joblevel) {
		this.joblevel = joblevel;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getEntrymanner() {
		return entrymanner;
	}
	public void setEntrymanner(String entrymanner) {
		this.entrymanner = entrymanner;
	}
	public String getNomination() {
		return nomination;
	}
	public void setNomination(String nomination) {
		this.nomination = nomination;
	}
	public String getBirthplace() {
		return birthplace;
	}
	public void setBirthplace(String birthplace) {
		this.birthplace = birthplace;
	}
	public String getMaritalstatus() {
		return maritalstatus;
	}
	public void setMaritalstatus(String maritalstatus) {
		this.maritalstatus = maritalstatus;
	}
	public String getMarriagedate() {
		return marriagedate;
	}
	public void setMarriagedate(String marriagedate) {
		this.marriagedate = marriagedate;
	}
	public String getReligion() {
		return religion;
	}
	public void setReligion(String religion) {
		this.religion = religion;
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
	public String getIssueddateandplace() {
		return issueddateandplace;
	}
	public void setIssueddateandplace(String issueddateandplace) {
		this.issueddateandplace = issueddateandplace;
	}
	public String getValidity() {
		return validity;
	}
	public void setValidity(String validity) {
		this.validity = validity;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
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
	public String getPresentsalary() {
		return presentsalary;
	}
	public void setPresentsalary(String presentsalary) {
		this.presentsalary = presentsalary;
	}
	public String getJoin_time_req() {
		return join_time_req;
	}
	public void setJoin_time_req(String join_time_req) {
		this.join_time_req = join_time_req;
	}
	public String getBankaccount() {
		return bankaccount;
	}
	public void setBankaccount(String bankaccount) {
		this.bankaccount = bankaccount;
	}
	public String getPfno() {
		return pfno;
	}
	public void setPfno(String pfno) {
		this.pfno = pfno;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	
	

}
