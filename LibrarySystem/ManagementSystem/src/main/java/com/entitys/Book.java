package com.entitys;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Book {
	
	@Id
	private String id;
	private String BookName;
	private String Author;
	private String Date;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getBookName() {
		return BookName;
	}
	public void setBookName(String bookName) {
		BookName = bookName;
	}
	public String getAuthor() {
		return Author;
	}
	public void setAuthor(String author) {
		Author = author;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	public Book(String id, String bookName, String author, String date) {
		super();
		this.id = id;
		BookName = bookName;
		Author = author;
		Date = date;
	}
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
