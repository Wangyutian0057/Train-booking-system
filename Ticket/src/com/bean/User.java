package com.bean;

import java.util.Date;


public class User {
  private Integer id;
  private String username;
  private String password;
  private String address;
  private Integer age;
  private String gender;
  private Date registerDate;
  
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public Integer getAge() {
	return age;
}
public void setAge(Integer age) {
	this.age = age;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public Date getRegisterDate() {
	return registerDate;
}
public void setRegisterDate(Date registerDate) {
	this.registerDate = registerDate;
}
@Override
public String toString() {
	String str="用户ID："+this.id+"    用户名："+this.username+"    性别："+this.gender+"    注册日期："+this.registerDate;
	return str;
}
  
  
}
