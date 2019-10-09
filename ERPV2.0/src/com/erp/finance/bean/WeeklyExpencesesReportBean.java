package com.erp.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="weeklyexpencesesreport")
public class WeeklyExpencesesReportBean {

	@Id
	@GeneratedValue
	@Column(name="sno")
	private String sno;
	@Column(name="fromdate")
	private String fromdate;
	@Column(name="todate")
	private String todate;
	@Column(name="empname")
	private String empname;
	@Column(name="deptoffice")
	private String deptoffice;
	@Column(name="reportdate")
	private String reportdate;
	@Column(name="dateoftrip")
	private String dateoftrip;
	@Column(name="fromdate1")
	private String fromdate1;
	@Column(name="todate1")
	private String todate1;
	@Column(name="sundate")
	private String sundate;
	@Column(name="suntransaction")
	private String suntransaction;
	@Column(name="sunautomobile")
	private String sunautomobile;
	@Column(name="sunloding")
	private String sunloding;
	@Column(name="sunmeals")
	private String sunmeals;
	@Column(name="sunentertainment")
	private String sunentertainment;
	@Column(name="sunmisc")
	private String sunmisc;
	@Column(name="suntotal")
	private String suntotal;
	
	@Column(name="mondate")
	private String mondate;
	@Column(name="montransaction")
	private String montransaction;
	@Column(name="monautomobile")
	private String monautomobile;
	@Column(name="monloding")
	private String monloding;
	@Column(name="monmeals")
	private String monmeals;
	@Column(name="monentertainment")
	private String monentertainment;
	@Column(name="monmisc")
	private String monmisc;
	@Column(name="montotal")
	private String montotal;

	@Column(name="tuedate")
	private String tuedate;
	@Column(name="tuetransaction")
	private String tuetransaction;
	@Column(name="tueautomobile")
	private String tueautomobile;
	@Column(name="tueloding")
	private String tueloding;
	@Column(name="tuemeals")
	private String tuemeals;
	@Column(name="tueentertainment")
	private String tueentertainment;
	@Column(name="tuemisc")
	private String tuemisc;
	@Column(name="tuetotal")
	private String tuetotal;

	@Column(name="weddate")
	private String weddate;
	@Column(name="wedtransaction")
	private String wedtransaction;
	@Column(name="wedautomobile")
	private String wedautomobile;
	@Column(name="wedloding")
	private String wedloding;
	@Column(name="wedmeals")
	private String wedmeals;
	@Column(name="wedentertainment")
	private String wedentertainment;
	@Column(name="wedmisc")
	private String wedmisc;
	@Column(name="wedtotal")
	private String wedtotal;
	
	@Column(name="thudate")
	private String thudate;
	@Column(name="thutransaction")
	private String thutransaction;
	@Column(name="thuautomobile")
	private String thuautomobile;
	@Column(name="thuloding")
	private String thuloding;
	@Column(name="thumeals")
	private String thumeals;
	@Column(name="thuentertainment")
	private String thuentertainment;
	@Column(name="thumisc")
	private String thumisc;
	@Column(name="thutotal")
	private String thutotal;
	
	@Column(name="fridate")
	private String fridate;
	@Column(name="fritransaction")
	private String fritransaction;
	@Column(name="friautomobile")
	private String friautomobile;
	@Column(name="friloding")
	private String friloding;
	@Column(name="frimeals")
	private String frimeals;
	@Column(name="frientertainment")
	private String frientertainment;
	@Column(name="frimisc")
	private String frimisc;
	@Column(name="fritotal")
	private String fritotal;
	
	@Column(name="satdate")
	private String satdate;
	@Column(name="sattransaction")
	private String sattransaction;
	@Column(name="satautomobile")
	private String satautomobile;
	@Column(name="satloding")
	private String satloding;
	@Column(name="satmeals")
	private String satmeals;
	@Column(name="satentertainment")
	private String satentertainment;
	@Column(name="satmisc")
	private String satmisc;
	@Column(name="sattotal")
	private String sattotal;
	
	@Column(name="gendate")
	private String gendate;
	
