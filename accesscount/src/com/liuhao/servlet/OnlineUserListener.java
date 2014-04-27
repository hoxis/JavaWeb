package com.liuhao.servlet;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class OnlineUserListener implements ServletContextListener, HttpSessionListener{

	private int sum;//存放在线用户数
	private ServletContext app;//全局变量，存放application对象
	
	@Override
	public void sessionCreated(HttpSessionEvent se) {
		//sum = (Integer) app.getAttribute("sum");
		sum++;
		app.setAttribute("sum", sum);
System.out.println("-----新用户:" + se.getSession().getId());
		
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
System.out.println("------用户注销:" + se.getSession().getId());		
		//sum = (Integer) app.getAttribute("sum");
		if(sum > 0){
			sum--;
		}
		app.setAttribute("sum", sum);
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		app = sce.getServletContext();//获取application对象，初始化到app中
		sum = 0;//用户数目初始化为0
		app.setAttribute("sum", sum);
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
	}


}
