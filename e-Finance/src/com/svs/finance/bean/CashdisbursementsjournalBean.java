package com.svs.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name="tl_fn_cashdisbursementsjournal")
public class CashdisbursementsjournalBean {

	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@NotNull
	@Column(name="month")
	private String month;
	@Column(name="ledgerno")
	private String ledgerno;
	@Column(name="date1")
	private String date1;
	@Column(name="check1")
	private String check1;
	@Column(name="payee1")
	/*@Size(max=20, min=5, message="Name should be between 5 and 20 chars")*/
	private String payee1;
	@Column(name="accountc1")
	private String accountc1;
	@Column(name="account1")
	private String account1;
	@Column(name="cash1")
	private String cash1;
	@Column(name="discount1")
	private String discount1;
	@Column(name="other1")
	private String other1;
	@Column(name="accountd1")
	private String accountd1;
	@Column(name="amount1")
	private String amount1;
	@Column(name="amountp1")
	private String amountp1;
	@Column(name="accountp1")
	private String accountp1;
	@Column(name="othera1")
	private String othera1;


	
	@Column(name="date2")
	private String date2;
	@Column(name="check2")
	private String check2;
	@Column(name="payee2")
	private String payee2;
	@Column(name="accountc2")
	private String accountc2;
	@Column(name="account2")
	private String account2;
	@Column(name="cash2")
	private String cash2;
	@Column(name="discount2")
	private String discount2;
	@Column(name="other2")
	private String other2;
	@Column(name="accountd2")
	private String accountd2;
	@Column(name="amount2")
	private String amount2;
	@Column(name="amountp2")
	private String amountp2;
	@Column(name="accountp2")
	private String accountp2;
	@Column(name="othera2")
	private String othera2;

	@Column(name="date3")
	private String date3;
	@Column(name="check3")
	private String check3;
	@Column(name="payee3")
	private String payee3;
	@Column(name="accountc3")
	private String accountc3;
	@Column(name="account3")
	private String account3;
	@Column(name="cash3")
	private String cash3;
	@Column(name="discount3")
	private String discount3;
	@Column(name="other3")
	private String other3;
	@Column(name="accountd3")
	private String accountd3;
	@Column(name="amount3")
	private String amount3;
	@Column(name="amountp3")
	private String amountp3;
	@Column(name="accountp3")
	private String accountp3;
	@Column(name="othera3")
	private String othera3;

	@Column(name="date4")
	private String date4;
	@Column(name="check4")
	private String check4;
	@Column(name="payee4")
	private String payee4;
	@Column(name="accountc4")
	private String accountc4;
	@Column(name="account4")
	private String account4;
	@Column(name="cash4")
	private String cash4;
	@Column(name="discount4")
	private String discount4;
	@Column(name="other4")
	private String other4;
	@Column(name="accountd4")
	private String accountd4;
	@Column(name="amount4")
	private String amount4;
	@Column(name="amountp4")
	private String amountp4;
	@Column(name="accountp4")
	private String accountp4;
	@Column(name="othera4")
	private String othera4;

	@Size(max=20, min=5, message="date5 should be between 5 and 20 chars")
	@Column(name="date5")
	private String date5;
	@Column(name="check5")
	private String check5;
	@Column(name="payee5")
	private String payee5;
	@Column(name="accountc5")
	private String accountc5;
	@Column(name="account5")
	private String account5;
	@Column(name="cash5")
	private String cash5;
	@Column(name="discount5")
	private String discount5;
	@Column(name="other5")
	private String other5;
	@Column(name="accountd5")
	private String accountd5;
	@Column(name="amount5")
	private String amount5;
	@Column(name="amountp5")
	private String amountp5;
	@Column(name="accountp5")
	private String accountp5;
	@Column(name="othera5")
	private String othera5;
	
	@Column(name="gendate")
	private String gendate;
	@Column(name="login_comp")
	private String login_comp;
	@Column(name="deltby")
	private String deltby;
	
	public long getSno() {
		return sno;
	}

	public void setSno(long sno) {
		this.sno = sno;
	}
	@Size(max=20, min=5, message="Month should be between 5 and 20 chars")
	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getLedgerno() {
		return ledgerno;
	}

	public void setLedgerno(String ledgerno) {
		this.ledgerno = ledgerno;
	}

	public String getDate1() {
		return date1;
	}

	public void setDate1(String date1) {
		this.date1 = date1;
	}

	public String getCheck1() {
		return check1;
	}

