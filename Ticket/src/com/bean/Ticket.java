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
		return "����ID:"+this.getId()
				+"		������ַ:"+this.getStart()
				+"		Ŀ�ĵ�ַ:"+this.getEnd()
				+"		�۸�:"+this.getPrice()
				+"      �г����ͣ�"+this.getModel()
				+"      ����ʱ�䣺"+this.getTicketFactory()
				+"      ʣ��Ʊ����"+this.getTicketnum()
				+"      ʼ��ʱ�䣺"+this.getFlytime();
	}
	
}
