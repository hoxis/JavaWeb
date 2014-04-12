package com.liuhao.dao.test;

import java.util.ArrayList;
import java.util.List;

import com.liuhao.factory.DAOFactory;
import com.liuhao.vo.Emp;

public class TestDAOQuery {
	public static void main(String[] args) throws Exception {
		List<Emp> all = new ArrayList<Emp>();
		all = DAOFactory.getIEmpDAOInstance().findAll("");
		Emp emp = null;
		for(int i=0;i<all.size();i++){
			emp = all.get(i);
			System.out.println(emp.getEmpno() + "||" + emp.getEname() +
					"||" + emp.getJob() + "||" + emp.getHiredate() + "||" + emp.getSal());
		}
	}
}
