package com.java.web.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.web.entity.ThiSinh;

@Repository
public class ThiSinhDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public List<ThiSinh> findAll()
	{
		TypedQuery<ThiSinh> query = getSession().createQuery("FROM ThiSinh", ThiSinh.class);
		List<ThiSinh> dsThiSinh = query.getResultList();
		return dsThiSinh;
	}
}
