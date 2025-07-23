package com.servlets;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Helper.FactoryProvider;
import com.entitys.Member;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			String memberId=request.getParameter("MemberId");
			String memberName = request.getParameter("MemberName");
			String department = request.getParameter("department");
			String address = request.getParameter("address");
			String email = request.getParameter("email");
			String contact = request.getParameter("contact");
			
			Member member = new Member(memberId,memberName,department,address,email,contact);
			
			Session s= FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			
			s.persist(member);
			
			tx.commit();
			
			response.setContentType("text/html");
			
			s.close();
			
			 response.sendRedirect("viewStudents.jsp");

		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
