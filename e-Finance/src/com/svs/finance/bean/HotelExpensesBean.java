package com.svs.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="tl_fn_hotelexpenses")
public class HotelExpensesBean {

	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="empname")
	private String empname;
	@Column(name="phoneno")
	private String phoneno;
	@Column(name="location")
	private String location;
	@Column(name="approvedby")
	private String approvedby;
	@Column(name="department")
	private String department;
	@Column(name="date1")
	private String date1;
	@Column(name="day1")
	private String day1;
	@Column(name="noofdays")
	private String noofdays;
	@Column(name="hotelname")
	private String hotelname;
	@Column(name="hotellocation")
	private String hotellocation;
	@Column(name="amountperday")
	private String amountperday;
	@Column(name="totalamount")
	private String totalamount;
	@Column(name="department1")
	private String department1;
	@Column(name="manager")
	private String manager;
	@Column(name="deltby")
	private String deltby;
	@Column(name="gendate")
	private String gendate;
	@Column(name="ledgername")
	private String ledgername;
	@Column(name="login_comp")
	private String login_comp;
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getEmpname() {
		return empname;
	}
	public void setEmpname(String empname) {
		this.empname = empname;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getApprovedby() {
		return approvedby;
	}
	public void setApprovedby(String approvedby) {
		this.approvedby = approvedby;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getDate1() {
		return date1;
	}
	public void setDate1(String date1) {
		this.date1 = date1;
	}
	public String getDay1() {
		return day1;
	}
	public void setDay1(String day1) {
		this.day1 = day1;
	}
	public String getNoofdays() {
		return noofdays;
	}
	public void setNoofdays(String noofdays) {
		this.noofdays = noofdays;
	}
	public String getHotelname() {
		return hotelname;
	}
	public void setHotelname(String hotelname) {
		this.hotelname = hotelname;
	}
	public String getHotellocation() {
		return hotellocation;
	}
	public void setHotellocation(String hotellocation) {
		this.hotellocation = hotellocation;
	}
	public String getAmountperday() {
		return amountperday;
	}
	public void setAmountperday(String amountperday) {
		this.amountperday = amountperday;
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
	public String getDepartment1() {
		return department1;
	}
	public void setDepartment1(String department1) {
		this.department1 = department1;
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
	public String getLedgername() {
		return ledgername;
	}
	public void setLedgername(String ledgername) {
		this.ledgername = ledgername;
	}
	public String getLogin_comp() {
		return login_comp;
	}
	public void setLogin_comp(String login_comp) {
		this.login_comp = login_comp;
	}

	
}
