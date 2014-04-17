package com.liuhao.listenerdemo;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ServletListenerDemo implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent event) {
		//上下文初始化时触发
		System.out.println("***容器初始化--》》" + event.getServletContext().getContextPath());
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent event) {
		System.out.println("容器销毁--》》" + event.getServletContext().getContextPath());;
	}


}
