package com.action;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;
import org.apache.struts2.ServletActionContext;
import com.bean.Ticket;
import com.dao.TicketDao;
import com.dao.impl.TicketDaoImpl;
import com.opensymphony.xwork2.ActionSupport;

public class SelectAction extends ActionSupport{

	private String start,end,tip;
	private List<Ticket> tickets;
	private TicketDao t = new TicketDaoImpl();
	
	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}

	public TicketDao getT() {
		return t;
	}

	public void setT(TicketDao t) {
		this.t = t;
	}


	public String getStart() {
		return start;
	}

	public void setStart(String start) throws UnsupportedEncodingException {
		this.start = URLDecoder.decode(start, "gb2312");
	}

	public String getEnd() {
		return end;
	}

	public void setEnd(String end) throws UnsupportedEncodingException {
		this.end = URLDecoder.decode(end, "gb2312");
	}
	
	public List<Ticket> getTickets() {
		return tickets;
	}

	public void setTickets(List<Ticket> tickets) {
		this.tickets = tickets;
	}

	public String selectAction(){
		System.out.println(this.start+", "+this.end);
		tickets = t.selectTicketByStartEnd(this.start,this.end);	
		ServletActionContext.getRequest().setAttribute("tickets", tickets);
		if(tickets == null||tickets.size()<1)
			this.tip="对不起，票已售完！";
		else
			this.tip="票有剩余！";
		return super.SUCCESS;
	}
}
