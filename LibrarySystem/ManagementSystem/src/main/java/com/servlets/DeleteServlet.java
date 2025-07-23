package com.servlets;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Helper.FactoryProvider;
import com.entitys.BorrowBook;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DeleteServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			int borrowId = Integer.parseInt(request.getParameter("borrowId").trim());
			Session s = FactoryProvider.getFactory().openSession();
			 
			BorrowBook b = (BorrowBook)s.get(BorrowBook.class, borrowId);
			 Transaction tx = s.beginTransaction();
			 
			 s.remove(b);
				tx.commit();
				
				response.sendRedirect("SeeWhoBorrowedBooks.jsp");
				
				s.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
