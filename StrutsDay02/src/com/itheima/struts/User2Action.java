package com.itheima.struts;

import java.util.Arrays;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.xml.internal.ws.client.RequestContext;

public class User2Action extends ActionSupport{
	public String execute(){
		HttpServletRequest request = ServletActionContext.getRequest();
		Map<String, String[]> map = request.getParameterMap();
		for (Map.Entry<String, String[]> entry : map.entrySet()) {
			System.out.println(entry.getKey()+"/t" + Arrays.toString(entry.getValue()));
		}
		request.setAttribute("name", "request");
		//将获取的参数放入session域中
		request.getSession().setAttribute("name", "session");
					
		//将获取的参数放入application(就是项目共享)域中
		request.getServletContext().setAttribute("name", "servletContext");
		return SUCCESS;
		
	}
}
