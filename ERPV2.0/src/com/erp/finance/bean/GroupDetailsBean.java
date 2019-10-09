package com.erp.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity @Table(name="groupdetails")
public class GroupDetailsBean {
@Id @GeneratedValue @Column(name="sno") private long sno;
@Column(name="name") private String name;
@Column(name="alias") private String alias;
@Column(name="under") private String under;
@Column(name="natureofgroup") private String natureofgroup;
@Column(name="grpbeh") private String grpbeh;
@Column(name="netrep") private String netrep;
@Column(name="usecal") private String usecal;
@Column(name="metall") private String metall;
@Column(name="getdate") private String getdate;


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
public String getAlias() {
	return alias;
}
public void setAlias(String alias) {
	this.alias = alias;
}
public String getUnder() {
	return under;
}
public void setUnder(String under) {
	this.under = under;
}
public String getNatureofgroup() {
	return natureofgroup;
}
public void setNatureofgroup(String natureofgroup) {
	this.natureofgroup = natureofgroup;
}
public String getGrpbeh() {
	return grpbeh;
}
public void setGrpbeh(String grpbeh) {
	this.grpbeh = grpbeh;
}
public String getNetrep() {
	return netrep;
}
public void setNetrep(String netrep) {
	this.netrep = netrep;
}
public String getUsecal() {
	return usecal;
}
public void setUsecal(String usecal) {
	this.usecal = usecal;
}
public String getMetall() {
	return metall;
}
public void setMetall(String metall) {
	this.metall = metall;
}
public String getGetdate() {
	return getdate;
}
public void setGetdate(String getdate) {
	this.getdate = getdate;
}


}
