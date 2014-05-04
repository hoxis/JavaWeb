package com.liuhao.action.user;

import java.util.Map;

import com.liuhao.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ListUserAction extends ActionSupport {
	private UserService service;

	public UserService getService() {
		return service;
	}

	public void setService(UserService service) {
		this.service = service;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public String execute() throws Exception {
		Map request = (Map)ActionContext.getContext().get("request");
		
		request.put("list", service.findAll());
		
		return SUCCESS;
	}
}