	public void setCheck1(String check1) {
		this.check1 = check1;
	}

	public String getPayee1() {
		return payee1;
	}

	public void setPayee1(String payee1) {
		this.payee1 = payee1;
	}

	public String getAccountc1() {
		return accountc1;
	}

	public void setAccountc1(String accountc1) {
		this.accountc1 = accountc1;
	}

	public String getAccount1() {
		return account1;
	}

	public void setAccount1(String account1) {
		this.account1 = account1;
	}

	public String getCash1() {
		return cash1;
	}

	public void setCash1(String cash1) {
		this.cash1 = cash1;
	}

	public String getDiscount1() {
		return discount1;
	}

	public void setDiscount1(String discount1) {
		this.discount1 = discount1;
	}

	public String getOther1() {
		return other1;
	}

	public void setOther1(String other1) {
		this.other1 = other1;
	}

	public String getAccountd1() {
		return accountd1;
	}

	public void setAccountd1(String accountd1) {
		this.accountd1 = accountd1;
	}

	public String getAmount1() {
		return amount1;
	}

	public void setAmount1(String amount1) {
		this.amount1 = amount1;
	}

	public String getAmountp1() {
		return amountp1;
	}

	public void setAmountp1(String amountp1) {
		this.amountp1 = amountp1;
	}

	public String getAccountp1() {
		return accountp1;
	}

	public void setAccountp1(String accountp1) {
		this.accountp1 = accountp1;
	}

	public String getOthera1() {
		return othera1;
	}

	public void setOthera1(String othera1) {
		this.othera1 = othera1;
	}

	public String getDate2() {
		return date2;
	}

	public void setDate2(String date2) {
		this.date2 = date2;
	}

	public String getCheck2() {
		return check2;
	}

	public void setCheck2(String check2) {
		this.check2 = check2;
	}

	public String getPayee2() {
		return payee2;
	}

	public void setPayee2(String payee2) {
		this.payee2 = payee2;
	}

	public String getAccountc2() {
		return accountc2;
	}

	public void setAccountc2(String accountc2) {
		this.accountc2 = accountc2;
	}

	public String getAccount2() {
		return account2;
	}

	public void setAccount2(String account2) {
		this.account2 = account2;
	}

	public String getCash2() {
		return cash2;
	}

	public void setCash2(String cash2) {
		this.cash2 = cash2;
	}

	public String getDiscount2() {
		return discount2;
	}

	public void setDiscount2(String discount2) {
		this.discount2 = discount2;
	}

	public String getOther2() {
		return other2;
	}

	public void setOther2(String other2) {
		this.other2 = other2;
	}

	public String getAccountd2() {
		return accountd2;
	}

	public void setAccountd2(String accountd2) {
		this.accountd2 = accountd2;
	}

	public String getAmount2() {
		return amount2;
	}

	public void setAmount2(String amount2) {
		this.amount2 = amount2;
	}

	public String getAmountp2() {
		return amountp2;
	}

	public void setAmountp2(String amountp2) {
		this.amountp2 = amountp2;
	}

	public String getAccountp2() {
		return accountp2;
	}

	public void setAccountp2(String accountp2) {
		this.accountp2 = accountp2;
	}

	public String getOthera2() {
		return othera2;
	}

	public void setOthera2(String othera2) {
		this.othera2 = othera2;
	}

	public String getDate3() {
		return date3;
	}

	public void setDate3(String date3) {
		this.date3 = date3;
	}

	public String getCheck3() {
		return check3;
	}

	public void setCheck3(String check3) {
		this.check3 = check3;
	}

	public String getPayee3() {
		return payee3;
	}

	public void setPayee3(String payee3) {
		this.payee3 = payee3;
	}

	public String getAccountc3() {
		return accountc3;
	}

	public void setAccountc3(String accountc3) {
		this.accountc3 = accountc3;
	}

	public String getAccount3() {
		return account3;
	}

	public void setAccount3(String account3) {
		this.account3 = account3;
	}

	public String getCash3() {
		return cash3;
	}

	public void setCash3(String cash3) {
		this.cash3 = cash3;
	}

	public String getDiscount3() {
		return discount3;
	}

	public void setDiscount3(String discount3) {
		this.discount3 = discount3;
	}

	public String getOther3() {
		return other3;
	}

	public void setOther3(String other3) {
		this.other3 = other3;
	}

	public String getAccountd3() {
		return accountd3;
	}

	public void setAccountd3(String accountd3) {
		this.accountd3 = accountd3;
	}

