<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>LoginForm</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<div class="container mt-3">
		<h3>Welcome !! Please Login</h3>
			<form action="checklogin" method="Post">
			<div class="mb-3 mt-3">
						<label for="Account">Account</label>
						<input type="text"  class="form-control" id="Account" placeholder="Enter Account" name="account" />
						<h3 style="color: red">${errors.name}</h3>
						</div>
					<div class="mb-3">
						<label for="pwd">Password</label>
						<input type="password" class="form-control" id="pwd" placeholder="Enter Password" name="password" />
						<h3 style="color: red">${errors.pwd}</h3>
					</div>
						<button type="submit"  class="btn btn-primary" value="Login">Login</button>
						<h3 style="color: red">${errors.msg}</h3>
						<h6><a href="signup" class="link-primary">Sign up</a></h6>
			</form>
		</div>
</body>
</html>