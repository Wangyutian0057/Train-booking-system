package com.dao.impl;

import java.util.List;
import com.bean.Message;
import com.dao.MessageDAO;

public class MessageModule {
	private MessageDAO dao = new MessageDAO();
	
	public int insert(Message entity){
		return this.dao.insert(entity);
	}
	
	public int delete(Message entity){
		return this.dao.delete(entity);
	}
	
	public int deleteById(int id){
		return this.dao.deleteById(id);
	}
	
	public int update(Message entity){
		return this.dao.update(entity);
	}
	
	public Message queryById(int id){
		return this.dao.queryById(id);
	}

	public Message queryByName(String name){
		return this.dao.queryByName(name);
	}
	@SuppressWarnings("unchecked")
	public List queryAll(){
		return this.dao.queryAll();
	}
	
}
