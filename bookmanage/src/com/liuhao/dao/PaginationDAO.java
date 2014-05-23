package com.liuhao.dao;

import java.util.List;

public interface PaginationDAO<E> {
	
	/**
	 * @param hql 查询条件
	 * @param offset 开始查询位置
	 * @param length 每页显示几条数据
	 * @return 查询的记录集合 
	 */
	public List<E> queryForPage(final String hql, final int offset, final int length);
	
	/**
	 * @param hql 查询条件
	 * @return 总记录数
	 */
	public int getAllRowCount(String hql);
	
}
