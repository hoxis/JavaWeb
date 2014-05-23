package com.liuhao.action.book;

import java.util.List;
import java.util.Map;

import com.liuhao.bean.Book;
import com.liuhao.service.BookService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ListBookAction extends ActionSupport {
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
	
	@SuppressWarnings("unchecked")
	@Override
	public String execute() throws Exception {
		Map<String, List<?>> request = (Map<String, List<?>>)ActionContext.getContext().get("request");
		request.put("booklist", bookService.findAllBooks());
		return SUCCESS;
	}
}
