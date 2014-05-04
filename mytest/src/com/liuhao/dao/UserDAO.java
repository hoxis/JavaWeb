package com.liuhao.dao;

import java.util.List;

import com.liuhao.bean.User;

public interface UserDAO {

	public void saveUser(User user);
	
	public void removeUser(User user);
	
	public User findUserById(Integer id);
	
	public List<User> findAllUsers();
	
	public void updateUser(User user);
	
}
