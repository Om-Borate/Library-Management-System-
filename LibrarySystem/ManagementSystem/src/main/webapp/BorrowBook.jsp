<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Add Borrow Book</title>

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
            <li class="nav-item"><a class="nav-link" href="viewStudents.jsp">Members</a></li>
            <li class="nav-item"><a class="nav-link" href="index.jsp">Add Books</a></li>
            <li class="nav-item"><a class="nav-link" href="AddMember.jsp">Add Member</a></li>
            <li class="nav-item"><a class="nav-link" href="SeeWhoBorrowedBooks.jsp">ShowBorrowedBooks</a></li>
          </ul>
        </div>
      </div>
    </nav>
  </header>


  <!-----------------------------------------------Add Members how Want to Borrow Books----------------------------------------------------------------->
   <form action="BorrowServlet" method="post">
    <div class="mb-3">
      <label for="borrowDate" class="form-label">Borrow Date</label>
      <input type="date" class="form-control" id="borrowDate" name="borrowDate">
    </div>
    <div class="mb-3">
      <label for="bookID" class="form-label">Book ID</label>
      <input type="text" class="form-control" id="bookID" placeholder="Enter Book ID" name="bookID">
    </div>
    <div class="mb-3">
      <label for="studentID" class="form-label">Student ID</label>
      <input type="text" class="form-control" id="studentID" placeholder="Enter Student ID" name="studentID">
    </div>
    <button onclick="validateForm()"type="submit" class="btn btn-primary">Submit</button>
  </form>


  <script>
    function validateForm() {
      const borrowDate = document.getElementById('borrowDate').value;
      const bookID = document.getElementById('bookID').value;
      const studentID = document.getElementById('studentID').value;

      if (!borrowDate || !bookID || !studentID) {
        alert('Please fill in all fields.');
        return false;
      }
      if (isNaN(bookID) || isNaN(studentID)) {
        alert('Book ID and Student ID must be numeric.');
        return false;
      }
      else{
    	  alert('Book '+bookID+' has been Taken by '+studentID);
      }

      return true;
    }

  </script>
</body>
</html>