	public String getSno() {
		return sno;
	}
	public void setSno(String sno) {
		this.sno = sno;
	}
	public String getFromdate() {
		return fromdate;
	}
	public void setFromdate(String fromdate) {
		this.fromdate = fromdate;
	}
	public String getTodate() {
		return todate;
	}
	public void setTodate(String todate) {
		this.todate = todate;
	}
	public String getEmpname() {
		return empname;
	}
	public void setEmpname(String empname) {
		this.empname = empname;
	}
	public String getDeptoffice() {
		return deptoffice;
	}
	public void setDeptoffice(String deptoffice) {
		this.deptoffice = deptoffice;
	}
	public String getReportdate() {
		return reportdate;
	}
	public void setReportdate(String reportdate) {
		this.reportdate = reportdate;
	}
	public String getDateoftrip() {
		return dateoftrip;
	}
	public void setDateoftrip(String dateoftrip) {
		this.dateoftrip = dateoftrip;
	}
	public String getFromdate1() {
		return fromdate1;
	}
	public void setFromdate1(String fromdate1) {
		this.fromdate1 = fromdate1;
	}
	public String getTodate1() {
		return todate1;
	}
	public void setTodate1(String todate1) {
		this.todate1 = todate1;
	}
	public String getSundate() {
		return sundate;
	}
	public void setSundate(String sundate) {
		this.sundate = sundate;
	}
	public String getSuntransaction() {
		return suntransaction;
	}
	public void setSuntransaction(String suntransaction) {
		this.suntransaction = suntransaction;
	}
	public String getSunautomobile() {
		return sunautomobile;
	}
	public void setSunautomobile(String sunautomobile) {
		this.sunautomobile = sunautomobile;
	}
	public String getSunloding() {
		return sunloding;
	}
	public void setSunloding(String sunloding) {
		this.sunloding = sunloding;
	}
	public String getSunmeals() {
		return sunmeals;
	}
	public void setSunmeals(String sunmeals) {
		this.sunmeals = sunmeals;
	}
	public String getSunentertainment() {
		return sunentertainment;
	}
	public void setSunentertainment(String sunentertainment) {
		this.sunentertainment = sunentertainment;
	}
	public String getSunmisc() {
		return sunmisc;
	}
	public void setSunmisc(String sunmisc) {
		this.sunmisc = sunmisc;
	}
	public String getSuntotal() {
		return suntotal;
	}
	public void setSuntotal(String suntotal) {
		this.suntotal = suntotal;
	}
	public String getMondate() {
		return mondate;
	}
	public void setMondate(String mondate) {
		this.mondate = mondate;
	}
	public String getMontransaction() {
		return montransaction;
	}
	public void setMontransaction(String montransaction) {
		this.montransaction = montransaction;
	}
	public String getMonautomobile() {
		return monautomobile;
	}
	public void setMonautomobile(String monautomobile) {
		this.monautomobile = monautomobile;
	}
	public String getMonloding() {
		return monloding;
	}
	public void setMonloding(String monloding) {
		this.monloding = monloding;
	}
	public String getMonmeals() {
		return monmeals;
	}
	public void setMonmeals(String monmeals) {
		this.monmeals = monmeals;
	}
	public String getMonentertainment() {
		return monentertainment;
	}
	public void setMonentertainment(String monentertainment) {
		this.monentertainment = monentertainment;
	}
	public String getMonmisc() {
		return monmisc;
	}
	public void setMonmisc(String monmisc) {
		this.monmisc = monmisc;
	}
	public String getMontotal() {
		return montotal;
	}
	public void setMontotal(String montotal) {
		this.montotal = montotal;
	}
	public String getTuedate() {
		return tuedate;
	}
	public void setTuedate(String tuedate) {
		this.tuedate = tuedate;
	}
	public String getTuetransaction() {
		return tuetransaction;
	}
	public void setTuetransaction(String tuetransaction) {
		this.tuetransaction = tuetransaction;
	}
	public String getTueautomobile() {
		return tueautomobile;
	}
	public void setTueautomobile(String tueautomobile) {
		this.tueautomobile = tueautomobile;
	}
	public String getTueloding() {
		return tueloding;
	}
	public void setTueloding(String tueloding) {
		this.tueloding = tueloding;
	}
	public String getTuemeals() {
		return tuemeals;
	}
	public void setTuemeals(String tuemeals) {
		this.tuemeals = tuemeals;
	}
	public String getTueentertainment() {
		return tueentertainment;
	}
	public void setTueentertainment(String tueentertainment) {
		this.tueentertainment = tueentertainment;
	}
	public String getTuemisc() {
		return tuemisc;
	}
	public void setTuemisc(String tuemisc) {
		this.tuemisc = tuemisc;
	}
	public String getTuetotal() {
		return tuetotal;
	}
	public void setTuetotal(String tuetotal) {
		this.tuetotal = tuetotal;
	}
	public String getWeddate() {
		return weddate;
	}
	public void setWeddate(String weddate) {
		this.weddate = weddate;
	}
	public String getWedtransaction() {
		return wedtransaction;
	}
	public void setWedtransaction(String wedtransaction) {
		this.wedtransaction = wedtransaction;
	}
	public String getWedautomobile() {
		return wedautomobile;
	}
	public void setWedautomobile(String wedautomobile) {
		this.wedautomobile = wedautomobile;
	}
	public String getWedloding() {
		return wedloding;
	}
	public void setWedloding(String wedloding) {
		this.wedloding = wedloding;
	}
	public String getWedmeals() {
		return wedmeals;
	}
	public void setWedmeals(String wedmeals) {
		this.wedmeals = wedmeals;
	}
	public String getWedentertainment() {
		return wedentertainment;
	}
	public void setWedentertainment(String wedentertainment) {
		this.wedentertainment = wedentertainment;
	}
	public String getWedmisc() {
		return wedmisc;
	}
	public void setWedmisc(String wedmisc) {
		this.wedmisc = wedmisc;
	}
	public String getWedtotal() {
		return wedtotal;
	}
	public void setWedtotal(String wedtotal) {
		this.wedtotal = wedtotal;
	}
	public String getThudate() {
		return thudate;
	}
	public void setThudate(String thudate) {
		this.thudate = thudate;
	}
	public String getThutransaction() {
		return thutransaction;
	}
	public void setThutransaction(String thutransaction) {
		this.thutransaction = thutransaction;
	}
	public String getThuautomobile() {
		return thuautomobile;
	}
	public void setThuautomobile(String thuautomobile) {
		this.thuautomobile = thuautomobile;
	}
	public String getThuloding() {
		return thuloding;
	}
	public void setThuloding(String thuloding) {
		this.thuloding = thuloding;
	}
	public String getThumeals() {
		return thumeals;
	}
	public void setThumeals(String thumeals) {
		this.thumeals = thumeals;
	}
	public String getThuentertainment() {
		return thuentertainment;
	}
	public void setThuentertainment(String thuentertainment) {
		this.thuentertainment = thuentertainment;
	}
	public String getThumisc() {
		return thumisc;
	}
	public void setThumisc(String thumisc) {
		this.thumisc = thumisc;
	}
	public String getThutotal() {
		return thutotal;
	}
	public void setThutotal(String thutotal) {
		this.thutotal = thutotal;
	}
	public String getFridate() {
		return fridate;
	}
	public void setFridate(String fridate) {
		this.fridate = fridate;
	}
	public String getFritransaction() {
		return fritransaction;
	}
	public void setFritransaction(String fritransaction) {
		this.fritransaction = fritransaction;
	}
	public String getFriautomobile() {
		return friautomobile;
	}
	public void setFriautomobile(String friautomobile) {
		this.friautomobile = friautomobile;
	}
	public String getFriloding() {
		return friloding;
	}
	public void setFriloding(String friloding) {
		this.friloding = friloding;
	}
	public String getFrimeals() {
		return frimeals;
	}
	public void setFrimeals(String frimeals) {
		this.frimeals = frimeals;
	}
	public String getFrientertainment() {
		return frientertainment;
	}
	public void setFrientertainment(String frientertainment) {
		this.frientertainment = frientertainment;
	}
	public String getFrimisc() {
		return frimisc;
	}
	public void setFrimisc(String frimisc) {
		this.frimisc = frimisc;
	}
	public String getFritotal() {
		return fritotal;
	}
	public void setFritotal(String fritotal) {
		this.fritotal = fritotal;
	}
	public String getSatdate() {
		return satdate;
	}
	public void setSatdate(String satdate) {
		this.satdate = satdate;
	}
	public String getSattransaction() {
		return sattransaction;
	}
	public void setSattransaction(String sattransaction) {
		this.sattransaction = sattransaction;
	}
	public String getSatautomobile() {
		return satautomobile;
	}
	public void setSatautomobile(String satautomobile) {
		this.satautomobile = satautomobile;
	}
	public String getSatloding() {
		return satloding;
	}
	public void setSatloding(String satloding) {
		this.satloding = satloding;
	}
	public String getSatmeals() {
		return satmeals;
	}
	public void setSatmeals(String satmeals) {
		this.satmeals = satmeals;
	}
	public String getSatentertainment() {
		return satentertainment;
	}
	public void setSatentertainment(String satentertainment) {
		this.satentertainment = satentertainment;
	}
	public String getSatmisc() {
		return satmisc;
	}
	public void setSatmisc(String satmisc) {
		this.satmisc = satmisc;
	}
	public String getSattotal() {
		return sattotal;
	}
	public void setSattotal(String sattotal) {
		this.sattotal = sattotal;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	
	
}
