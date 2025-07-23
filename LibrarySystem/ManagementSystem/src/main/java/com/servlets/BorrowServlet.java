package com.servlets;

import java.io.IOException;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Helper.FactoryProvider;
import com.entitys.Book;
import com.entitys.BorrowBook;
import com.entitys.Member;


public class BorrowServlet extends jakarta.servlet.http.HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws jakarta.servlet.ServletException, IOException 
	{
		String studentID=request.getParameter("studentID");
		String bookID=request.getParameter("bookID");
		
        Session session = FactoryProvider.getFactory().openSession();
        Transaction tx = session.beginTransaction();

        Member student = session.get(Member.class, studentID);
        Book book = session.get(Book.class, bookID);
        
        BorrowBook borrow = new BorrowBook(0, student,book,new Date());
     
        session.persist(borrow);
        tx.commit();
        session.close();

        response.sendRedirect("BorrowBook.jsp");


	}

}
