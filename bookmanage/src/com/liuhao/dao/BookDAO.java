package com.liuhao.dao;

import java.util.List;

import com.liuhao.bean.Book;

public interface BookDAO {

	public void saveBook(Book book);
	
	public void removeBook(Book book);
	
	public Book findBookById(Integer id);
	
	public List<Book> findAllBooks();
	
	public void updateBook(Book book);
	
}
