<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>index page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
  </head>
 <body>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
	<div class="container mt-5">
	
	<div class="row gx-5">
		<div class="col m-5">
			<h1>Expense Details </h1>
		</div>
		
		<div class="col m-5">
			<a href="/books/all" class="btn btn-info">go back</a>
		</div>
	</div>
	<br>
	<h3>Expense: <c:out value="${book.getExpense()}"/></h3><br>
	<h3>Vendor: <c:out value="${book.getVendor()}"/></h3><br>
	<h3>Amount: <c:out value="${book.getAmount()}"/></h3>
	<h3>Description: <c:out value="${book.getDeiscription()}"/></h3>
		

	</div>
</body>
</html>