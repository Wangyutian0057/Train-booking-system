package com.bean;

public class BookTicket1 {
	private Integer tid;
    private String travelname;
    private String gender;
    private int Id;
    private int Telephone;
    private int ticketid;
    private int neednum;
    
	public Integer getTid() {
		return tid;
	}
	public void setTid(Integer tid) {
		this.tid = tid;
	}
	public String getTravelname() {
		return travelname;
	}
	public void setTravelname(String travelname) {
		this.travelname = travelname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public int getTelephone() {
		return Telephone;
	}
	public void setTelephone(int telephone) {
		Telephone = telephone;
	}
	public int getTicketid() {
		return ticketid;
	}
	public void setTicketid(int ticketid) {
		this.ticketid = ticketid;
	}
    
	public int getNeednum() {
		return neednum;
	}
	public void setNeednum(int neednum) {
		this.neednum = neednum;
	}
	public String toString() {
		return "旅客姓名:"+this.getTravelname()
				+"		性别:"+this.getGender()
				+"		身份证号:"+this.getId()
				+"		电话:"+this.getTelephone()
				+"      车次id："+this.getTicketid()
				+"      所需票数："+this.getNeednum();

	}
    
}
