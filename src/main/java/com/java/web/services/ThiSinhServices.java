package com.java.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.web.dao.ThiSinhDAO;
import com.java.web.entity.ThiSinh;

@Service
@Transactional
public class ThiSinhServices {

	@Autowired
	ThiSinhDAO thiSinhDAO;
	
	public List<ThiSinh> dsThiSinh(){
		return thiSinhDAO.findAll();
	}
}
