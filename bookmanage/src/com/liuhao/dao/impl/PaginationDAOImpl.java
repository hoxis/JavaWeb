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

	/* (non-Javadoc)
	 * @see com.liuhao.dao.PaginationDAO#getAllRowCount(java.lang.String)
	 * 通过统计查询的方式查出满足条件的记录总数
	 */
	@Override
	public int getAllRowCount(String hql) {
		
		int fromIndex = hql.toLowerCase().indexOf("from");
		
		String countHql = hql.substring(fromIndex);
		
		int orderByIndex = countHql.toLowerCase().indexOf("order by");
		if (orderByIndex != -1) {
			countHql = countHql.substring(0, orderByIndex);
		}
		
		//拼接成统计查询语句
		countHql = "select count(*) " + countHql;
		
		Number num =  (Number)this.getSession().createQuery(countHql).uniqueResult();
		
		if(num != null){
			return num.intValue();
		}else{
			return 0;
		}
//		return this.getHibernateTemplate().find(hql).size();
	}

}
