package com.itheima.action;

import com.opensymphony.xwork2.ActionSupport;

public class Action1 extends ActionSupport{
	//使用属性驱动：要生成set方法
			private String username;
			public void setUsername(String username) {
				this.username = username;
			}
			public void setPassword(String password) {
				this.password = password;
			}
			public void setGender(String gender) {
				this.gender = gender;
			}
			public void setHobby(String hobby) {
				this.hobby = hobby;
			}
			private String password;
			private String gender;
			private String hobby;
	public String execute(){
		System.out.println(username);
		System.out.println(password);
		System.out.println(gender);
		System.out.println(hobby);
		
		return SUCCESS;
		
	}
}
