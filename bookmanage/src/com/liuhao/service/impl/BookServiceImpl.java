package com.liuhao.service.impl;

import java.util.List;

import com.liuhao.bean.Book;
import com.liuhao.bean.PageBean;
import com.liuhao.dao.BookDAO;
import com.liuhao.dao.PaginationDAO;
import com.liuhao.service.BookService;

public class BookServiceImpl implements BookService {

	private BookDAO bookDao;
	private PaginationDAO<Book> paginationDao;
	
	public PaginationDAO<Book> getPaginationDao() {
		return paginationDao;
	}

	public void setPaginationDao(PaginationDAO<Book> paginationDao) {
		this.paginationDao = paginationDao;
	}

	public BookDAO getBookDao() {
		return bookDao;
	}

	public void setBookDao(BookDAO bookDao) {
		this.bookDao = bookDao;
	}

	@Override
	public void saveBook(Book book) {
		bookDao.saveBook(book);
	}

	@Override
	public void removeBook(Book book) {
		bookDao.removeBook(book);
	}

	@Override
	public Book findBookById(Integer id) {
		return bookDao.findBookById(id);
	}

	@Override
	public List<Book> findAllBooks() {
		return bookDao.findAllBooks();
	}

	@Override
	public void updateBook(Book book) {
		bookDao.updateBook(book);
	}

	/**
	 * 分页查询  
	 * @param pageSize  每页显示多少记录
	 * @param page 要显示第几页
	 * @return 封装了分页信息的bean
	 */
	@Override
	public PageBean<Book> queryForPage(int pageSize, int page) {
		final String hql = "from Book book order by book.bookid";//查询语句
		int allRow = paginationDao.getAllRowCount(hql);//总记录数目
		int totalPage = PageBean.countTotalPage(pageSize, allRow);//总页数
		final int offset = PageBean.countOffset(pageSize, page);//当前页的开始位置
		final int length = pageSize;//每页要显示的记录数
		final int currentPage = page > totalPage ? totalPage : PageBean.currentPage(page);
		List<Book> list = paginationDao.queryForPage(hql, offset, length);
		
		//把分页信息保存到Bean中
		PageBean<Book> pageBean = new PageBean<Book>();
		pageBean.setPageSize(pageSize);
		pageBean.setCurrentPage(currentPage);
		pageBean.setAllRow(allRow);
		pageBean.setTotalPage(totalPage);
		pageBean.setList(list);
		pageBean.init();
		
		return pageBean;
	}

}
