package com.liuhao.action;

import java.io.ByteArrayInputStream;

import com.liuhao.util.RandomNumUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class RandomAction extends ActionSupport {
	private ByteArrayInputStream inputStream;

	public ByteArrayInputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(ByteArrayInputStream inputStream) {
		this.inputStream = inputStream;
	}

	@Override
	public String execute() throws Exception {
		RandomNumUtil randomUtil = RandomNumUtil.Instance();
		this.setInputStream(randomUtil.getImage());
		ActionContext.getContext().getSession()
				.put("random", randomUtil.getStr());
		return SUCCESS;
	}
}
