package com.liuhao.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.liuhao.bean.Book;
import com.liuhao.dao.BookDAO;

public class BookDAOImpl extends HibernateDaoSupport implements BookDAO {

	@Override
	public void saveBook(Book book) {
		this.getHibernateTemplate().save(book);
	}

	@Override
	public void removeBook(Book book) {
		this.getHibernateTemplate().delete(book);
	}

	@Override
	public Book findBookById(Integer id) {
		return this.getHibernateTemplate().get(Book.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Book> findAllBooks() {
		String hql = "from Book book order by book.bookid";
		
		return this.getHibernateTemplate().find(hql);
	}

	@Override
	public void updateBook(Book book) {
		this.getHibernateTemplate().update(book);
	}

}
