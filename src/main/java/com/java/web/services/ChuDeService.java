package com.java.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.web.dao.ChuDeDAO;
import com.java.web.entity.ChuDe;

@Service
@Transactional
public class ChuDeService {
	@Autowired
	ChuDeDAO chuDeDAO;
	
	public List<ChuDe> findAll() {
		return chuDeDAO.findAll();
	}
	
	public ChuDe findById(String maChuDe) {
		return chuDeDAO.findById(maChuDe);
	}
	
//	public Boolean checkId(String maChuDe) {
//		return chuDeDAO.checkId(maChuDe);
//	}
	
	public void addChuDe(ChuDe chuDe) {
		chuDeDAO.addChuDe(chuDe);
	}
	
	public void updateChuDe(ChuDe chuDe) {
		chuDeDAO.updateChuDe(chuDe);
	}
	
	public Boolean deleteChuDe(String maChuDe) {
		return chuDeDAO.deleteChuDe(maChuDe);
	}
}
