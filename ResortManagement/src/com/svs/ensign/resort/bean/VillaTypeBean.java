
package com.svs.ensign.resort.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_villatype")
public class VillaTypeBean {
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="villa_name")
	private String villa_name;
	@Column(name="villa_id")
	private String villa_id;
	@Column(name="villa_facing")
	private String villa_facing;
	@Column(name="gendate")
	private String gendate;
	@Column(name="villa_type")
	private String villa_type;
	@Column(name="villa_price")
	private String villa_price;
	@Column(name="total_villas")
	private String total_villas;
	@Column(name="villas_left")
	private String villas_left;
	@Column(name="sqrtfeet")
	private String sqrtfeet;
	@Column(name="villa_size")
	private String villa_size;
	@Column(name="blockno")
	private String blockno;
	@Column(name="plotno")
	private String plotno;
	
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getVilla_name() {
		return villa_name;
	}
	public void setVilla_name(String villa_name) {
		this.villa_name = villa_name;
	}
	public String getVilla_id() {
		return villa_id;
	}
	public void setVilla_id(String villa_id) {
		this.villa_id = villa_id;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	public String getVilla_facing() {
		return villa_facing;
	}
	public void setVilla_facing(String villa_facing) {
		this.villa_facing = villa_facing;
	}
	public String getVilla_type() {
		return villa_type;
	}
	public void setVilla_type(String villa_type) {
		this.villa_type = villa_type;
	}
	public String getVilla_price() {
		return villa_price;
	}
	public void setVilla_price(String villa_price) {
		this.villa_price = villa_price;
	}
	public String getSqrtfeet() {
		return sqrtfeet;
	}
	public void setSqrtfeet(String sqrtfeet) {
		this.sqrtfeet = sqrtfeet;
	}
	public String getTotal_villas() {
		return total_villas;
	}
	public void setTotal_villas(String total_villas) {
		this.total_villas = total_villas;
	}
	public String getVillas_left() {
		return villas_left;
	}
	public void setVillas_left(String villas_left) {
		this.villas_left = villas_left;
	}
	public String getVilla_size() {
		return villa_size;
	}
	public void setVilla_size(String villa_size) {
		this.villa_size = villa_size;
	}
	public String getBlockno() {
		return blockno;
	}
	public void setBlockno(String blockno) {
		this.blockno = blockno;
	}
	public String getPlotno() {
		return plotno;
	}
	public void setPlotno(String plotno) {
		this.plotno = plotno;
	}
	

	
}
