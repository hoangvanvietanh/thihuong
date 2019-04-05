package com.java.web.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="ketqua")
public class KetQua {

	@Id
	@Column(name="MaKetQua")
	private String maKetQua;
	
	@Column(name="NgayLam")
	private Date ngayLam;
	
	@Column(name="DiemThi")
	private int diemThi;
	
	@ManyToOne
	@JoinColumn(name="MaThiSinh")
	private ThiSinh maThiSinh;
	
	@ManyToOne
	@JoinColumn(name="MaDeThi")
	private DeThi maDeThi;

	public String getMaKetQua() {
		return maKetQua;
	}

	public void setMaKetQua(String maKetQua) {
		this.maKetQua = maKetQua;
	}

	public Date getNgayLam() {
		return ngayLam;
	}

	public void setNgayLam(Date ngayLam) {
		this.ngayLam = ngayLam;
	}

	public int getDiemThi() {
		return diemThi;
	}

	public void setDiemThi(int diemThi) {
		this.diemThi = diemThi;
	}

	public ThiSinh getMaThiSinh() {
		return maThiSinh;
	}

	public void setMaThiSinh(ThiSinh maThiSinh) {
		this.maThiSinh = maThiSinh;
	}

	public DeThi getMaDeThi() {
		return maDeThi;
	}

	public void setMaDeThi(DeThi maDeThi) {
		this.maDeThi = maDeThi;
	}
	
	
	
	
}
