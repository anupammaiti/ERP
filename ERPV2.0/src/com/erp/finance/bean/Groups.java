package com.erp.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="groups")
public class Groups {
@Id
@GeneratedValue
@Column(name="sno")
private long sno;

@Column(name="groupname")
private String groupname;

public long getSno() {
	return sno;
}
public void setSno(long sno) {
	this.sno = sno;
}

public String getGroupname() {
	return groupname;
}
public void setGroupname(String groupname) {
	this.groupname = groupname;
}


}
