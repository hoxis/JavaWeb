package com.liuhao.listenerdemo;

import java.util.Set;
import java.util.TreeSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class OnlineUserList implements HttpSessionAttributeListener,
		HttpSessionListener, ServletContextListener {

	private ServletContext app = null;

	@Override
	public void contextInitialized(ServletContextEvent event) {
		app = event.getServletContext();// 取得上下文的实例
		app.setAttribute("online", new TreeSet());// 设置空集合
	}

	@Override
	public void attributeAdded(HttpSessionBindingEvent event) {
		Set userSet = (Set) this.app.getAttribute("online");// 取出已有用户列表
		userSet.add(event.getValue());// 增加新用户
		app.setAttribute("online", userSet);// 重新保存
		System.out.println("^^^^^^增加新用户" + event.getValue());
	}

	@Override
	public void attributeRemoved(HttpSessionBindingEvent event) {
		Set userSet = (Set) this.app.getAttribute("online");// 取出已有用户列表
		userSet.remove(event.getValue());// 删除离开用户
		app.setAttribute("online", userSet);// 重新保存
		System.out.println("------删除");
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent event) {
		Set userSet = (Set) this.app.getAttribute("online");// 取出已有用户列表
		userSet.remove(event.getSession().getAttribute("userid"));
		app.setAttribute("online", userSet);// 重新保存
	}
	
	@Override
	public void attributeReplaced(HttpSessionBindingEvent event) {

	}

	@Override
	public void contextDestroyed(ServletContextEvent event) {
	}

	@Override
	public void sessionCreated(HttpSessionEvent event) {
	}

}
