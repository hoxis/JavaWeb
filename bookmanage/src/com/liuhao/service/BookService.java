package com.liuhao.service;

import java.util.List;

import com.liuhao.bean.Book;
import com.liuhao.bean.PageBean;

public interface BookService {

	public void saveBook(Book book);

	public void removeBook(Book book);

	public Book findBookById(Integer id);

	public List<Book> findAllBooks();

	public void updateBook(Book book);
	
	
	/**
	 * 分页查询  
	 * @param pageSize  每页显示多少记录
	 * @param page 要显示第几页
	 * @return 封装了分页信息的bean
	 */
	public PageBean<Book> queryForPage(int pageSize, int page);

}
