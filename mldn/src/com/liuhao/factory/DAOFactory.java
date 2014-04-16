package com.liuhao.factory;

import com.liuhao.dao.IEmpDAO;
import com.liuhao.dao.IUserDAO;
import com.liuhao.dao.proxy.EmpDAOProxy;
import com.liuhao.dao.proxy.UserDAOProxy;

public class DAOFactory {
	public static IEmpDAO getIEmpDAOInstance() throws Exception{
		return new EmpDAOProxy();
	}
	
	public static IUserDAO getIUserDAOInstance(){
		return new UserDAOProxy();
	}
}
