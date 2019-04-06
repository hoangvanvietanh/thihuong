package com.java.web.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.web.entity.TaiKhoan;

@Repository
public class TaiKhoanDao {
	@Autowired
	private SessionFactory sessionFactory;

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	public List<TaiKhoan> findAll() {
		TypedQuery<TaiKhoan> query = getSession().createQuery("FROM TaiKhoan", TaiKhoan.class);
		List<TaiKhoan> ds = query.getResultList();
		return ds;
	}
}
