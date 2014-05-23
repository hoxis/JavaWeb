package com.liuhao.action.user;

import com.liuhao.bean.User;
import com.liuhao.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserLoginAction extends ActionSupport {
	
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
		user = userService.findUser(user);
		if(user != null){
			ActionContext.getContext().getSession().put("user",user);
			return SUCCESS;
		}
		else{
			this.addFieldError("NameOrPasswordError", "用户名或密码错误，请重新输入！！！");
			return ERROR;
		}
	}
}
