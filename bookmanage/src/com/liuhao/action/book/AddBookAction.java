package com.liuhao.action.book;

import com.liuhao.bean.Book;
import com.liuhao.service.BookService;
import com.opensymphony.xwork2.ActionSupport;

public class AddBookAction extends ActionSupport {
	private Book book;
	private BookService bookService;

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public BookService getBookService() {
		return bookService;
	}

	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}

	@Override
	public String execute() throws Exception {
		bookService.saveBook(book);
		return SUCCESS;
	}
	
}
