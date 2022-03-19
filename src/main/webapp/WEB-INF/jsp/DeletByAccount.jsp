<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<title>RequestToDelete</title>
</head>
<body>
<div class="container mt-3">
<h5>Select One Account To Delete</h5>
<form action="AccountDelector" method="post">
 <div class="mb-3 mt-3">
<input type="text"  class="form-control" id="daccount" placeholder="Enter Account" name="daccount"><br>
</div>
<button type="submit"  class="btn btn-danger" >Submit</button>
<h3 style="color:red">${errors}</h3>
</form>
</div>
</body>
</html>