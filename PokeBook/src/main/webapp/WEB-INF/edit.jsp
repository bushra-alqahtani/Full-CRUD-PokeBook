<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
  </head>
  <body>
  
  <div class="container m-5">
	<div class="row gx-5">
		<div class="col m-5">
			<h1>Track an Expense </h1>
		</div>
		<div class="col m-5">
			<a href="/books/all" class="btn btn-info">go back</a>
		</div>
	</div>
	
	
	
<form:form action="/books/${book.getId()}/edit" method="post" modelAttribute="book" >
 <input type="hidden" name="_method" value="put">
	   <div class="mb-3">
	    <label  class="form-label">expense</label>
	    <input type="text" class="form-control" name="expense" value="<c:out value="${book.getExpense()}"/>">
	    <form:errors path="expense" class="text-danger"/>
	  </div>
   
   
   
   	   <div class="mb-3">
	    <label  class="form-label">vendor</label>
	    <input type="text" class="form-control" name="vendor" value="<c:out value="${book.getVendor()}"/>">
	    <form:errors path="vendor" class="text-danger"/>
	  </div>
	  
	  
	  
	  <div class="mb-3">
	    <label  class="form-label">amount</label>
	    <input type="number" class="form-control" name="amount" value="<c:out value="${book.getAmount()}"/>">
	    <form:errors path="amount" class="text-danger"/>
	  </div>
	  
	  
	  
	  <div class="mb-3">
	    <label  class="form-label">description</label>
	    <input type="text" class="form-control" name="deiscription" value="<c:out value="${book.getDeiscription()}"/>">
	    <form:errors path="deiscription" class="text-danger"/>
	  </div>
      
       
    	<input type="submit" value="Submit"/>
</form:form>
 </div>
 </body>
 </html>





    
    
  