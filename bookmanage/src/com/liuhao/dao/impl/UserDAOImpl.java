package com.liuhao.dao.impl;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.liuhao.bean.User;
import com.liuhao.dao.UserDAO;

public class UserDAOImpl extends HibernateDaoSupport implements UserDAO{

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
		return this.getHibernateTemplate().get(User.class, id);
	}

	@Override
	public void updateUser(User user) {
		this.getHibernateTemplate().update(user);
	}

	@Override
	public User findUser(User user) {
		if(user == null){
			return null;
		}
		String hql = "from User user where user.username=? and user.password=?";
		if(!this.getHibernateTemplate().find(hql, new String[]{user.getUsername(), user.getPassword()}).isEmpty()){
			return (User) this.getHibernateTemplate().find(hql, new String[]{user.getUsername(), user.getPassword()}).get(0);
		}
		else{
			return null;
		}
		
	}
}
