package com.svs.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="tl_companypayslip")
public class CompanyPaySlipBean {
	@Id
	@GeneratedValue
	@Column(name="sno")
	public long sno;
	@Column(name="companyname")
	public String companyname;
	@Column(name="basic")
	public String basic;
	@Column(name="hra")
	public String hra;
	@Column(name="pf")
	public String pf;
	@Column(name="conv")
	public String conv;
	@Column(name="da")
	public String da;
	@Column(name="tx1")
	public String tx1;
	@Column(name="tx2")
	public String tx2;
	@Column(name="tx3")
	public String tx3;
	@Column(name="tx4")
	public String tx4;
	@Column(name="tx5")
	public String tx5;
	@Column(name="tx6")
	public String tx6;
	@Column(name="tx7")
	public String tx7;
	@Column(name="tx8")
	public String tx8;
	@Column(name="tx9")
	public String tx9;
	@Column(name="tx10")
	public String tx10;
	@Column(name="tx11")
	public String tx11;
	@Column(name="tx12")
	public String tx12;
	@Column(name="ftx1")
	public String ftx1;
	@Column(name="ftx2")
	public String ftx2;
	@Column(name="ftx3")
	public String ftx3;
	@Column(name="ftx4")
	public String ftx4;
	@Column(name="ftx5")
	public String ftx5;
	@Column(name="ftx6")
	public String ftx6;
	@Column(name="ftx7")
	public String ftx7;
	@Column(name="ftx8")
	public String ftx8;
	@Column(name="ftx9")
	public String ftx9;
	@Column(name="ftx10")
	public String ftx10;
	@Column(name="ftx11")
	public String ftx11;
	@Column(name="ftx12")
	public String ftx12;
	@Column(name="gendate")
	private String gendate;
	
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getBasic() {
		return basic;
	}
	public void setBasic(String basic) {
		this.basic = basic;
	}
	public String getHra() {
		return hra;
	}
	public void setHra(String hra) {
		this.hra = hra;
	}
	public String getPf() {
		return pf;
	}
	public void setPf(String pf) {
		this.pf = pf;
	}
	public String getConv() {
		return conv;
	}
	public void setConv(String conv) {
		this.conv = conv;
	}
	public String getDa() {
		return da;
	}
	public void setDa(String da) {
		this.da = da;
	}
	public String getTx1() {
		return tx1;
	}
	public void setTx1(String tx1) {
		this.tx1 = tx1;
	}
	public String getTx2() {
		return tx2;
	}
	public void setTx2(String tx2) {
		this.tx2 = tx2;
	}
	public String getTx3() {
		return tx3;
	}
	public void setTx3(String tx3) {
		this.tx3 = tx3;
	}
	public String getTx4() {
		return tx4;
	}
	public void setTx4(String tx4) {
		this.tx4 = tx4;
	}
	public String getTx5() {
		return tx5;
	}
	public void setTx5(String tx5) {
		this.tx5 = tx5;
	}
	public String getTx6() {
		return tx6;
	}
	public void setTx6(String tx6) {
		this.tx6 = tx6;
	}
	public String getTx7() {
		return tx7;
	}
	public void setTx7(String tx7) {
		this.tx7 = tx7;
	}
	public String getTx8() {
		return tx8;
	}
	public void setTx8(String tx8) {
		this.tx8 = tx8;
	}
	public String getTx9() {
		return tx9;
	}
	public void setTx9(String tx9) {
		this.tx9 = tx9;
	}
	public String getTx10() {
		return tx10;
	}
	public void setTx10(String tx10) {
		this.tx10 = tx10;
	}
	public String getTx11() {
		return tx11;
	}
	public void setTx11(String tx11) {
		this.tx11 = tx11;
	}
	public String getTx12() {
		return tx12;
	}
	public void setTx12(String tx12) {
		this.tx12 = tx12;
	}
	public String getFtx1() {
		return ftx1;
	}
	public void setFtx1(String ftx1) {
		this.ftx1 = ftx1;
	}
	public String getFtx2() {
		return ftx2;
	}
	public void setFtx2(String ftx2) {
		this.ftx2 = ftx2;
	}
	public String getFtx3() {
		return ftx3;
	}
	public void setFtx3(String ftx3) {
		this.ftx3 = ftx3;
	}
	public String getFtx4() {
		return ftx4;
	}
	public void setFtx4(String ftx4) {
		this.ftx4 = ftx4;
	}
	public String getFtx5() {
		return ftx5;
	}
	public void setFtx5(String ftx5) {
		this.ftx5 = ftx5;
	}
	public String getFtx6() {
		return ftx6;
	}
	public void setFtx6(String ftx6) {
		this.ftx6 = ftx6;
	}
	public String getFtx7() {
		return ftx7;
	}
	public void setFtx7(String ftx7) {
		this.ftx7 = ftx7;
	}
	public String getFtx8() {
		return ftx8;
	}
	public void setFtx8(String ftx8) {
		this.ftx8 = ftx8;
	}
	public String getFtx9() {
		return ftx9;
	}
	public void setFtx9(String ftx9) {
		this.ftx9 = ftx9;
	}
	public String getFtx10() {
		return ftx10;
	}
	public void setFtx10(String ftx10) {
		this.ftx10 = ftx10;
	}
	public String getFtx11() {
		return ftx11;
	}
	public void setFtx11(String ftx11) {
		this.ftx11 = ftx11;
	}
	public String getFtx12() {
		return ftx12;
	}
	public void setFtx12(String ftx12) {
		this.ftx12 = ftx12;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	
	
}
