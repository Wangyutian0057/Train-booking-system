package com.dao.impl;

import java.util.List;

import org.hibernate.Session;

import com.bean.Ticket;
import com.common.HibernateSessionFactory;
import com.dao.TicketDao;

public class TicketDaoImpl implements TicketDao {

	public void save(Ticket t) {
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		session.persist(t);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
	}

	public void delete(Ticket t) {
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		session.delete(t);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
	}
	

	public void update(Ticket t){
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		session.update(t);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
	}
	

	public Ticket showTicket(Integer id) {
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		
		Ticket ticket = (Ticket)session.get(Ticket.class, id);
		
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		
		return ticket;
	}
	
	public List getAllTicketList() {
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		
		List myList = session.createQuery("from Ticket order by id").list();
		
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		
		return myList;
	}
	
	public void deleteById(Integer tid) {
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		
		session.delete(session.get(Ticket.class, tid));
		
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
	}
	

	public void updateById(Integer tid) {
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		
		session.update(session.get(Ticket.class, tid));
		
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
	}
	
	public Ticket findById(Integer tid) {
		Ticket ticket;
		
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		
		ticket = (Ticket)session.get(Ticket.class, tid);
		
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		
		return ticket;
	}
	public List<Ticket> findFuzzily(String ticketInfo) {
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		String sql = "select * from ticket where t_start =:a";
		List list = session.createSQLQuery(sql)
		.addEntity(Ticket.class)
		.setString("a", ticketInfo)
		.list();
		
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		
		return list;
	}

	public int countTicket() {
		int ticketSum;
		
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		
		List<Long> list = session.createQuery("select count(*) from Ticket").list();
		ticketSum = Integer.parseInt(list.get(0)+"");
		
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		
		return ticketSum;
	}

	public int countPage(int pageCount) {
		int pageSum;
		if(this.countTicket()%pageCount==0)
			pageSum = this.countTicket()/pageCount;
		else
			pageSum = this.countTicket()/pageCount+1;
		return pageSum;
	}
	
	public List splitPageShowTicketList(int pageSize, int showPage) {
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		
		int start = (showPage-1)*pageSize;
		String sql = "select * from ticket limit :a,:b";
		List list = session.createSQLQuery(sql)
		.addEntity(Ticket.class)
		.setInteger("a", start)
		.setInteger("b", pageSize)
		.list();
		
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		
		return list;
	}

	public List getFirstPageList(int pageSize, int showPage) {
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		
		String sql = "select * from ticket limit 0,:a";
		List list = session.createSQLQuery(sql)
		.addEntity(Ticket.class)
		.setInteger("a", pageSize)
		.list();
		
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		
		return list;
	}

	public List getLastPageList(int pageSize, int showPage) {
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		
		List<Long> userSumList = session.createQuery("select count(*) from Ticket").list();
		int userSum = Integer.parseInt(userSumList.get(0)+"");
		
		int pageSum = 0;
		if(userSum%pageSize==0)
			pageSum = userSum/pageSize;
		else if(userSum%pageSize!=0)
			pageSum = userSum/pageSize+1;
		
		int start = (pageSum-1)*pageSize;
		String sql = "select * from ticket limit :a,:b";
		
		List list = session.createSQLQuery(sql)
		.addEntity(Ticket.class)
		.setInteger("a", start)
		.setInteger("b", pageSize)
		.list();
		
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		
		return list;
	}

	public List getBeforePageList(int pageSize, int showPage) {
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		
		if(showPage>1){
			showPage-=1;
		}
		int start = (showPage-1)*pageSize;
		
		String sql = "select * from ticket limit :a,:b";
		List list = session.createSQLQuery(sql)
		.addEntity(Ticket.class)
		.setInteger("a", start)
		.setInteger("b", pageSize)
		.list();
		
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		
		return list;
	}

	public List getNextPageList(int pageSize, int showPage) {
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		
		List<Long> userSumList = session.createQuery("select count(*) from Ticket").list();
		int userSum = Integer.parseInt(userSumList.get(0)+"");
		int pageSum = 0;
		if(userSum%pageSize==0)
			pageSum = userSum/pageSize;
		else if(userSum%pageSize!=0)
			pageSum = userSum/pageSize+1;
		
		if(showPage<pageSum){
			showPage+=1;
		}
		int start = (showPage-1)*pageSize;
		
		String sql = "select * from ticket limit :a,:b";
		List list = session.createSQLQuery(sql)
		.addEntity(Ticket.class)
		.setInteger("a", start)
		.setInteger("b", pageSize)
		.list();
		
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		
		return list;
	}
	public List<Ticket> selectTicketByStartEnd(String start,String end){
		String hql = "from Ticket t where t_start='"+start+"'and t_end='"+end+"'";
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		List<Ticket> tickets = session.createQuery(hql).list();
		return tickets;
	}
}
