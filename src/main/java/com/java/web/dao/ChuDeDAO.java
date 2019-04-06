package com.java.web.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.web.entity.ChuDe;

@Repository
public class ChuDeDAO {
	@Autowired
	private SessionFactory sessionFactory;

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	public List<ChuDe> findAll() {
		TypedQuery<ChuDe> query = getSession().createQuery("FROM ChuDe", ChuDe.class);
		List<ChuDe> dsChuDe = query.getResultList();
		return dsChuDe;
	}

	public ChuDe findById(String maChuDe) {
		TypedQuery<ChuDe> query = getSession().createQuery("FROM ChuDe where maChuDe = :maChuDe", ChuDe.class)
				.setParameter("maChuDe", maChuDe);
		ChuDe chuDe = query.getSingleResult();
		return chuDe;
	}

	public void addChuDe(ChuDe chuDe) {
		Session session = getSession();
		session.save(chuDe);
	}

	public void updateChuDe(ChuDe chuDe) {
		Session session = getSession();
		session.update(chuDe);
	}

	public Boolean deleteChuDe(String maChuDe) {
		Session session = getSession();
		ChuDe chuDe = findById(maChuDe);
		if (chuDe != null) {
			session.delete(chuDe);
			return Boolean.TRUE;
		}
		return Boolean.FALSE;
	}
}
