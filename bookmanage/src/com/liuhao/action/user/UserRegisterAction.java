package com.liuhao.action.user;

import com.liuhao.bean.User;
import com.liuhao.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserRegisterAction extends ActionSupport {
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
		userService.saveUser(user);
		ActionContext.getContext().getSession().put("user",user);
//		ActionContext.getContext().getSession().put("username", user.getUsername());
//		ActionContext.getContext().getSession().put("userid",user.getUserid());
		return SUCCESS;
	}

}
