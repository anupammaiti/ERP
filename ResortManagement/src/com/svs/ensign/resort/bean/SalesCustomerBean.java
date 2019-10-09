package com.svs.ensign.resort.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 * 
 * @author Ravikiran
 *
 */
@Entity
@Table(name="tl_sl_customer")
public class SalesCustomerBean {

	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="custid")
	private String custid;
	@Column(name="bankaccount")
	private String bankaccount;
	@Column(name="bankname")
	private String bankname;
	@Column(name="price")
	private String price;
	@Column(name="cust_price")
	private String cust_price;
	@Column(name="villatype")
	private String villatype;
	@Column(name="villafacing")
	private String villafacing;
	@Column(name="noofinstallments")
	private String noofinstallments;
	@Column(name="villasize")
	private String villasize;
	@Column(name="platsize")
	private String platsize;
	@Column(name="payingtype")
	private String payingtype;
	@Column(name="gendate")
	private String gendate;
	@Column(name="department")
	private String department;
	@Column(name="manager")
	private String manager;
	@Column(name="executive")
	private String executive;
	@Column(name="depart1")
	private String depart1;
	@Column(name="fnmanager")
	private String fnmanager;
	@Column(name="fnexecutive")
	private String fnexecutive;
	@Column(name="status")
	private String status;
	
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getCustid() {
		return custid;
	}
	public void setCustid(String custid) {
		this.custid = custid;
	}
	public String getBankaccount() {
		return bankaccount;
	}
	public void setBankaccount(String bankaccount) {
		this.bankaccount = bankaccount;
	}
	public String getBankname() {
		return bankname;
	}
	public void setBankname(String bankname) {
		this.bankname = bankname;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getCust_price() {
		return cust_price;
	}
	public void setCust_price(String cust_price) {
		this.cust_price = cust_price;
	}
	public String getVillatype() {
		return villatype;
	}
	public void setVillatype(String villatype) {
		this.villatype = villatype;
	}
	public String getVillafacing() {
		return villafacing;
	}
	public void setVillafacing(String villafacing) {
		this.villafacing = villafacing;
	}
	public String getNoofinstallments() {
		return noofinstallments;
	}
	public void setNoofinstallments(String noofinstallments) {
		this.noofinstallments = noofinstallments;
	}
	public String getVillasize() {
		return villasize;
	}
	public void setVillasize(String villasize) {
		this.villasize = villasize;
	}
	public String getPlatsize() {
		return platsize;
	}
	public void setPlatsize(String platsize) {
		this.platsize = platsize;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
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
	public String getExecutive() {
		return executive;
	}
	public void setExecutive(String executive) {
		this.executive = executive;
	}
	public String getDepart1() {
		return depart1;
	}
	public void setDepart1(String depart1) {
		this.depart1 = depart1;
	}
	public String getFnmanager() {
		return fnmanager;
	}
	public void setFnmanager(String fnmanager) {
		this.fnmanager = fnmanager;
	}
	public String getFnexecutive() {
		return fnexecutive;
	}
	public void setFnexecutive(String fnexecutive) {
		this.fnexecutive = fnexecutive;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPayingtype() {
		return payingtype;
	}
	public void setPayingtype(String payingtype) {
		this.payingtype = payingtype;
	}
	
}
