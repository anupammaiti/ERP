package com.erp.hr.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "employeerequisition")
public class EmployeeRequisitionBean {
	@Id
	@GeneratedValue
	@Column(name = "sno")
	private long sno;
	@Column(name = "company")
	private String company;
	@Column(name = "department")
	private String department;
	@Column(name = "location")
	private String location;
	@Column(name = "joblevel")
	private String joblevel;
	@Column(name = "jobresponsibilities")
	private String jobresponsibilities;
	@Column(name = "specificaccountabilities")
	private String specificaccountabilities;
	@Column(name = "skilrequired")
	private String skilrequired;
	@Column(name = "qualification")
	private String qualification;
	@Column(name = "experience")
	private String experience;
	@Column(name = "targettime")
	private String targettime;
	@Column(name = "industryspecific")
	private String industryspecific;
	@Column(name = "age")
	private String age;
	@Column(name = "ageto")
	private String ageto;
	@Column(name = "personalitytraits")
	private String personalitytraits;
	@Column(name = "mobility")
	private String mobility;
	@Column(name = "organizationspecific")
	private String organizationspecific;
	@Column(name = "computerliteracy")
	private String computerliteracy;
	@Column(name = "leadershipqualitiesa")
	private String leadershipqualitiesa;
	@Column(name = "leadershipqualitiesb")
	private String leadershipqualitiesb;
	@Column(name = "leadershipqualitiesc")
	private String leadershipqualitiesc;
	@Column(name = "leadershipqualitiesd")
	private String leadershipqualitiesd;
	@Column(name = "locationspecifica")
	private String locationspecifica;
	@Column(name = "locationspecificb")
	private String locationspecificb;
	@Column(name = "locationspecificc")
	private String locationspecificc;
	@Column(name = "genderspecific")
	private String genderspecific;
	@Column(name = "indentername")
	private String indentername;
	@Column(name = "functionalheadname")
	private String functionalheadname;
	@Column(name = "unithead")
	private String unithead;
	@Column(name = "date1")
	private String date1;
	@Column(name = "date2")
	private String date2;
	@Column(name = "date3")
	private String date3;
	@Column(name = "position")
	private String position;

	public long getSno() {
		return sno;
	}

	public void setSno(long sno) {
		this.sno = sno;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getJoblevel() {
		return joblevel;
	}

	public void setJoblevel(String joblevel) {
		this.joblevel = joblevel;
	}

	public String getJobresponsibilities() {
		return jobresponsibilities;
	}

	public void setJobresponsibilities(String jobresponsibilities) {
		this.jobresponsibilities = jobresponsibilities;
	}

	public String getSpecificaccountabilities() {
		return specificaccountabilities;
	}

	public void setSpecificaccountabilities(String specificaccountabilities) {
		this.specificaccountabilities = specificaccountabilities;
	}

	public String getSkilrequired() {
		return skilrequired;
	}

	public void setSkilrequired(String skilrequired) {
		this.skilrequired = skilrequired;
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

	public String getTargettime() {
		return targettime;
	}

	public void setTargettime(String targettime) {
		this.targettime = targettime;
	}

	public String getIndustryspecific() {
		return industryspecific;
	}

	public void setIndustryspecific(String industryspecific) {
		this.industryspecific = industryspecific;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getAgeto() {
		return ageto;
	}

	public void setAgeto(String ageto) {
		this.ageto = ageto;
	}

	public String getPersonalitytraits() {
		return personalitytraits;
	}

	public void setPersonalitytraits(String personalitytraits) {
		this.personalitytraits = personalitytraits;
	}

	public String getMobility() {
		return mobility;
	}

	public void setMobility(String mobility) {
		this.mobility = mobility;
	}

	public String getOrganizationspecific() {
		return organizationspecific;
	}

	public void setOrganizationspecific(String organizationspecific) {
		this.organizationspecific = organizationspecific;
	}

	public String getComputerliteracy() {
		return computerliteracy;
	}

	public void setComputerliteracy(String computerliteracy) {
		this.computerliteracy = computerliteracy;
	}

	public String getLeadershipqualitiesa() {
		return leadershipqualitiesa;
	}

	public void setLeadershipqualitiesa(String leadershipqualitiesa) {
		this.leadershipqualitiesa = leadershipqualitiesa;
	}

	public String getLeadershipqualitiesb() {
		return leadershipqualitiesb;
	}

	public void setLeadershipqualitiesb(String leadershipqualitiesb) {
		this.leadershipqualitiesb = leadershipqualitiesb;
	}

	public String getLeadershipqualitiesc() {
		return leadershipqualitiesc;
	}

	public void setLeadershipqualitiesc(String leadershipqualitiesc) {
		this.leadershipqualitiesc = leadershipqualitiesc;
	}

	public String getLeadershipqualitiesd() {
		return leadershipqualitiesd;
	}

	public void setLeadershipqualitiesd(String leadershipqualitiesd) {
		this.leadershipqualitiesd = leadershipqualitiesd;
	}

	public String getLocationspecifica() {
		return locationspecifica;
	}

	public void setLocationspecifica(String locationspecifica) {
		this.locationspecifica = locationspecifica;
	}

	public String getLocationspecificb() {
		return locationspecificb;
	}

	public void setLocationspecificb(String locationspecificb) {
		this.locationspecificb = locationspecificb;
	}

	public String getLocationspecificc() {
		return locationspecificc;
	}

	public void setLocationspecificc(String locationspecificc) {
		this.locationspecificc = locationspecificc;
	}

	public String getGenderspecific() {
		return genderspecific;
	}

	public void setGenderspecific(String genderspecific) {
		this.genderspecific = genderspecific;
	}

	public String getIndentername() {
		return indentername;
	}

	public void setIndentername(String indentername) {
		this.indentername = indentername;
	}

	public String getFunctionalheadname() {
		return functionalheadname;
	}

	public void setFunctionalheadname(String functionalheadname) {
		this.functionalheadname = functionalheadname;
	}

	public String getUnithead() {
		return unithead;
	}

	public void setUnithead(String unithead) {
		this.unithead = unithead;
	}

	public String getDate1() {
		return date1;
	}

	public void setDate1(String date1) {
		this.date1 = date1;
	}

	public String getDate2() {
		return date2;
	}

	public void setDate2(String date2) {
		this.date2 = date2;
	}

	public String getDate3() {
		return date3;
	}

	public void setDate3(String date3) {
		this.date3 = date3;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

}
