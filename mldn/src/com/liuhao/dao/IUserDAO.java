package com.liuhao.dao;

import com.liuhao.vo.User;

public interface IUserDAO {

	/**
	 * 用户登录验证
	 * @param user 传入Vo对象
	 * @return 根据数据库验证的结果
	 * @throws Exception
	 */
	public boolean findLogin(User user) throws Exception;
	
}
