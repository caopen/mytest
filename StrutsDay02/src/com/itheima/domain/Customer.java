package com.itheima.domain;

import java.util.Date;

public class Customer {
	private String username;
	private String password;
	private String gender;
	private String hobby;
	private Date birthday;
	

	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	@Override
	public String toString() {
		return "Customer [username=" + username + ", password=" + password + ", gender=" + gender + ", hobby=" + hobby
				+ ", birthday=" + birthday + "]";
	}
	
	
	
	
	
}
