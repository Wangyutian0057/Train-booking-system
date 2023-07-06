package com.bean;

import java.util.Date;

public class Ticket {
	
	private int id;
	private String start;
	private String end;
	private double price;
	private String model;
	private String ticketFactory;
	private int ticketnum;
	private String flytime;
	
	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getStart() {
		return start;
	}


	public void setStart(String start) {
		this.start = start;
	}


	public String getEnd() {
		return end;
	}


	public void setEnd(String end) {
		this.end = end;
	}


	public double getPrice() {
		return price;
	}


	public void setPrice(double price) {
		this.price = price;
	}


	public String getModel() {
		return model;
	}


	public void setModel(String model) {
		this.model = model;
	}


	public String getTicketFactory() {
		return ticketFactory;
	}


	public void setTicketFactory(String ticketFactory) {
		this.ticketFactory = ticketFactory;
	}


	public int getTicketnum() {
		return ticketnum;
	}


	public void setTicketnum(int ticketnum) {
		this.ticketnum = ticketnum;
	}


	public String getFlytime() {
		return flytime;
	}


	public void setFlytime(String flytime) {
		this.flytime = flytime;
	}


	public String toString() {
		return "车次ID:"+this.getId()
				+"		出发地址:"+this.getStart()
				+"		目的地址:"+this.getEnd()
				+"		价格:"+this.getPrice()
				+"      列车类型："+this.getModel()
				+"      历程时间："+this.getTicketFactory()
				+"      剩余票数："+this.getTicketnum()
				+"      始发时间："+this.getFlytime();
	}
	
}
