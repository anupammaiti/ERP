package com.erp.inventory.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "purchaserequsition")
public class PurchaseRequisitionBean {
	@Id
	@GeneratedValue
	@Column(name = "sno")
	private long sno;
	@Column(name = "itemname")
	private String itemname;
	@Column(name = "itemcode")
	private String itemcode;
	@Column(name = "internalcode")
	private String internalcode;
	@Column(name = "qntyrequired")
	private String qntyrequired;
	@Column(name = "remarks")
	private String remarks;
	@Column(name = "date")
	private String date;
	@Column(name="partyname")
	private String partyname;
	@Column(name="quantityno")
	private String quantityno;
	
	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public long getSno() {
		return sno;
	}

	public void setSno(long sno) {
		this.sno = sno;
	}

	public String getItemname() {
		return itemname;
	}

	public void setItemname(String itemname) {
		this.itemname = itemname;
	}

	public String getItemcode() {
		return itemcode;
	}

	public void setItemcode(String itemcode) {
		this.itemcode = itemcode;
	}

	public String getInternalcode() {
		return internalcode;
	}

	public void setInternalcode(String internalcode) {
		this.internalcode = internalcode;
	}

	public String getQntyrequired() {
		return qntyrequired;
	}

	public void setQntyrequired(String qntyrequired) {
		this.qntyrequired = qntyrequired;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getPartyname() {
		return partyname;
	}

	public void setPartyname(String partyname) {
		this.partyname = partyname;
	}

	public String getQuantityno() {
		return quantityno;
	}

	public void setQuantityno(String quantityno) {
		this.quantityno = quantityno;
	}

}
