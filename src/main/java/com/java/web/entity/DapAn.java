package com.java.web.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="dapan")
public class DapAn {
	
	@Id
	@Column(name="MaDapAn")
	private String maDapAn;
	
	@Column(name="DapAn")
	private String dapAn;
	
	@Column(name="DungSai")
	private int dungSai;
	
	@ManyToOne
	@JoinColumn(name="MaCauHoi")
	private CauHoi maCauHoi;

	public String getMaDapAn() {
		return maDapAn;
	}

	public void setMaDapAn(String maDapAn) {
		this.maDapAn = maDapAn;
	}

	public String getDapAn() {
		return dapAn;
	}

	public void setDapAn(String dapAn) {
		this.dapAn = dapAn;
	}

	public int getDungSai() {
		return dungSai;
	}

	public void setDungSai(int dungSai) {
		this.dungSai = dungSai;
	}

	public CauHoi getMaCauHoi() {
		return maCauHoi;
	}

	public void setMaCauHoi(CauHoi maCauHoi) {
		this.maCauHoi = maCauHoi;
	}
	
	
}
