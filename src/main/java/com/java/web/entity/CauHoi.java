package com.java.web.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="cauhoi")
public class CauHoi {
	@Id
	@Column(name="MaCauHoi")
	private String maCauHoi;
	
	@Column(name="CauHoi")
	private String cauHoi;
	
	@ManyToOne
	@JoinColumn(name="MaDeThi")
	private DeThi maDeThi;

	public String getMaCauHoi() {
		return maCauHoi;
	}

	public void setMaCauHoi(String maCauHoi) {
		this.maCauHoi = maCauHoi;
	}

	public String getCauHoi() {
		return cauHoi;
	}

	public void setCauHoi(String cauHoi) {
		this.cauHoi = cauHoi;
	}

	public DeThi getMaDeThi() {
		return maDeThi;
	}

	public void setMaDeThi(DeThi maDeThi) {
		this.maDeThi = maDeThi;
	}
	
	
}
