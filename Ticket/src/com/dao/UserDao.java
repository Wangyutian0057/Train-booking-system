package com.dao;

import java.util.List;

import com.bean.User;

public interface UserDao {
	public void save (User u);
	public void delete (User u);
	public void update (User u);
	public User showUser (Integer id);
	public List<User> getAllUserList ();
	public User findById (Integer uid);
	public void deleteById (Integer uid);
	public boolean checkLogin (String username,String password);
	public int countUser();
	public int countPage(int pageCount);
	public List splitPageShowUserList(int pageSize, int showPage);
	public List getNextPageList(int pageSize, int showPage);
	public List getBeforePageList(int pageSize, int showPage);
	public List getFirstPageList(int pageSize, int showPage);
	public List getLastPageList(int pageSize, int showPage);
}
