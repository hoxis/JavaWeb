package com.liuhao.service.impl;

import com.liuhao.bean.User;
import com.liuhao.dao.UserDAO;
import com.liuhao.service.UserService;

public class UserServiceImpl implements UserService {
	private UserDAO userDao;
	
	public UserDAO getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDAO userDao) {
		this.userDao = userDao;
	}

	@Override
	public void saveUser(User user) {
		userDao.saveUser(user);
	}

	@Override
	public void removeUser(User user) {
		userDao.removeUser(user);
	}

	@Override
	public User findUserById(Integer id) {
		return userDao.findUserById(id);
	}

	@Override
	public void updateUser(User user) {
		userDao.updateUser(user);
	}
	@Override
	public User findUser(User user) {
		return userDao.findUser(user);
	}
}
