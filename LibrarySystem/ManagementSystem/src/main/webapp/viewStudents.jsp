<%@ page import="java.util.List" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="com.entitys.*" %>
<%@ page import="com.Helper.FactoryProvider" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>View Member</title>
  <link href="CollegeHome.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet">
  <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="ShowBooks.css">
</head>
<body>
  <header id="nav-bar">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">
        <a class="navbar-brand" href="#"><img src="Home_Book_Logo.png" width="100px" alt="Book Image"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
          aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fa-solid fa-bars-progress">-</i>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav ms-auto">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="Home.jsp">Home</a>
            </li>
           <li class="nav-item"><a class="nav-link" href="showBooks.jsp">Books</a></li>
            <li class="nav-item"><a class="nav-link" href="BorrowBook.jsp">Borrow</a></li>
            <li class="nav-item"><a class="nav-link" href="index.jsp">Add Books</a></li>
            <li class="nav-item"><a class="nav-link" href="AddMember.jsp">Add Member</a></li>
            <li class="nav-item"><a class="nav-link" href="SeeWhoBorrowedBooks.jsp">ShowBorrowedBooks</a></li>
          </ul>
        </div>
      </div>
    </nav>
  </header>

<%
    Session session1 = FactoryProvider.getFactory().openSession();
    List<Member> member = session1.createQuery("from Member").list();
%>

<table border="1">
    <tr><th>ID</th><th>Name</th><th>Department</th><th>Email</th><th>Address</th><th>Contact</th></tr>
    <% for(Member s : member) { %>
        <tr>
            <td><%= s.getId() %></td>
            <td><%= s.getName() %></td>
            <td><%= s.getDepartment() %></td>
            <td><%= s.getEmail() %></td>
            <td><%= s.getAddress() %></td>
            <td><%= s.getContact() %></td>
            
        </tr>
    <% } %>
    <% session1.close(); %>
</table>
</body>
</html>