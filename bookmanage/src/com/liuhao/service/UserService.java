package com.liuhao.service;

import com.liuhao.bean.User;

public interface UserService {
	
	public void saveUser(User user);
	
	public void removeUser(User user);
	
	public User findUserById(Integer id);
	
	public User findUser(User user);
	
	public void updateUser(User user);
	
}
