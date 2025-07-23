package com.servlets;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Helper.FactoryProvider;
import com.entitys.Book;


/**
 * Servlet implementation class BookServlet
 */

public class BookServlet extends jakarta.servlet.http.HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse
			response) throws jakarta.servlet.ServletException, IOException {
		
		
		try {
			 String id = request.getParameter("bookId");
			 String bookName = request.getParameter("bookName");
			 String author = request.getParameter("author");
			 String publishDate = request.getParameter("publishDate");
			 
			 Book book = new Book(id,bookName,author,publishDate);
			 
			 Session s = FactoryProvider.getFactory().openSession();
			 
			 Transaction tx = s.beginTransaction();
			 
			 s.persist(book);
				tx.commit();
				
				response.setContentType("text/html");
				
				s.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
