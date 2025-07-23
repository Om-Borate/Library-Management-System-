<html>
<head>
<title>Add Books</title>
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
             <li class="nav-item"><a class="nav-link" href="AddMember.jsp">Add Member</a></li>
            <li class="nav-item"><a class="nav-link" href="BorrowBook.jsp">Borrow</a></li>
            <li class="nav-item"><a class="nav-link" href="SeeWhoBorrowedBooks.jsp">ShowBorrowedBooks</a></li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
 <form action="BookServlet" method="post">
    <div class="mb-3">
      <label for="bookId" class="form-label">Book ID</label>
      <input type="text" class="form-control" id="bookId" name="bookId" placeholder="Enter Book ID">
    </div>
    <div class="mb-3">
      <label for="bookName" class="form-label">Title</label>
      <input type="text" class="form-control" id="bookName" name="bookName" placeholder="Enter Book Title">
    </div>
    <div class="mb-3">
      <label for="author" class="form-label">Author</label>
      <input type="text" class="form-control" id="author" name="author" placeholder="Enter Author Name">
    </div>
    <div class="mb-3">
      <label for="publishDate" class="form-label">Publish Date</label>
      <input type="text" class="form-control" id="publishDate" name="publishDate">
    </div>
    <button type="submit" class="btn btn-primary">Add Book</button>
  </form>
</body>
</html>
