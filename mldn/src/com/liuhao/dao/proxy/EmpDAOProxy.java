package com.liuhao.dao.proxy;

import java.util.List;

import com.liuhao.dao.IEmpDAO;
import com.liuhao.dao.impl.EmpDAOImpl;
import com.liuhao.dbc.DatabaseConnection;
import com.liuhao.vo.Emp;

public class EmpDAOProxy implements IEmpDAO {

	private DatabaseConnection dbc = null;
	private IEmpDAO dao = null;
	
	public EmpDAOProxy() throws Exception{//在构造方法中实例化连接，同时实例化dao对象
		this.dbc = new DatabaseConnection();//连接数据库
		this.dao = new EmpDAOImpl(dbc.getConnection());//实例化真实主题类
	}
	
	@Override
	public boolean doCreate(Emp emp) throws Exception {
		boolean flag = false;
		try{
			if(dao.findById(emp.getEmpno()) == null){//如果要插入的雇员编号不存在
				flag = dao.doCreate(emp);//调用真实主题操作累
			}
		}catch(Exception e){
			throw e;
		}finally{
			dbc.close();
		}
		return flag;
	}

	@Override
	public List<Emp> findAll(String keyWord) throws Exception {
		List<Emp> all = null;
		try{
			all = dao.findAll(keyWord);
		}catch(Exception e){
			throw e;
		}finally{
			dbc.close();
		}
		return all;
	}

	@Override
	public Emp findById(int empno) throws Exception {
		Emp emp = null;
		try{
			emp = dao.findById(empno);
		}catch(Exception e){
			throw e;
		}finally{
			dbc.close();
		}
		
		return emp;
	}

}
