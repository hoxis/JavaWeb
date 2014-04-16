package com.liuhao.dao.proxy;

import com.liuhao.dao.IUserDAO;
import com.liuhao.dao.impl.UserDAOImpl;
import com.liuhao.dbc.DatabaseConnection;
import com.liuhao.vo.User;

public class UserDAOProxy implements IUserDAO{

	private DatabaseConnection dbc = null;
	private IUserDAO dao = null;
	
	public UserDAOProxy(){
		this.dbc = new DatabaseConnection();
		this.dao = new UserDAOImpl(dbc.getConnection());
	}
	
	@Override
	public boolean findLogin(User user) throws Exception {
		boolean flag = false;
		flag = dao.findLogin(user);
		return flag;
	}

}
