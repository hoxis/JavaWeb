package com.liuhao.action.book;

import java.util.List;

import com.liuhao.bean.Book;
import com.liuhao.bean.PageBean;
import com.liuhao.service.BookService;
import com.opensymphony.xwork2.ActionSupport;

public class ListBookForPageAction extends ActionSupport {

	private PageBean<Book> pageBean;
	private BookService bookService;
	private List<Book> bookList;
	private int page = 1;

	public PageBean<Book> getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean<Book> pageBean) {
		this.pageBean = pageBean;
	}

	public BookService getBookService() {
		return bookService;
	}

	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}

	public List<Book> getBookList() {
		return bookList;
	}

	public void setBookList(List<Book> bookList) {
		this.bookList = bookList;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	@Override
	public String execute() throws Exception {
		pageBean = bookService.queryForPage(5, page);
		this.bookList = pageBean.getList();
		return SUCCESS;
	}
}
