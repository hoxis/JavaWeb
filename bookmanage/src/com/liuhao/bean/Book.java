package com.liuhao.bean;

import java.util.Date;

public class Book {

	private Integer bookid;
	private String bookname;
	private String author;
	private Double price;
	private Date presstime;

	public Integer getBookid() {
		return bookid;
	}

	public void setBookid(Integer bookid) {
		this.bookid = bookid;
	}

	public String getBookname() {
		return bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Date getPresstime() {
		return presstime;
	}

	public void setPresstime(Date presstime) {
		this.presstime = presstime;
	}

}
