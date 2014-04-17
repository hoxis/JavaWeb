package com.liuhao.listenerdemo;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;

public class ServletRequestListenerDemo implements ServletRequestListener{

	@Override
	public void requestDestroyed(ServletRequestEvent event) {
		System.out.println("$$$  request初始化 。http://" 
				+ event.getServletRequest().getRemoteAddr()+ event.getServletContext().getContextPath());
	}

	@Override
	public void requestInitialized(ServletRequestEvent event) {
		System.out.println("$$$  request销毁 。http://" 
				+ event.getServletRequest().getRemoteAddr()+ event.getServletContext().getContextPath());
	}

}
