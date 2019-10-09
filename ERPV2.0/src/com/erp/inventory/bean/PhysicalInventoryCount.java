package com.erp.inventory.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="PhysicalInventoryCount")
public class PhysicalInventoryCount {
	
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="sheet")
	private String sheet;
	@Column(name="location")
	private String location;
	@Column(name="itemnumber")
	private String itemnumber;
	@Column(name="description")
	private String description;
	@Column(name="quantity")
	private String quantity;
	@Column(name="location1")
	private String location1;

	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getSheet() {
		return sheet;
	}
	public void setSheet(String sheet) {
		this.sheet = sheet;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getItemnumber() {
		return itemnumber;
	}
	public void setItemnumber(String itemnumber) {
		this.itemnumber = itemnumber;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getLocation1() {
		return location1;
	}
	public void setLocation1(String location1) {
		this.location1 = location1;
	}
	

}
