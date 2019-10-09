package com.svs.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_fn_current_asserts")
public class CurrentAssertsBean {

	@Id
	@GeneratedValue
	@Column(name="sno")
	private int sno;
	@Column(name="ledgername")
	private String ledgername;
	@Column(name="balance")
	private String balance;
	@Column(name="under")
	private String under;
	@Column(name="login_comp")
	private String login_comp;
	public int getSno() {
		return sno;
	}
	public void setSno(int sno) {
		this.sno = sno;
	}
	public String getLedgername() {
		return ledgername;
	}
	public void setLedgername(String ledgername) {
		this.ledgername = ledgername;
	}
	public String getBalance() {
		return balance;
	}
	public void setBalance(String balance) {
		this.balance = balance;
	}
	public String getUnder() {
		return under;
	}
	public void setUnder(String under) {
		this.under = under;
	}
	public String getLogin_comp() {
		return login_comp;
	}
	public void setLogin_comp(String login_comp) {
		this.login_comp = login_comp;
	}
	
	
}
