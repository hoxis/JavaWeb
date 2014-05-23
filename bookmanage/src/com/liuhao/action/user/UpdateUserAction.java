package com.liuhao.action.user;

import org.apache.struts2.ServletActionContext;

import com.liuhao.bean.User;
import com.liuhao.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class UpdateUserAction extends ActionSupport {

	private UserService userService;

	private User user;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	@Override
	public String execute() throws Exception {
		userService.updateUser(user);
		ServletActionContext.getRequest().getSession().setAttribute("username", user.getUsername());
		ServletActionContext.getRequest().getSession().setAttribute("userid",user.getUserid());
		return SUCCESS;
	}
}
