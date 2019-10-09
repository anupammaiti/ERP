package com.svs.finance.bean;

import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name="tl_student")
public class StudentBean {
	
	@Id
	@GeneratedValue
	@Column(name="sno")
	public long sno;
	@Column(name="university")
	private String university;
	@Column(name="course")
	private String course;
	@Column(name="entrollno")
	private String entrollno;
	@Column(name="name")
	private String name;
	@Column(name="fatherName")
	private String fatherName;
	@Column(name="motherName")
	private String motherName;
	@Column(name="dob")
	private String dob;
	@Column(name="address")
	private String address;
	@Column(name="phoneno")
	private String phoneno;
	@Column(name="email")
	private String email;
	@Column(name="sem1")
	private String sem1;
	@Column(name="sem2")
	private String sem2;
	@Column(name="sem3")
	private String sem3;
	@Column(name="sem4")
	private String sem4;
	@Column(name="sem5")
	private String sem5;
	@Column(name="sem6")
	private String sem6;
	@Column(name="sem7")
	private String sem7;
	@Column(name="sem8")
	private String sem8;
	
	@Column(name="provisnal")
	private String provisnal;
	@Column(name="migration")
	private String migration;
	@Column(name="od")
	private String od;
	@Column(name="longmemo")
	private String longmemo;
	@Column(name="other")
	private String other;
	@Column(name="rcno")
	private String rcno;
	@Column(name="date")
	private String date;
	@Column(name="ddorcheck")
	private String ddorcheck;
	@Column(name="coursefee")
	private String coursefee;
	@Column(name="examfee")
	private String examfee;
	@Column(name="centerfee")
	private String centerfee;
	@Column(name=" applicationfee")
	private String applicationfee;
	@Column(name="otherfee")
	private String otherfee;
	@Column(name="totalpaid")
	private String totalpaid;
	@Column(name="paid")
	private String paid;
	@Column(name="balance")
	private String balance;
	@Column(name="deltby")
	private String deltby;
	@Column(name="collegename")
	private String collegename;
	@Column(name="gendate")
	private String gendate;
	
	@Column(name="imagePath")
	private String imagPath;
	@Column(name="filename")
	private String filename;
	@Column(name="studentImage")
	private String studentImage;
	
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getUniversity() {
		return university;
	}
	public void setUniversity(String university) {
		this.university = university;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getEntrollno() {
		return entrollno;
	}
	public void setEntrollno(String entrollno) {
		this.entrollno = entrollno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFatherName() {
		return fatherName;
	}
	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}
	public String getMotherName() {
		return motherName;
	}
	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getProvisnal() {
		return provisnal;
	}
	public void setProvisnal(String provisnal) {
		this.provisnal = provisnal;
	}
	public String getMigration() {
		return migration;
	}
	public void setMigration(String migration) {
		this.migration = migration;
	}
	public String getOd() {
		return od;
	}
	public void setOd(String od) {
		this.od = od;
	}
	public String getLongmemo() {
		return longmemo;
	}
	public void setLongmemo(String longmemo) {
		this.longmemo = longmemo;
	}
	public String getRcno() {
		return rcno;
	}
	public void setRcno(String rcno) {
		this.rcno = rcno;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDdorcheck() {
		return ddorcheck;
	}
	public void setDdorcheck(String ddorcheck) {
		this.ddorcheck = ddorcheck;
	}
	public String getCoursefee() {
		return coursefee;
	}
	public void setCoursefee(String coursefee) {
		this.coursefee = coursefee;
	}
	public String getExamfee() {
		return examfee;
	}
	public void setExamfee(String examfee) {
		this.examfee = examfee;
	}
	public String getCenterfee() {
		return centerfee;
	}
	public void setCenterfee(String centerfee) {
		this.centerfee = centerfee;
	}
	public String getApplicationfee() {
		return applicationfee;
	}
	public void setApplicationfee(String applicationfee) {
		this.applicationfee = applicationfee;
	}
	public String getOtherfee() {
		return otherfee;
	}
	public void setOtherfee(String otherfee) {
		this.otherfee = otherfee;
	}
	public String getTotalpaid() {
		return totalpaid;
	}
	public void setTotalpaid(String totalpaid) {
		this.totalpaid = totalpaid;
	}
	public String getPaid() {
		return paid;
	}
	public void setPaid(String paid) {
		this.paid = paid;
	}
	public String getBalance() {
		return balance;
	}
	public void setBalance(String balance) {
		this.balance = balance;
	}
	public String getDeltby() {
		return deltby;
	}
	public void setDeltby(String deltby) {
		this.deltby = deltby;
	}
	public String getCollegename() {
		return collegename;
	}
	public void setCollegename(String collegename) {
		this.collegename = collegename;
	}
	
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	public String getSem1() {
		return sem1;
	}
	public void setSem1(String sem1) {
		this.sem1 = sem1;
	}
	public String getSem2() {
		return sem2;
	}
	public void setSem2(String sem2) {
		this.sem2 = sem2;
	}
	public String getSem3() {
		return sem3;
	}
	public void setSem3(String sem3) {
		this.sem3 = sem3;
	}
	public String getSem4() {
		return sem4;
	}
	public void setSem4(String sem4) {
		this.sem4 = sem4;
	}
	public String getSem5() {
		return sem5;
	}
	public void setSem5(String sem5) {
		this.sem5 = sem5;
	}
	public String getSem6() {
		return sem6;
	}
	public void setSem6(String sem6) {
		this.sem6 = sem6;
	}
	public String getSem7() {
		return sem7;
	}
	public void setSem7(String sem7) {
		this.sem7 = sem7;
	}
	public String getSem8() {
		return sem8;
	}
	public void setSem8(String sem8) {
		this.sem8 = sem8;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
	public String getImagPath() {
		return imagPath;
	}
	public void setImagPath(String imagPath) {
		this.imagPath = imagPath;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	
}
