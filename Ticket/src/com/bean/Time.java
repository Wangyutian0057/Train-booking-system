package com.bean;

import java.util.Calendar;

public class Time {
	private int year;
	private int month;
	private int date;
	private int hour;
	private int minute;
	private int second;
	
	public Time(){
		Calendar cd = Calendar.getInstance();
		this.year = cd.get(Calendar.YEAR);
		this.month = cd.get(Calendar.MONTH)+1;
		this.date = cd.get(Calendar.DATE);
		this.hour = cd.get(Calendar.HOUR_OF_DAY);
		this.minute = cd.get(Calendar.MINUTE);
		this.second = cd.get(Calendar.SECOND);
	}
	
	public String toString(){
		String hours = ""+this.hour;
		String minutes = ""+this.minute;
		String seconds = ""+this.second;
		if(this.hour<10)
			hours = "0"+this.hour;
		if(this.minute<10)
			minutes = "0"+this.minute;
		if(this.second<10)
			seconds = "0"+this.second;
		String str = this.year+"-"+this.month+"-"+this.date+" "+hours+":"+minutes+":"+seconds;
		return str;
	}
	
}
