package com.java.web.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="thisinh")
public class ThiSinh {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="MaThiSinh")
	private Long maThiSinh;
	
	@Column(name="HoTen")
	private String hoTen;
	
	@Column(name="NgaySinh")
	private Date ngaySinh;
	
	@Column(name="SDT")
	private String SDT;
	
	@OneToOne
	@JoinColumn(name="email")
	private TaiKhoan taiKhoan;

	public Long getMaThiSinh() {
		return maThiSinh;
	}

	public void setMaThiSinh(Long maThiSinh) {
		this.maThiSinh = maThiSinh;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public Date getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	public String getSDT() {
		return SDT;
	}

	public void setSDT(String sDT) {
		SDT = sDT;
	}

	public TaiKhoan getTaiKhoan() {
		return taiKhoan;
	}

	public void setTaiKhoan(TaiKhoan taiKhoan) {
		this.taiKhoan = taiKhoan;
	}
	
	
}
