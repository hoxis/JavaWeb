package com.liuhao.listenerdemo;

import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

public class HttpSessionAttributeListenerDemo implements
		HttpSessionAttributeListener {

	@Override
	public void attributeAdded(HttpSessionBindingEvent event) {
		System.out.println(event.getSession().getId() + ",增加属性，属性名称：" 
				+ event.getName() + ",属性内容：" + event.getValue());
	}

	@Override
	public void attributeRemoved(HttpSessionBindingEvent event) {
		System.out.println(event.getSession().getId() + ",删除属性，属性名称：" 
				+ event.getName() + ",属性内容：" + event.getValue());
	}

	@Override
	public void attributeReplaced(HttpSessionBindingEvent event) {
		System.out.println(event.getSession().getId() + ",替换属性，属性名称：" 
				+ event.getName() + ",属性内容：" + event.getValue());
	}


}
