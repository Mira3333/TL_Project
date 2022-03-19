<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RequestToView</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container mt-3">
<h5>Select One Account To View Info</h5>
<form action="AccountSelector" method="post">
 <div class="mb-3 mt-3">
<label for="Type Someone's Account"></label>
<input type="text" class="form-control" id="account" placeholder="Enter Account" name="account"><br>
<h4 style="color:red">${errors}</h4>
</div>
<button type="submit"  class="btn btn-danger" >Submit</button>
</form>
</div>
</body>
</html>
