package com.liuhao.listenerdemo;

import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

public class UserLogin implements HttpSessionBindingListener {

	private String name;
	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public UserLogin(String name) {
		this.name = name;
	}

	@Override
	public void valueBound(HttpSessionBindingEvent event) {
		System.out.println("###在session中保存UserLogin对象(name=" + this.getName()
				+ "),sessionid = " + event.getSession().getId());
	}

	@Override
	public void valueUnbound(HttpSessionBindingEvent event) {
		System.out.println("###在session中移除UserLogin对象(name=" + this.getName()
				+ "),sessionid = " + event.getSession().getId());
	}


}
