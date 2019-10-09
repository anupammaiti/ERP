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
 * @author ravikiran
 *
 */

@Entity
@Table(name="tl_tel_agentpercentage")
public class TeleAgentPercentageDetails {
	@Id
	@GeneratedValue
	@Column(name="sno")
	private int sno;
	@Column(name="agenetid")
	private String agentid;
	@Column(name="agentname")
	private String agentname;
	@Column(name="vouchergivendate")
	private String vouchergivendate;
	@Column(name="noofvouchers")
	private String noofvouchers;
	@Column(name="browchersleft")
	private String browchersleft;
	@Column(name="gendate")
	private String gendate;
	
	
	public int getSno() {
		return sno;
	}
	public void setSno(int sno) {
		this.sno = sno;
	}
	public String getAgentid() {
		return agentid;
	}
	public void setAgentid(String agentid) {
		this.agentid = agentid;
	}
	public String getAgentname() {
		return agentname;
	}
	public void setAgentname(String agentname) {
		this.agentname = agentname;
	}
	
	public String getNoofvouchers() {
		return noofvouchers;
	}
	public void setNoofvouchers(String noofvouchers) {
		this.noofvouchers = noofvouchers;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	public String getVouchergivendate() {
		return vouchergivendate;
	}
	public void setVouchergivendate(String vouchergivendate) {
		this.vouchergivendate = vouchergivendate;
	}
	public String getBrowchersleft() {
		return browchersleft;
	}
	public void setBrowchersleft(String browchersleft) {
		this.browchersleft = browchersleft;
	}
	
	
	

}
