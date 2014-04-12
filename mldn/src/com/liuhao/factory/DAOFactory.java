package com.liuhao.factory;

import com.liuhao.dao.IEmpDAO;
import com.liuhao.dao.proxy.EmpDAOProxy;

public class DAOFactory {
	public static IEmpDAO getIEmpDAOInstance() throws Exception{
		return new EmpDAOProxy();
	}
}
