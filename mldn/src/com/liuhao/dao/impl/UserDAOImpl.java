package com.liuhao.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.liuhao.dao.IUserDAO;
import com.liuhao.vo.User;

public class UserDAOImpl implements IUserDAO {

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	public UserDAOImpl(Connection conn){
		this.conn = conn;
	}
	
	@Override
	public boolean findLogin(User user) throws Exception {

		boolean flag = false;
		try{
			String sql = "select name from user where userid=? and password=?";
			pstmt = this.conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserid());
			pstmt.setString(2, user.getPassword());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				user.setName(rs.getString(1));
				flag = true;
			}
			
		}catch(Exception e){
			throw e;
		}finally{
			if(rs != null){
				rs.close();
			}
			if(pstmt != null){
				pstmt.close();
			}
			if(conn != null){
				conn.close();
			}
		}
		return flag;
	}

}
