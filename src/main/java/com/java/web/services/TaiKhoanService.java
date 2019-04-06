package com.java.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.web.dao.TaiKhoanDao;
import com.java.web.entity.TaiKhoan;

@Service
@Transactional
public class TaiKhoanService {
	@Autowired
	TaiKhoanDao taiKhoanDao;
	
	public List<TaiKhoan> findAll() {
		return taiKhoanDao.findAll();
	}
}
