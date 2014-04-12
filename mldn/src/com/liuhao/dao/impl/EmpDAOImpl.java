package com.liuhao.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.liuhao.dao.IEmpDAO;
import com.liuhao.vo.Emp;

public class EmpDAOImpl implements IEmpDAO {

	private Connection conn = null;//数据库连接对象
	private PreparedStatement pstmt = null;//数据库操作对象
	private ResultSet rs = null;
	
	public EmpDAOImpl(Connection conn){//通过构造方法取得数据库连接
		this.conn = conn;
	}
	
	
	//进行数据增加操作时，首先要实例化PreparedStatement接口，然将Emp对象中的内容依次设置到PreparedStatement操作中
	@Override
	public boolean doCreate(Emp emp) throws Exception {
		boolean flag = false;
		
		String sql = "insert into emp values (?,?,?,?,?)";
		
		pstmt = conn.prepareStatement(sql);//实例化PreparedStatement对象
		pstmt.setInt(1, emp.getEmpno());
		pstmt.setString(2, emp.getEname());
		pstmt.setString(3, emp.getJob());
		pstmt.setDate(4, new java.sql.Date(emp.getHiredate().getTime()));
		pstmt.setFloat(5, emp.getSal());
		
		//如果更新记录数大于0，则代表插入成功
		if(pstmt.executeUpdate() > 0){
			flag = true;
		}
		
		pstmt.close();
		
		return flag;
	}

	
	@Override
	public List<Emp> findAll(String keyWord) throws Exception {
		List<Emp> all = new ArrayList<Emp>();//定义集合，接收全部数据
		
		String sql = "select * from emp where ename like ? or job like ?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, "%" + keyWord + "%");//设置查询关键字
		pstmt.setString(2, "%" + keyWord + "%");
		rs = pstmt.executeQuery();
		Emp emp = null;
		while(rs.next()){
			emp = new Emp();
			
			emp.setEmpno(rs.getInt(1));
			emp.setEname(rs.getString(2));
			emp.setJob(rs.getString(3));
			emp.setHiredate(rs.getDate(4));
			emp.setSal(rs.getFloat(5));
			
			all.add(emp);
		}
		
		rs.close();
		pstmt.close();
		
		return all;
	}

	@Override
	public Emp findById(int empno) throws Exception {
		Emp emp = null;
		String sql = "select * from emp where empno = ?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, empno);
		
		rs = pstmt.executeQuery();
		if(rs.next()){
			emp = new Emp();
			emp.setEmpno(rs.getInt(1));
			emp.setEname(rs.getString(2));
			emp.setJob(rs.getString(3));
			emp.setHiredate(rs.getDate(4));
			emp.setSal(rs.getFloat(5));
		}
		
		rs.close();
		pstmt.close();
		return emp;
	}

}
