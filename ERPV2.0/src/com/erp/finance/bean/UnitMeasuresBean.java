package com.erp.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="unitmeasures")
public class UnitMeasuresBean {
@Id
@GeneratedValue
@Column(name="sno")
private long sno;
@Column(name="type")
private String type;
@Column(name="symbol")
private String symbol;
@Column(name="formalname")
private String formalname;
@Column(name="numofdec")
private String numofdec;
public long getSno() {
	return sno;
}
public void setSno(long sno) {
	this.sno = sno;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public String getSymbol() {
	return symbol;
}
public void setSymbol(String symbol) {
	this.symbol = symbol;
}
public String getFormalname() {
	return formalname;
}
public void setFormalname(String formalname) {
	this.formalname = formalname;
}
public String getNumofdec() {
	return numofdec;
}
public void setNumofdec(String numofdec) {
	this.numofdec = numofdec;
}

}
