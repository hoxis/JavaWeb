package com.liuhao.servletdemo;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class SimpleFilter implements Filter {

	@Override
	public void init(FilterConfig config) throws ServletException {
		String initParam = config.getInitParameter("ref");
		System.out.println("-----过滤器初始化，初始化参数为：" + initParam);
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		System.out.println("------before doFilter()-----");
		chain.doFilter(request, response);
		System.out.println("-------after doFilter()-------");
	}
	
	@Override
	public void destroy() {
		System.out.println("销毁过滤器");
	}


}
