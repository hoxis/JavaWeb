package com.liuhao.service.impl;

import java.util.List;

import com.liuhao.bean.User;
import com.liuhao.dao.UserDAO;
import com.liuhao.service.UserService;

public class UserServiceImpl implements UserService {

	private UserDAO userDAO;
	
	public UserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Override
	public List<User> findAll() {
		return userDAO.findAllUsers();
	}

	@Override
	public void save(User user) {
		userDAO.saveUser(user);
	}

	@Override
	public void delete(User user) {
		userDAO.removeUser(user);
	}

	@Override
	public User findUserById(Integer id) {
		return userDAO.findUserById(id);
	}

	@Override
	public void update(User user) {
		userDAO.updateUser(user);
	}

}
