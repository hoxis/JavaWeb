package com.liuhao.service;

import java.util.List;

import com.liuhao.bean.User;

public interface UserService {

	public List<User> findAll();
	
	public void save(User user);
	
	public void delete(User user);
	
	public User findUserById(Integer id);
	
	public void update(User user);
	
}
