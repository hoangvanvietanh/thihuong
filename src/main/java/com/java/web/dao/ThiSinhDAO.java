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

	public List<ThiSinh> findAll() {
		TypedQuery<ThiSinh> query = getSession().createQuery("FROM ThiSinh", ThiSinh.class);
		List<ThiSinh> dsThiSinh = query.getResultList();
		return dsThiSinh;
	}

	public ThiSinh findById(int maThiSinh) {
		TypedQuery<ThiSinh> query = getSession().createQuery("FROM ThiSinh where maThiSinh = :maThiSinh", ThiSinh.class)
				.setParameter("maThiSinh", maThiSinh);
		ThiSinh thiSinh = query.getSingleResult();
		return thiSinh;
	}
	
	public void addThiSinh(ThiSinh thiSinh) {
		Session session = getSession();
		session.save(thiSinh);
	}
	
	public void updateThiSinh(ThiSinh thiSinh) {
		Session session = getSession();
		session.update(thiSinh);
	}
	
	public Boolean deleteThiSinh(int maThiSinh) {
		Session session = getSession();
		ThiSinh thiSinh = findById(maThiSinh);
		if(thiSinh != null) {
			session.delete(thiSinh);
			return Boolean.TRUE;
		}
		return Boolean.FALSE;
	}
}
