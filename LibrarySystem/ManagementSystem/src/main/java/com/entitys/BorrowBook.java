package com.entitys;


import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;

@Entity
public class BorrowBook {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int borrowId;

    @ManyToOne
    private Member student;

    @ManyToOne
    private Book book;

    private Date borrowDate;

	public int getBorrowId() {
		return borrowId;
	}

	public void setBorrowId(int borrowId) {
		this.borrowId = borrowId;
	}

	public Member getStudent() {
		return student;
	}

	public void setStudent(Member student) {
		this.student = student;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public Date getBorrowDate() {
		return borrowDate;
	}

	public void setBorrowDate(Date borrowDate) {
		this.borrowDate = borrowDate;
	}

	public BorrowBook(int borrowId, Member student, Book book, Date borrowDate) {
		super();
		this.borrowId = borrowId;
		this.student = student;
		this.book = book;
		this.borrowDate = borrowDate;
	}

	public BorrowBook() {
		super();
		// TODO Auto-generated constructor stub
	}

}
