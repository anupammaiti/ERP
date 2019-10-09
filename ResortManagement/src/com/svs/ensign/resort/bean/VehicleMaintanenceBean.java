package com.svs.ensign.resort.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_vm_maintanence")
public class VehicleMaintanenceBean {

	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="vehno")
	private String vehno;
	@Column(name="companyname")
	private String companyname;
	@Column(name="modelno")
	private String modelno;
	@Column(name="vehicletype")
	private String vehicletype;
	@Column(name="service_givendate")
	private String service_givendate;
	@Column(name="service_deliverydate")
	private String service_deliverydate;
	@Column(name="spare_parts")
	private String spare_parts;
	@Column(name="amount")
	private String amount;
	@Column(name="serviceamount")
	private String serviceamount;
	@Column(name="service_compname")
	private String service_compname;
	@Column(name="service_phoneno")
	private String service_phoneno;
	@Column(name="service_mobileno")
	private String service_mobileno;
	@Column(name="totalamount")
	private String totalamount;
	@Column(name="gendate")
	private String gendate;
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getVehno() {
		return vehno;
	}
	public void setVehno(String vehno) {
		this.vehno = vehno;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getModelno() {
		return modelno;
	}
	public void setModelno(String modelno) {
		this.modelno = modelno;
	}
	public String getVehicletype() {
		return vehicletype;
	}
	public void setVehicletype(String vehicletype) {
		this.vehicletype = vehicletype;
	}
	public String getService_givendate() {
		return service_givendate;
	}
	public void setService_givendate(String service_givendate) {
		this.service_givendate = service_givendate;
	}
	public String getService_deliverydate() {
		return service_deliverydate;
	}
	public void setService_deliverydate(String service_deliverydate) {
		this.service_deliverydate = service_deliverydate;
	}
	public String getSpare_parts() {
		return spare_parts;
	}
	public void setSpare_parts(String spare_parts) {
		this.spare_parts = spare_parts;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getServiceamount() {
		return serviceamount;
	}
	public void setServiceamount(String serviceamount) {
		this.serviceamount = serviceamount;
	}
	public String getService_compname() {
		return service_compname;
	}
	public void setService_compname(String service_compname) {
		this.service_compname = service_compname;
	}
	public String getService_phoneno() {
		return service_phoneno;
	}
	public void setService_phoneno(String service_phoneno) {
		this.service_phoneno = service_phoneno;
	}
	public String getService_mobileno() {
		return service_mobileno;
	}
	public void setService_mobileno(String service_mobileno) {
		this.service_mobileno = service_mobileno;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	public String getTotalamount() {
		return totalamount;
	}
	public void setTotalamount(String totalamount) {
		this.totalamount = totalamount;
	}
	
}
