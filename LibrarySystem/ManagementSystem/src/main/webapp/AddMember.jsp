<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Member in Library</title>
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
            <li class="nav-item"><a class="nav-link" href="viewStudents.jsp">Members</a></li>
             <li class="nav-item"><a class="nav-link" href="index.jsp">Add Books</a></li>
            <li class="nav-item"><a class="nav-link" href="BorrowBook.jsp">Borrow</a></li>
            <li class="nav-item"><a class="nav-link" href="SeeWhoBorrowedBooks.jsp">ShowBorrowedBooks</a></li>
          </ul>
        </div>
      </div>
    </nav>
  </header>

   <!-----------------------------------------------Add Books----------------------------------------------------------------->
   <form action="MemberServlet" method="post">
    <div class="mb-3">
      <label for="MemberId" class="form-label">Member ID</label>
      <input type="text" class="form-control" id="MemberId" name="MemberId" placeholder="Enter Member ID">
    </div>
    <div class="mb-3">
      <label for="MemberName" class="form-label">Member Name</label>
      <input type="text" class="form-control" id="MemberName" name="MemberName" placeholder="Enter Member Name">
    </div>
    <div class="mb-3">
      <label for="department" class="form-label">Department</label>
      <input type="text" class="form-control" id="department" name="department" placeholder="Enter Member Department">
    </div>
    <div class="mb-3">
      <label for="address" class="form-label">Address</label>
      <input type="text" class="form-control" id="address" name="address" placeholder="Enter Member Addess">
    </div>
     <div class="mb-3">
      <label for="email" class="form-label">Email</label>
      <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email">
    </div>
     <div class="mb-3">
      <label for="contacts" class="form-label">Contact</label>
      <input type="number" class="form-control" id="contacts" name="contact" placeholder="Enter Pho Number">
    </div>
    <button onclick="validateForm()" type="submit" class="btn btn-primary">Submit</button>
  </form>
  <script>
    function validateForm() {
      const MemberID = document.getElementById('MemberId').value;
      const MemberName = document.getElementById('MemberName').value;
      const department = document.getElementById('department').value;
      const address = document.getElementById('address').value;
      const email = document.getElementById('email').value;
      const contact = document.getElementById('contacts').value;

      if (!MemberID || !MemberName || !department || !address ||!email ||!contact) {
        alert('Please fill in all fields.');
        return false;
      }
      if (isNaN(MemberID)) {
        alert('Member ID must be numeric.');
        return false;
      }
      else{
    	  alert("Member Added Successfully!..")
      }
    }
</script>
</body>
</html>