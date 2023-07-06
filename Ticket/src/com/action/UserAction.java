package com.action;
import java.util.Date;


import java.util.Locale;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import com.bean.User;
import com.common.HibernateSessionFactory;
import com.dao.UserDao;
import com.dao.impl.UserDaoImpl;
import com.dao.TicketDao;
import com.dao.impl.TicketDaoImpl;
import com.bean.Ticket;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
     
	private User user;
	private String repassword;
	private String role;
	private UserDao userDao =  new UserDaoImpl();
	private TicketDao t = new TicketDaoImpl();
	private String  valideteCode;

	public String getValideteCode() {
		return valideteCode;
	}
	public void setValideteCode(String valideteCode) {
		this.valideteCode = valideteCode;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public UserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
	public String registerAction() throws Exception {
		String returnStr="input";
		if(this.user.getUsername().trim().equals("")||this.user.getUsername().trim().equals(null))
		{
				this.addActionError("用户名为空！");
		}
		else
		{
			if(this.user.getPassword().equals(repassword)==false)
			{
				if(this.getUser().getAge()>=150||this.getUser().getAge()<=0||this.user.getAge().equals(null))
				{
					this.addActionError("您输入的年龄有误！");
				}
				else
				{
					this.getUser().setRegisterDate(new Date());
					this.getUserDao().save(this.user);
					return SUCCESS;
				}
			}
			else
			{
				this.addActionError("密码不一致！");
			}	
		}
		return returnStr;
	}

	public String loginAction() throws Exception {
		String returnStr = "input";
		int pageSize = 6;
		int ticketSum = t.countTicket();
		int userSum = userDao.countUser();
		int pageSum;
		int showPage = 1;
		
		if(this.user.getUsername().trim().equals("")||this.user.getUsername().trim().equals(null))
		{
			this.addActionError("用户名不能为空！");
		}
		else
		{
			Object obj=ServletActionContext.getContext().getSession().get("code");
			String strCode=obj==null?"":obj.toString();
			//验证码判断
			if(this.valideteCode!=null&&this.valideteCode.toUpperCase().equals(strCode))
			{
				if(this.user.getUsername().trim().equals("admin")&&this.user.getPassword().trim().equals("admin"))
				{
					returnStr = "adminLoginSuccess";
					pageSum = t.countPage(pageSize);
					
					HttpServletRequest request = ServletActionContext.getRequest();
					List<Ticket> allTicketList = this.t.splitPageShowTicketList(pageSize, showPage);
					
					request.setAttribute("allTicketList", allTicketList);
					request.setAttribute("ticketSum",ticketSum);
					request.setAttribute("pageSum",pageSum);
					request.setAttribute("pageSize",pageSize);
					request.setAttribute("showPage",showPage);
				}
					//判断失败
				else if(this.userDao.checkLogin(user.getUsername(), user.getPassword()))
				{
					returnStr = "userLoginSuccess";
					pageSum = userDao.countPage(pageSize);
					HttpServletRequest request = ServletActionContext.getRequest();
					List<Ticket> allTicketList = this.t.splitPageShowTicketList(pageSize, showPage);
					
					request.setAttribute("userName", user.getUsername());
					request.setAttribute("allTicketList", allTicketList);
					request.setAttribute("ticketSum",ticketSum);
					request.setAttribute("pageSum",pageSum);
					request.setAttribute("pageSize",pageSize);
					request.setAttribute("showPage",showPage);
				}
				else {
					this.addActionError("登陆失败!");
				}
			}
			else
			{
				this.valideteCode="";
				this.addActionError("验证码有误！");
			}
		}
		
		
		return returnStr;
	}
	public String otherAction() throws Exception {

		return super.execute();
	}
	
}
