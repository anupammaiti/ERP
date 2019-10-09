/**
 * 
 */
package com.svs.ensign.resort.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author SVS
 *
 */

@Entity
@Table(name="tl_sl_invoice")
public class InvoiceFormBean {
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="custname")
	private String custname;
	@Column(name="invoiceid",unique=true,nullable=false)
	private String invoiceid;
	@Column(name="invoiceno",length=6,unique=true,nullable=false)
	private String invoiceno;
	@Column(name="today")
	private String today;
	@Column(name="referenceno",unique=true,nullable=false)
	private String referenceno;
	@Column(name="srlno")
	private String srlno;
	@Column(name="name")
	private String name;
	@Column(name="unitprice")
	private String unitprice;
	@Column(name="quantity")
	private String quantity;
	@Column(name="servicetax")
	private String servicetax;
	@Column(name="vat")
	private String vat;
	@Column(name="totalamount")
	private String totalamount;
	@Column(name="department")
	private String department;
	@Column(name="inputdate")
	private String inputdate;
	@Column(name="netamount")
	private String netamount;
	@Column(name="gendate")
	private String gendate;
	@Column(name="manager")
	private String manager;
	@Column(name="deltby")
	private String deltby;
	@Column(name="dept1")
	private String dept1;
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getInvoiceno() {
		return invoiceno;
	}
	public void setInvoiceno(String invoiceno) {
		this.invoiceno = invoiceno;
	}
	public String getToday() {
		return today;
	}
	public void setToday(String today) {
		this.today = today;
	}
	public String getReferenceno() {
		return referenceno;
	}
	public void setReferenceno(String referenceno) {
		this.referenceno = referenceno;
	}
	public String getSrlno() {
		return srlno;
	}
	public void setSrlno(String srlno) {
		this.srlno = srlno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUnitprice() {
		return unitprice;
	}
	public void setUnitprice(String unitprice) {
		this.unitprice = unitprice;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getServicetax() {
		return servicetax;
	}
	public void setServicetax(String servicetax) {
		this.servicetax = servicetax;
	}
	public String getVat() {
		return vat;
	}
	public void setVat(String vat) {
		this.vat = vat;
	}
	public String getTotalamount() {
		return totalamount;
	}
	public void setTotalamount(String totalamount) {
		this.totalamount = totalamount;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getCustname() {
		return custname;
	}
	public void setCustname(String custname) {
		this.custname = custname;
	}
	public String getInputdate() {
		return inputdate;
	}
	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}
	public String getInvoiceid() {
		return invoiceid;
	}
	public void setInvoiceid(String invoiceid) {
		this.invoiceid = invoiceid;
	}
	public String getNetamount() {
		return netamount;
	}
	public void setNetamount(String netamount) {
		this.netamount = netamount;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
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
	public String getDept1() {
		return dept1;
	}
	public void setDept1(String dept1) {
		this.dept1 = dept1;
	}
	
}
