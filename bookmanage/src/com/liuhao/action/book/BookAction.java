package com.liuhao.action.book;

import java.util.List;
import java.util.Map;

import com.liuhao.bean.Book;
import com.liuhao.bean.PageBean;
import com.liuhao.service.BookService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class BookAction extends ActionSupport {

	private Book book;
	private BookService bookService;
	private PageBean<Book> pageBean;
	private List<Book> bookList;
	private int page = 1;

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

	public PageBean<Book> getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean<Book> pageBean) {
		this.pageBean = pageBean;
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

	public String add() throws Exception {
		bookService.saveBook(book);
		return "addsucess";
	}

	@SuppressWarnings("unchecked")
	public String list() throws Exception {
		Map<String, List<?>> request = (Map<String, List<?>>) ActionContext
				.getContext().get("request");
		request.put("booklist", bookService.findAllBooks());
		return "listsuccess";
	}

	public String list4page() throws Exception {
		pageBean = bookService.queryForPage(5, page);
		this.bookList = pageBean.getList();
		return "list4pagesuccess";
	}

	public String pupdate() throws Exception {
		book = bookService.findBookById(book.getBookid());
		if (book != null) {
			return "pupdatesuccess";
		} else {
			this.addFieldError("bookNotExsit", "要修改的书籍不存在！！！");
			return ERROR;
		}
	}

	public String update() throws Exception {
		bookService.updateBook(book);
		return "updatesuccess";
	}

	public String delete() throws Exception {
		bookService.removeBook(book);
		return "deletesuccess";
	}
	
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

}
