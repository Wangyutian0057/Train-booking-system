package com.action;

import java.util.HashMap;
import java.util.List;

import com.bean.PageUtil;
import com.bean.Time;
import com.bean.Message;
import com.dao.impl.MessageModule;
import com.opensymphony.xwork2.ActionSupport;

public class MessageAction extends ActionSupport {
	private MessageModule module = new MessageModule();
	private Message msg;
	private List list;
	private  Integer id;
	private PageUtil pageUtil = new PageUtil();
	private List listPage;
	
	
	public List getListPage() {
		return listPage;
	}
	
	public PageUtil getPageUtil() {
		return pageUtil;
	}
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public void setMsg(Message msg) {
		this.msg = msg;
	}

	public Message getMsg() {
		return msg;
	}

	public List getList() {
		return list;
	}

	public String insert() {
		String date = new Time().toString();
		this.msg.setDate(date);
		if (this.module.insert(msg) > 0)
			return SUCCESS;
		return "fail";
	}

	public String delete() {
		this.module.deleteById(id);
		return SUCCESS;
	}

	public String update(){
		msg = this.module.queryById(id);
		return "update";	
	}
	
	public String update1(){
		msg.setDate(new Time().toString());
		if(this.module.update(msg)>0)
			return SUCCESS;
		return "fail";
	}
	
	public String queryAll() {
		list = this.module.queryAll();
		this.pageUtil.setPageCount(8);
		listPage = this.pageUtil.setPage(list);
		return SUCCESS;
	}
	
	public String execute() throws Exception {
		return super.execute();
	}
}
