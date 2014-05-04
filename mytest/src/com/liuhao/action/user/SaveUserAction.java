package com.liuhao.action.user;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;


import com.liuhao.bean.User;
import com.liuhao.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class SaveUserAction extends ActionSupport{
	private User user;
	private UserService service;

	public UserService getService() {
		return service;
	}

	public void setService(UserService service) {
		this.service = service;
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	@Override
	public void validate() {
		Map<String, List<String>> map = this.getFieldErrors();
		Set<String> set = map.keySet();
		
		for(Iterator<String> iter = set.iterator();iter.hasNext();){
			System.out.println(map.get(iter.next()));
		}
	}
	

	@Override
	public String execute() throws Exception {
		this.service.save(user);
		
		return SUCCESS;
	}

	
}
