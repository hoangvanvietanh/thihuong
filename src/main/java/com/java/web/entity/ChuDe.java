package com.java.web.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="chude")
public class ChuDe {

	@Id
	@Column(name="MaChuDe")
	private String maChuDe;
	
	@Column(name="ChuDe")
	private String chuDe;

	public String getMaChuDe() {
		return maChuDe;
	}

	public void setMaChuDe(String maChuDe) {
		this.maChuDe = maChuDe;
	}

	public String getChuDe() {
		return chuDe;
	}

	public void setChuDe(String chuDe) {
		this.chuDe = chuDe;
	}
	
	
	
}