	public String getAmount3() {
		return amount3;
	}

	public void setAmount3(String amount3) {
		this.amount3 = amount3;
	}

	public String getAmountp3() {
		return amountp3;
	}

	public void setAmountp3(String amountp3) {
		this.amountp3 = amountp3;
	}

	public String getAccountp3() {
		return accountp3;
	}

	public void setAccountp3(String accountp3) {
		this.accountp3 = accountp3;
	}

	public String getOthera3() {
		return othera3;
	}

	public void setOthera3(String othera3) {
		this.othera3 = othera3;
	}

	public String getDate4() {
		return date4;
	}

	public void setDate4(String date4) {
		this.date4 = date4;
	}

	public String getCheck4() {
		return check4;
	}

	public void setCheck4(String check4) {
		this.check4 = check4;
	}

	public String getPayee4() {
		return payee4;
	}

	public void setPayee4(String payee4) {
		this.payee4 = payee4;
	}

	public String getAccountc4() {
		return accountc4;
	}

	public void setAccountc4(String accountc4) {
		this.accountc4 = accountc4;
	}

	public String getAccount4() {
		return account4;
	}

	public void setAccount4(String account4) {
		this.account4 = account4;
	}

	public String getCash4() {
		return cash4;
	}

	public void setCash4(String cash4) {
		this.cash4 = cash4;
	}

	public String getDiscount4() {
		return discount4;
	}

	public void setDiscount4(String discount4) {
		this.discount4 = discount4;
	}

	public String getOther4() {
		return other4;
	}

	public void setOther4(String other4) {
		this.other4 = other4;
	}

	public String getAccountd4() {
		return accountd4;
	}

	public void setAccountd4(String accountd4) {
		this.accountd4 = accountd4;
	}

	public String getAmount4() {
		return amount4;
	}

	public void setAmount4(String amount4) {
		this.amount4 = amount4;
	}

	public String getAmountp4() {
		return amountp4;
	}

	public void setAmountp4(String amountp4) {
		this.amountp4 = amountp4;
	}

	public String getAccountp4() {
		return accountp4;
	}

	public void setAccountp4(String accountp4) {
		this.accountp4 = accountp4;
	}

	public String getOthera4() {
		return othera4;
	}

	public void setOthera4(String othera4) {
		this.othera4 = othera4;
	}

	public String getDate5() {
		return date5;
	}

	public void setDate5(String date5) {
		this.date5 = date5;
	}

	public String getCheck5() {
		return check5;
	}

	public void setCheck5(String check5) {
		this.check5 = check5;
	}

	public String getPayee5() {
		return payee5;
	}

	public void setPayee5(String payee5) {
		this.payee5 = payee5;
	}

	public String getAccountc5() {
		return accountc5;
	}

	public void setAccountc5(String accountc5) {
		this.accountc5 = accountc5;
	}

	public String getAccount5() {
		return account5;
	}

	public void setAccount5(String account5) {
		this.account5 = account5;
	}

	public String getCash5() {
		return cash5;
	}

	public void setCash5(String cash5) {
		this.cash5 = cash5;
	}

	public String getDiscount5() {
		return discount5;
	}

	public void setDiscount5(String discount5) {
		this.discount5 = discount5;
	}

	public String getOther5() {
		return other5;
	}

	public void setOther5(String other5) {
		this.other5 = other5;
	}

	public String getAccountd5() {
		return accountd5;
	}

	public void setAccountd5(String accountd5) {
		this.accountd5 = accountd5;
	}

	public String getAmount5() {
		return amount5;
	}

	public void setAmount5(String amount5) {
		this.amount5 = amount5;
	}

	public String getAmountp5() {
		return amountp5;
	}

	public void setAmountp5(String amountp5) {
		this.amountp5 = amountp5;
	}

	public String getAccountp5() {
		return accountp5;
	}

	public void setAccountp5(String accountp5) {
		this.accountp5 = accountp5;
	}

	public String getOthera5() {
		return othera5;
	}

	public void setOthera5(String othera5) {
		this.othera5 = othera5;
	}

	public String getGendate() {
		return gendate;
	}

	public void setGendate(String gendate) {
		this.gendate = gendate;
	}

	public String getLogin_comp() {
		return login_comp;
	}

	public void setLogin_comp(String login_comp) {
		this.login_comp = login_comp;
	}

	public String getDeltby() {
		return deltby;
	}

	public void setDeltby(String deltby) {
		this.deltby = deltby;
	}

	
	
	
	
	
	
	
}
