package com.liuhao.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.liuhao.bean.User;
import com.liuhao.dao.UserDAO;

public class UserDAOImpl extends HibernateDaoSupport implements UserDAO {

	@Override
	public void saveUser(User user) {
		this.getHibernateTemplate().save(user);
	}

	@Override
	public void removeUser(User user) {
		this.getHibernateTemplate().delete(user);
	}

	@Override
	public User findUserById(Integer id) {
		User user = (User) this.getHibernateTemplate().get(User.class, id);

		return user;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> findAllUsers() {
		String hql = "from User user order by user.id desc";

		return (List<User>) this.getHibernateTemplate().find(hql);

	}

	@Override
	public void updateUser(User user) {
		this.getHibernateTemplate().update(user);
	}

}
