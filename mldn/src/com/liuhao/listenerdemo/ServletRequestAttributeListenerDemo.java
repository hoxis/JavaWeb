package com.liuhao.listenerdemo;

import javax.servlet.ServletRequestAttributeEvent;

public class ServletRequestAttributeListenerDemo implements
		javax.servlet.ServletRequestAttributeListener {

	@Override
	public void attributeAdded(ServletRequestAttributeEvent srae) {
		System.out.println("%%% 增加Request属性,属性名称：" + srae.getName() 
				+ "，属性内容：" + srae.getValue());
	}

	@Override
	public void attributeRemoved(ServletRequestAttributeEvent srae) {
		System.out.println("%%% 删除Request属性,属性名称：" + srae.getName() 
				+ "，属性内容：" + srae.getValue());
	}

	@Override
	public void attributeReplaced(ServletRequestAttributeEvent srae) {
		System.out.println("%%% 替换Request属性,属性名称：" + srae.getName() 
				+ "，属性内容：" + srae.getValue());
	}

}
