package com.erp.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="vochertype")
public class VocherTypeBean {
@Id
@GeneratedValue
@Column(name="sno")
	private long sno;
@Column(name="vochername")
	private String vochername;
public long getSno() {
	return sno;
}
public String getVochername() {
	return vochername;
}
public void setSno(long sno) {
	this.sno = sno;
}
public void setVochername(String vochername) {
	this.vochername = vochername;
}


}
