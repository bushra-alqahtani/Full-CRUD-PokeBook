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
    <h1>BokeBook</h1>
    <br>
    
    <table class="table table-success table-striped">
  <thead>
    <tr>
      <th scope="col">expense</th>
      <th scope="col">vendor</th>
      <th scope="col">amount</th>
      <th scope="col">show</th>
      <th scope="col">action</th>
      <th scope="col">delete</th>
        
    </tr>
  </thead>
  
  <tbody>
  <c:forEach  items="${allbooks}" var="i">
	    <tr>
		      <td><c:out value = "${i.getExpense()}"/></td>
		      <td><c:out value = "${i.getVendor()}"/></td>
		      <td><c:out value = "${i.getAmount()}"/></td>
		      <td><a href="/books/${i.id}">show</a></td>
		      <td><a href="/books/${i.id}/edit">edit</a></td>
		      <td><a href="/books/${i.id}/delete" class="btn btn-danger">delete</a></td>
	    </tr>
    </c:forEach>
    

  </tbody>
</table>
     </div>
     
     
     <div class="container m-5">

<h1>Track an Expense</h1>
<form:form action="/books/new" method="post" modelAttribute="book" >
 
	   <div class="mb-3">
	    <label  class="form-label">expense</label>
	    <input type="text" class="form-control" name="expense">
	    <form:errors path="expense" class="text-danger"/>
	  </div>
   
   	   <div class="mb-3">
	    <label  class="form-label">vendor</label>
	    <input type="text" class="form-control" name="vendor">
	    <form:errors path="vendor" class="text-danger"/>
	  </div>
	  <div class="mb-3">
	    <label  class="form-label">amount</label>
	    <input type="number" class="form-control" name="amount">
	    <form:errors path="amount" class="text-danger"/>
	  </div>
	  <div class="mb-3">
	    <label  class="form-label">description</label>
	    <input type="text" class="form-control" name="deiscription">
	    <form:errors path="deiscription" class="text-danger"/>
	  </div>
      
       
    	<input type="submit" value="Submit"/>
</form:form>
 </div>
  
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
  </body>
</html>
    