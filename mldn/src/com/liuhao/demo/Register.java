package com.liuhao.demo;

import java.util.HashMap;
import java.util.Map;

public class Register {// 在构造方法中初始化属性
	private String name;
	private String age;
	private String email;
	private Map<String,String> errors = null;

	public Register() {
		this.name = "";
		this.age = "";
		this.email = "";
		this.errors = new HashMap<String, String>();
	}
	
	public boolean validate(){//数据验证操作
		boolean flag = true;
		
		if(!this.name.matches("\\w{6,15}")){//正则表达式匹配
			flag = false;//修改标志位
			this.name = "";//将不合法的内容清除
			errors.put("nameErr", "用户名是6~15位的字母或数字");//保存错误信息
		}
		
		if(!this.age.matches("\\d+")){
			flag = false;
			this.age = "";
			errors.put("ageErr", "年龄只能是数字");
		}
		
		if(!this.email.matches("\\w+@\\w+\\.\\w+\\.?\\w*")){
			flag = false;
			this.email = "";
			errors.put("emailErr", "email地址不合法！");
		}
		
		return flag;
	}
	
	public String getErrorMsg(String key){
		String value = this.errors.get(key);
//		return value == null ? "" : value;
		
		//当value为null时，设为"",否则会在页面显示null
		if(value == null){
			value = "";
		}
		
		return value;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Map<String, String> getErrors() {
		return errors;
	}

	public void setErrors(Map<String, String> errors) {
		this.errors = errors;
	}

}
