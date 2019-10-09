package com.svs.ensign.resort.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="tl_fn_vocherdetails")
public class VocherDetailsBean {
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="name")
	private String name;
	@Column(name="typeofvocher")
	private String typeofvocher;
	@Column(name="abbr")
	private String abbr;
	@Column(name="vochernumbering")
	private String vochernumbering;
	@Column(name="advconfiguration")
	private String advconfiguration;
	@Column(name="useeffectivedates")
	private String useeffectivedates;
	@Column(name="usecommonnarration")
	private String usecommonnarration;
	@Column(name="narrationsforeachentry")
	private String narrationsforeachentry;
	@Column(name="nameofclass")
	private String nameofclass;
	@Column(name="department")
	private String department;
	@Column(name="manager")
	private String manager;
	@Column(name="deltby")
	private String deltby;
	@Column(name="getdate")
	private String getdate;
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTypeofvocher() {
		return typeofvocher;
	}
	public void setTypeofvocher(String typeofvocher) {
		this.typeofvocher = typeofvocher;
	}
	public String getAbbr() {
		return abbr;
	}
	public void setAbbr(String abbr) {
		this.abbr = abbr;
	}
	public String getVochernumbering() {
		return vochernumbering;
	}
	public void setVochernumbering(String vochernumbering) {
		this.vochernumbering = vochernumbering;
	}
	public String getAdvconfiguration() {
		return advconfiguration;
	}
	public void setAdvconfiguration(String advconfiguration) {
		this.advconfiguration = advconfiguration;
	}
	public String getUseeffectivedates() {
		return useeffectivedates;
	}
	public void setUseeffectivedates(String useeffectivedates) {
		this.useeffectivedates = useeffectivedates;
	}
	public String getUsecommonnarration() {
		return usecommonnarration;
	}
	public void setUsecommonnarration(String usecommonnarration) {
		this.usecommonnarration = usecommonnarration;
	}
	public String getNarrationsforeachentry() {
		return narrationsforeachentry;
	}
	public void setNarrationsforeachentry(String narrationsforeachentry) {
		this.narrationsforeachentry = narrationsforeachentry;
	}
	public String getNameofclass() {
		return nameofclass;
	}
	public void setNameofclass(String nameofclass) {
		this.nameofclass = nameofclass;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public String getDeltby() {
		return deltby;
	}
	public void setDeltby(String deltby) {
		this.deltby = deltby;
	}
	public String getGetdate() {
		return getdate;
	}
	public void setGetdate(String getdate) {
		this.getdate = getdate;
	}
	
}
