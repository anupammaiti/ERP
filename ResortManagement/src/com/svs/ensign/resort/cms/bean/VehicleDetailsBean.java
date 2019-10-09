package com.svs.ensign.resort.cms.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="tl_vehicledetails")
public class VehicleDetailsBean {

	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="company_name")
	private String company_name;
	@Column(name="vehicle_no")
	private String vehicle_no;
	@Column(name="vehicle_model")
	private String vehicle_model;
	@Column(name="tank_capacity")
	private String tank_capacity;
	@Column(name="fuel_type")
	private String fuel_type;
	@Column(name="vehicle_milage")
	private String vehicle_milage;
	@Column(name="vehicle_type")
	private String vehicle_type;
	@Column(name="service")
	private String service;
	@Column(name="gendate")
	private String gendate;
	@Column(name="driver_name")
	private String driver_name;
	@Column(name="facility")
	private String facility;//A/c or NonA/c
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getVehicle_no() {
		return vehicle_no;
	}
	public void setVehicle_no(String vehicle_no) {
		this.vehicle_no = vehicle_no;
	}
	public String getVehicle_model() {
		return vehicle_model;
	}
	public void setVehicle_model(String vehicle_model) {
		this.vehicle_model = vehicle_model;
	}
	public String getTank_capacity() {
		return tank_capacity;
	}
	public void setTank_capacity(String tank_capacity) {
		this.tank_capacity = tank_capacity;
	}
	public String getFuel_type() {
		return fuel_type;
	}
	public void setFuel_type(String fuel_type) {
		this.fuel_type = fuel_type;
	}
	public String getVehicle_milage() {
		return vehicle_milage;
	}
	public void setVehicle_milage(String vehicle_milage) {
		this.vehicle_milage = vehicle_milage;
	}
	public String getService() {
		return service;
	}
	public void setService(String service) {
		this.service = service;
	}
	
	public String getVehicle_type() {
		return vehicle_type;
	}
	public void setVehicle_type(String vehicle_type) {
		this.vehicle_type = vehicle_type;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	public String getDriver_name() {
		return driver_name;
	}
	public void setDriver_name(String driver_name) {
		this.driver_name = driver_name;
	}

	
}
