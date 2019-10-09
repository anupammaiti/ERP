/**
 * 
 */
package com.erp.sales.sl.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Dell
 *
 */

@Entity
@Table(name="invoice")
public class InvoiceFormBean {
	@Id
	@GeneratedValue
	@Column(name="sno",unique=true)
	private long sno;
	@Column(name="custname")
	private String custname;
	@Column(name="invoiceid")
	private String invoiceid;
	@Column(name="invoiceno",length=6)
	private String invoiceno;
	@Column(name="today")
	private String today;
	@Column(name="referenceno")
	private String referenceno;
	@Column(name="srlno")
	private String srlno;
	@Column(name="name")
	private String name;
	@Column(name="unitprice")
	private String unitprice;
	@Column(name="price")
	private String price;
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
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
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
	
}
