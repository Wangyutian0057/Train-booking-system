package com.dao.impl;

import org.hibernate.Session;
import com.bean.BookTicket;
import com.common.HibernateSessionFactory;
import com.dao.BookTicketDao;

public class BookTicketDaoImpl implements BookTicketDao {
	public void save(BookTicket b) {
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		session.save(b);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
	}
}
