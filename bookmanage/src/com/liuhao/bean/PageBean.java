package com.liuhao.bean;

import java.util.List;

public class PageBean<E> {
	
	private List<E> list;//当前页包含的记录列表
	private int allRow;//总记录数
	private int totalPage;//总页数
	private int currentPage;//当前页
	private int pageSize;//每页的记录数目
	private boolean isFirstPage;
	private boolean isLastPage;
	private boolean hasPrePage;
	private boolean hasNextPage;
	public List<E> getList() {
		return list;
	}
	public void setList(List<E> list) {
		this.list = list;
	}
	public int getAllRow() {
		return allRow;
	}
	public void setAllRow(int allRow) {
		this.allRow = allRow;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public boolean isFirstPage() {
		return isFirstPage;
	}
	public void setFirstPage(boolean isFirstPage) {
		this.isFirstPage = isFirstPage;
	}
	public boolean isLastPage() {
		return isLastPage;
	}
	public void setLastPage(boolean isLastPage) {
		this.isLastPage = isLastPage;
	}
	public boolean isHasPrePage() {
		return hasPrePage;
	}
	public void setHasPrePage(boolean hasPrePage) {
		this.hasPrePage = hasPrePage;
	}
	public boolean isHasNextPage() {
		return hasNextPage;
	}
	public void setHasNextPage(boolean hasNextPage) {
		this.hasNextPage = hasNextPage;
	}
	
	//初始化分页信息
	public void init(){
		this.isFirstPage = isFirstPage();  
		this.isLastPage = isLastPage();  
		this.hasPrePage = isHasPrePage();  
		this.hasNextPage = isHasNextPage(); 
	}
	
	/**
	 * 计算总页数  静态方法 
	 * @param pageSize 每页的记录数
	 * @param allRow 总的记录数
	 * @return 总页数
	 */
	public static int countTotalPage(final int pageSize, final int allRow){
		int totalPages = allRow % pageSize == 0 ? allRow/pageSize : allRow/pageSize + 1;  
		return totalPages;  
	}
	
	/**
	 * 计算当前页开始的记录位置
	 * @param pageSize
	 * @param currentPage
	 * @return
	 */
	public static int countOffset(final int pageSize, final int currentPage){
		final int offset = pageSize * (currentPage - 1);  
		return offset; 
	}
	
	/**
	 * 计算当前页，若为0或者请求的URL中没有“?page = ”则用1代替 
	 * @param page 传入的参数（可能为空，即0  则返回1） 
	 * @return
	 */
	public static int currentPage(int page){
		final int currentPage = (page == 0 ? 1 : page);  
		return currentPage;  
	}
	
}
