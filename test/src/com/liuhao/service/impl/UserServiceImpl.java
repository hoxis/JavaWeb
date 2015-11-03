package com.liuhao.service.impl;

import java.util.List;

import com.liuhao.dao.UserDao;
import com.liuhao.entity.User;
import com.liuhao.service.UserService;

public class UserServiceImpl implements UserService {

	public UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public int insert(User user) {
		return userDao.insert(user);
	}

	@Override
	public int update(User user) {
		return userDao.update(user);
	}

	@Override
	public int delete(String userName) {
		return userDao.delete(userName);
	}

	@Override
	public List<User> selectAll() {
		return userDao.selectAll();
	}

	@Override
	public int countAll() {
		return userDao.countAll();
	}

	@Override
	public User findByUserName(String userName) {
		return userDao.findByUserName(userName);
	}

}
