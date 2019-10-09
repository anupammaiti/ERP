package com.erp.hr.bean;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="interviewevaluation")
public class InterviewEvalutionBean {
	@Id
	@GeneratedValue
	@Column(name="srno")
	private long srno;
	@Column(name="candidatename")
	private String candidatename;
	@Column(name="date")
	private Date date;
	@Column(name="position")
	private String position;
	@Column(name="company")
	private String company;
	@Column(name="apperence")
	private String apperence;
	@Column(name="qualification")
	private String qualification;
	@Column(name="experience")
	private String experience;
	@Column(name="jobstability")
	private String jobstability;
	@Column(name="attitude")
	private String attitude;
	@Column(name="communicationskills")
	private String communicationskills;
	@Column(name="jobknowledge")
	private String jobknowledge;
	@Column(name="jobskills")
	private String jobskills;
	@Column(name="jobpotential")
	private String jobpotential;
	@Column(name="carrierachivements")
	private String carrierachivements;
	@Column(name="workdeduction")
	private String workdeduction;
	@Column(name="abilitytolearn")
	private String abilitytolearn;
	@Column(name="openmindness")
	private String openmindness;
	@Column(name="overallstability")
	private String overallstability;
	@Column(name="finalassesment")
	private String finalassesment;
	@Column(name="othercomments")
	private String othercomments;
	@Column(name="interviewedby")
	private String interviewedby;
	@Column(name="executivename")
	private String executivename;
	@Column(name="joingtime")
	private String joingtime;
	@Column(name="presentsalary")
	private String presentsalary;
	@Column(name="expetedsalary")
	private String expetedsalary;
	@Column(name="salaryoffered")
	private String salaryoffered;
	@Column(name="department")
	private String department;
	@Column(name="maturitylevel")
	private String maturitylevel;
	
	public long getSrno() {
		return srno;
	}
	public void setSrno(long srno) {
		this.srno = srno;
	}
	public String getCandidatename() {
		return candidatename;
	}
	public void setCandidatename(String candidatename) {
		this.candidatename = candidatename;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getApperence() {
		return apperence;
	}
	public void setApperence(String apperence) {
		this.apperence = apperence;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getJobstability() {
		return jobstability;
	}
	public void setJobstability(String jobstability) {
		this.jobstability = jobstability;
	}
	public String getAttitude() {
		return attitude;
	}
	public void setAttitude(String attitude) {
		this.attitude = attitude;
	}
	public String getCommunicationskills() {
		return communicationskills;
	}
	public void setCommunicationskills(String communicationskills) {
		this.communicationskills = communicationskills;
	}
	public String getJobknowledge() {
		return jobknowledge;
	}
	public void setJobknowledge(String jobknowledge) {
		this.jobknowledge = jobknowledge;
	}
	public String getJobskills() {
		return jobskills;
	}
	public void setJobskills(String jobskills) {
		this.jobskills = jobskills;
	}
	public String getJobpotential() {
		return jobpotential;
	}
	public void setJobpotential(String jobpotential) {
		this.jobpotential = jobpotential;
	}
	public String getCarrierachivements() {
		return carrierachivements;
	}
	public void setCarrierachivements(String carrierachivements) {
		this.carrierachivements = carrierachivements;
	}
	public String getWorkdeduction() {
		return workdeduction;
	}
	public void setWorkdeduction(String workdeduction) {
		this.workdeduction = workdeduction;
	}
	public String getAbilitytolearn() {
		return abilitytolearn;
	}
	public void setAbilitytolearn(String abilitytolearn) {
		this.abilitytolearn = abilitytolearn;
	}
	public String getOpenmindness() {
		return openmindness;
	}
	public void setOpenmindness(String openmindness) {
		this.openmindness = openmindness;
	}
	public String getOverallstability() {
		return overallstability;
	}
	public void setOverallstability(String overallstability) {
		this.overallstability = overallstability;
	}
	public String getFinalassesment() {
		return finalassesment;
	}
	public void setFinalassesment(String finalassesment) {
		this.finalassesment = finalassesment;
	}
	public String getOthercomments() {
		return othercomments;
	}
	public void setOthercomments(String othercomments) {
		this.othercomments = othercomments;
	}
	public String getInterviewedby() {
		return interviewedby;
	}
	public void setInterviewedby(String interviewedby) {
		this.interviewedby = interviewedby;
	}
	public String getExecutivename() {
		return executivename;
	}
	public void setExecutivename(String executivename) {
		this.executivename = executivename;
	}
	public String getJoingtime() {
		return joingtime;
	}
	public void setJoingtime(String joingtime) {
		this.joingtime = joingtime;
	}
	public String getPresentsalary() {
		return presentsalary;
	}
	public void setPresentsalary(String presentsalary) {
		this.presentsalary = presentsalary;
	}
	public String getExpetedsalary() {
		return expetedsalary;
	}
	public void setExpetedsalary(String expetedsalary) {
		this.expetedsalary = expetedsalary;
	}
	public String getSalaryoffered() {
		return salaryoffered;
	}
	public void setSalaryoffered(String salaryoffered) {
		this.salaryoffered = salaryoffered;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getMaturitylevel() {
		return maturitylevel;
	}
	public void setMaturitylevel(String maturitylevel) {
		this.maturitylevel = maturitylevel;
	}
	
	
}
