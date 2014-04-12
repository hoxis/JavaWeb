package com.liuhao.dao.test;

import com.liuhao.factory.DAOFactory;
import com.liuhao.vo.Emp;

public class TestDAOInsert {
	public static void main(String[] args) throws Exception {
		Emp emp = null;
		for(int i=0;i<5;i++){
			emp = new Emp();
			emp.setEmpno(1000 + i);
			emp.setEname("刘浩" + i);
			emp.setJob("程序猿" + i);
			emp.setHiredate(new java.util.Date());
			emp.setSal(500 * i);
			
			DAOFactory.getIEmpDAOInstance().doCreate(emp);
		}
	}
}
