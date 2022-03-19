<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MainPage</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" />
<style type="text/css">
.kv {
	width: 100%;
	height: 98vh;
	text-align: center;
}
</style>
</head>
<body>
	<div class="kv">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
			<div class="col">
				Welcome <br /> Dear ${name} <br /> What would you like to do today?<br />
				<a href="selectall">Select All Student</a><br /> <a
					href="selectbyaccount">Select One Account To View Info</a><br /> <a
					href="deletesomeone">Delete Someone You Hate</a><br /> <a
					href="updateyourself">Update Yourself</a><br /> 
					<a href="Logout">Nothing
					to do but Logout</a><br />
					<h3 style="color:red">${deleteSuccess }</h3>
			</div>
			</div>
		</div>
	</div>
</body>
</html>