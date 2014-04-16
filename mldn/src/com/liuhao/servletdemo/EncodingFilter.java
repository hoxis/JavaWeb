package com.liuhao.servletdemo;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EncodingFilter implements Filter{

	private String charSet;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.charSet = filterConfig.getInitParameter("charset");
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		request.setCharacterEncoding(this.charSet);
	}
	
	@Override
	public void destroy() {
	}


}
