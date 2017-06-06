package com.itheima.action;

import com.itheima.domain.Customer;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class Action3 extends ActionSupport implements ModelDriven<Customer>{
	private Customer customer = new Customer();
	@Override
	public Customer getModel() {
		// TODO Auto-generated method stub
		return customer;
	}
	public String execute(){
		System.out.println(customer);
		return SUCCESS;
		
	}

}
