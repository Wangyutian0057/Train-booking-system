package com.dao.impl;

import java.util.List;
import org.hibernate.Session;
import com.bean.User;
import com.common.HibernateSessionFactory;
import com.dao.UserDao;

public class UserDaoImpl implements UserDao {
	 public  void save(User u)
	  {
			Session session=HibernateSessionFactory.getSession();
			session.beginTransaction();
			session.persist(u);
			session.getTransaction().commit();
			HibernateSessionFactory.closeSession();
	  }
	  public  void delete(User u)
	  {
			Session session=HibernateSessionFactory.getSession();
			session.beginTransaction();
			session.delete(u);
			session.getTransaction().commit();
			HibernateSessionFactory.closeSession();
	  }
	  public  List<User> getAllUserList()
	  {
		  Session session=HibernateSessionFactory.getSession();
		  session.beginTransaction();
		  List<User> myList=session.createQuery("from User").list();
		  session.getTransaction().commit();
		  HibernateSessionFactory.closeSession();
		  return myList;
	  }
	  public boolean checkLogin(String username,String password)
	  {
		  boolean b=false;
		  Session session=HibernateSessionFactory.getSession();
		  session.beginTransaction();
		  
		  String strHql="select count(*) from User where username=:a and password=:b";
		  List myList=session.createQuery(strHql)
		  .setString("a", username)
		  .setString("b", password)
		  .list();
		  Object obj=myList.iterator().next();
		  if((Long)obj>0)
			  b=true;
		  session.getTransaction().commit();
		  HibernateSessionFactory.closeSession();
		  return b;
		  
	  }
	  public void update(User u) {
			Session session = HibernateSessionFactory.getSession();
			session.beginTransaction();
			session.update(u);
			session.getTransaction().commit();
			HibernateSessionFactory.closeSession();
		}
		
		public User showUser(Integer id) {
			Session session = HibernateSessionFactory.getSession();
			session.beginTransaction();
			
			User user = (User)session.get(User.class, id);
			
			session.getTransaction().commit();
			HibernateSessionFactory.closeSession();
			
			return user;
		}
		
		public void deleteById(Integer uid) {
			Session session = HibernateSessionFactory.getSession();
			session.beginTransaction();
			
			session.delete(session.get(User.class, uid));
			
			session.getTransaction().commit();
			HibernateSessionFactory.closeSession();
		}


		public User findById(Integer uid) {
			User user;
			
			Session session = HibernateSessionFactory.getSession();
			session.beginTransaction();
			
			user = (User)session.get(User.class, uid);
			
			session.getTransaction().commit();
			HibernateSessionFactory.closeSession();
			
			return user;
		}

		public int countUser() {
			int userSum;
			
			Session session = HibernateSessionFactory.getSession();
			session.beginTransaction();
			
			List<Long> list = session.createQuery("select count(*) from User").list();
			userSum = Integer.parseInt(list.get(0)+"");
			
			session.getTransaction().commit();
			HibernateSessionFactory.closeSession();
			
			return userSum;
		}
		
		public int countPage(int pageCount) {
			int pageSum;
			if(this.countUser()%pageCount==0)
				pageSum = this.countUser()/pageCount;
			else
				pageSum = this.countUser()/pageCount+1;
			return pageSum;
		}
		
		public List splitPageShowUserList(int pageSize, int showPage) {
			Session session = HibernateSessionFactory.getSession();
			session.beginTransaction();
			
			int start = (showPage-1)*pageSize;
			String sql = "select * from user limit :a,:b";
			List list = session.createSQLQuery(sql)
			.addEntity(User.class)
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
			
			String sql = "select * from user limit 0,:a";
			List list = session.createSQLQuery(sql)
			.addEntity(User.class)
			.setInteger("a", pageSize)
			.list();
			
			session.getTransaction().commit();
			HibernateSessionFactory.closeSession();
			
			return list;
		}

		public List getLastPageList(int pageSize, int showPage) {
			Session session = HibernateSessionFactory.getSession();
			session.beginTransaction();
			
			List<Long> userSumList = session.createQuery("select count(*) from User").list();
			int userSum = Integer.parseInt(userSumList.get(0)+"");
			
			int pageSum = 0;
			if(userSum%pageSize==0)
				pageSum = userSum/pageSize;
			else if(userSum%pageSize!=0)
				pageSum = userSum/pageSize+1;
			
			int start = (pageSum-1)*pageSize;
			String sql = "select * from user limit :a,:b";
			
			List list = session.createSQLQuery(sql)
			.addEntity(User.class)
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
			
			String sql = "select * from user limit :a,:b";
			List list = session.createSQLQuery(sql)
			.addEntity(User.class)
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
			
			List<Long> userSumList = session.createQuery("select count(*) from User").list();
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
			
			String sql = "select * from user limit :a,:b";
			List list = session.createSQLQuery(sql)
			.addEntity(User.class)
			.setInteger("a", start)
			.setInteger("b", pageSize)
			.list();
			
			session.getTransaction().commit();
			HibernateSessionFactory.closeSession();
			
			return list;
		}
}
