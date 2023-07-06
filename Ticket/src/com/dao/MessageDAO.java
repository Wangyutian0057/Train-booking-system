package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import com.bean.Message;

public class MessageDAO {
	
	public int insert(Message entity){
		String sql = "insert into message(username,title,content,date)   values('"+entity.getUsername()+"','"+entity.getTitle()+"','"+entity.getContent()+"','"+entity.getDate()+"')";
		System.out.println(sql);
		DBUtil.getConnection();
		int rows = DBUtil.doUpdate(sql);
		DBUtil.close();
		return rows;
	}

	public int delete(Message entity){
		String sql = "delete from message where id = "+entity.getId();
		System.out.println(sql);
		DBUtil.getConnection();
		int rows = DBUtil.doUpdate(sql);
		DBUtil.close();
		return rows;
	}
	
	public int deleteById(int id){
		String sql = "delete from message where id = "+id;
		System.out.println(sql);
		DBUtil.getConnection();
		int rows = DBUtil.doUpdate(sql);
		DBUtil.close();
		return rows;
	}
	
	public int update(Message entity){
		String sql = "update message set username = '"+entity.getUsername()
				+"',title='"+entity.getTitle()
				+"',content='"+entity.getContent()
				+"',date='"+entity.getDate()+"' where id="+entity.getId();
		
		System.out.println(sql);
		DBUtil.getConnection();
		int rows = DBUtil.doUpdate(sql);
		DBUtil.close();
		return rows;
	}
	
	@SuppressWarnings("unchecked")
	public List queryAll(){
		List list = null;
		String sql = "select * from message";
		System.out.println(sql);
		DBUtil.getConnection();
		ResultSet rs = DBUtil.doQuery(sql);
		try {
			list = DBUtil.resultSetToList(rs);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DBUtil.close();
		return list;
	}
	
	@SuppressWarnings("unchecked")
	public Message queryById(int id){
		List list = null;
		String sql = "select * from message where id="+id;
		System.out.println(sql);
		DBUtil.getConnection();
		ResultSet rs = DBUtil.doQuery(sql);
		try {
			list = DBUtil.resultSetToList(rs);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DBUtil.close();
		HashMap map = (HashMap)list.get(0);
		Message msg = this.hashMapToMessage(map);
		return msg;
	}
	
	public Message queryByName(String name){
		List list = null;
		String sql = "select * from message where username='"+name+"'";
		System.out.println(sql);
		DBUtil.getConnection();
		ResultSet rs = DBUtil.doQuery(sql);
		try {
			list = DBUtil.resultSetToList(rs);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DBUtil.close();
		HashMap map = (HashMap)list.get(0);
		Message msg = this.hashMapToMessage(map);
		return msg;
	}
	public Message hashMapToMessage(HashMap map){
		Message msg = new Message();
		msg.setId((Integer)map.get("id"));
		msg.setUsername((String)map.get("username"));
		msg.setTitle((String)map.get("title"));
		msg.setContent((String)map.get("content"));
		msg.setDate((String)map.get("date"));
		return msg;
	}
}
