package com.itheima.action;

import com.itheima.domain.Customer;
import com.opensymphony.xwork2.ActionSupport;

public class Action2 extends ActionSupport{
	private Customer customer;

	public Customer getCustomer() {
		System.out.println("aaaaaaaa");
		return customer;
	}

	public void setCustomer(Customer customer) {
		System.out.println("bbbbbbbbb");
		this.customer = customer;
	}

	public String execute(){
		System.out.println(customer);
		return SUCCESS;
		
	}
}
