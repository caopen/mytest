package com.itheima.struts;

import java.util.Arrays;
import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class UserAction implements Action{

	@Override
	public String execute() throws Exception {
		ActionContext context = ActionContext.getContext();
		//相当于request.getParameterMap
		Map<String, Object> map = context.getParameters();
		for (Map.Entry<String,Object> entry : map.entrySet()) {
			String name = entry.getKey();
			String[] value = (String[]) entry.getValue();
			System.out.println(name+"/t" + Arrays.toString(value));
		}
		//将获取的参数放入request域中
		context.put("name", "context");
		//将获取的参数放入session域中
		Map<String, Object> session = context.getSession();
		session.put("name", "session");
		//将获取的参数放入application(就是项目共享)域中
		Map<String, Object> application = context.getApplication();
		application.put("name", "application");
		return SUCCESS;
	}

}
