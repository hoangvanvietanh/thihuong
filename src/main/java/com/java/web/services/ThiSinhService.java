package com.java.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.web.dao.ThiSinhDAO;
import com.java.web.entity.ThiSinh;

@Service
@Transactional
public class ThiSinhService {

	@Autowired
	ThiSinhDAO thiSinhDAO;
	
	public List<ThiSinh> findAll(){
		return thiSinhDAO.findAll();
	}
	
	public ThiSinh findById(int maThiSinh) {
		return thiSinhDAO.findById(maThiSinh);
	}
	
	public void addThiSinh(ThiSinh thiSinh) {
		thiSinhDAO.addThiSinh(thiSinh);
	}
	
	public void updateThiSinh(ThiSinh thiSinh) {
		thiSinhDAO.updateThiSinh(thiSinh);
	}
}
