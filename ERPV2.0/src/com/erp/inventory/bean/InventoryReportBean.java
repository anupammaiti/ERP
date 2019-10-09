package com.erp.inventory.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Inventoryreport")
public class InventoryReportBean {
	@Id
	@GeneratedValue
	@Column(name = "sno")
	private long sno;
	@Column(name = "today")
	private String today;
	@Column(name = "itemname")
	private String itemname;
	@Column(name = "deptlocation")
	private String deptlocation;
	@Column(name = "datein")
	private String datein;
	@Column(name = "po")
	private String po;
	@Column(name = "amount1")
	private String amount1;
	@Column(name = "recivedby")
	private String recivedby;
	@Column(name = "dateout")
	private String dateout;
	@Column(name = "invoice")
	private String invoice;
	@Column(name = "amount2")
	private String amount2;
	@Column(name = "Stockleft")
	private String Stockleft;

	public long getSno() {
		return sno;
	}

	public void setSno(long sno) {
		this.sno = sno;
	}

	public String getToday() {
		return today;
	}

	public void setToday(String today) {
		this.today = today;
	}

	public String getItemname() {
		return itemname;
	}

	public void setItemname(String itemname) {
		this.itemname = itemname;
	}

	public String getDeptlocation() {
		return deptlocation;
	}

	public void setDeptlocation(String deptlocation) {
		this.deptlocation = deptlocation;
	}

	public String getDatein() {
		return datein;
	}

	public void setDatein(String datein) {
		this.datein = datein;
	}

	public String getPo() {
		return po;
	}

	public void setPo(String po) {
		this.po = po;
	}

	public String getAmount1() {
		return amount1;
	}

	public void setAmount1(String amount1) {
		this.amount1 = amount1;
	}

	public String getRecivedby() {
		return recivedby;
	}

	public void setRecivedby(String recivedby) {
		this.recivedby = recivedby;
	}

	public String getDateout() {
		return dateout;
	}

	public void setDateout(String dateout) {
		this.dateout = dateout;
	}

	public String getInvoice() {
		return invoice;
	}

	public void setInvoice(String invoice) {
		this.invoice = invoice;
	}

	public String getAmount2() {
		return amount2;
	}

	public void setAmount2(String amount2) {
		this.amount2 = amount2;
	}

	public String getStockleft() {
		return Stockleft;
	}

	public void setStockleft(String stockleft) {
		Stockleft = stockleft;
	}

}
