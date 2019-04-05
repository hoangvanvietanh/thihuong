package com.java.web.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.joda.time.DateTime;

@Entity
@Table(name="dethi")
public class DeThi {
	@Id
	@Column(name="MaDeThi")
	private String maDeThi;
	
	@Column(name="TenDeThi")
	private String tenDeThi;
	
	@ManyToOne
	@JoinColumn(name="MaChuDe")
	private ChuDe maChuDe;

	public String getMaDeThi() {
		return maDeThi;
	}

	public void setMaDeThi(String maDeThi) {
		this.maDeThi = maDeThi;
	}

	public String getTenDeThi() {
		return tenDeThi;
	}

	public void setTenDeThi(String tenDeThi) {
		this.tenDeThi = tenDeThi;
	}

	public ChuDe getMaChuDe() {
		return maChuDe;
	}

	public void setMaChuDe(ChuDe maChuDe) {
		this.maChuDe = maChuDe;
	}
	
	
}
