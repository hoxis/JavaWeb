package com.liuhao.action.user;

import com.liuhao.bean.User;
import com.liuhao.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class UpdatePUserAction extends ActionSupport {
	
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
		user = userService.findUserById(user.getUserid());
		if(user != null){
			return SUCCESS;
		}
		else{
			this.addFieldError("userNotExsit", "要修改的用户不存在！！！");
			return ERROR;
		}
	}
}
