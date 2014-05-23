package com.liuhao.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.liuhao.dao.PaginationDAO;

public class PaginationDAOImpl<E> extends HibernateDaoSupport implements PaginationDAO<E> {

	
	/**
	 * @param hql 查询条件
	 * @param offset 开始查询位置
	 * @param length 每页显示几条数据
	 * @return 查询的记录集合 
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<E> queryForPage(String hql, int offset, int length) {
		
		Session session = this.getSession();
		Query query = session.createQuery(hql);
		
		query.setFirstResult(offset);//设置查询位置
		query.setMaxResults(length);//设置要查询多少条记录
		
		List<E> list = query.list();//返回查询结果集
		
		session.close();
		
		return list;
		
	}

	@Override
	public int getAllRowCount(String hql) {
		return this.getHibernateTemplate().find(hql).size();
	}

}
