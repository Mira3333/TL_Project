<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Sign Up Now</title>
<style>
.container {
	width: 500px;
	height: 500px;
	display: flex;
	justify-content: center;
	align-items: center;
	border: 2px solid #000000;
}

h3 {
	margin-top: 20px;
	display: flex;
	justify-content: center;
	align-items: center;
}

h5 {
	margin-top: 20px;
	display: flex;
	justify-content: center;
	align-items: center;
	color: red;
}
</style>
</head>
<body>
	<h3>Sign Up form</h3>
	<h5>${errors}</h5>
	<div class="container">
		<form:form action="addStudent" method="Post" modelAttribute="Student">
			<table>
				<tr>
					<td><form:label path="student_name">Name</form:label></td>
					<td><form:input path="student_name" /></td>
				</tr>
				<tr>
					<td><form:label path="student_gender">Gender</form:label></td>
					<td><form:input path="student_gender" /></td>
				</tr>
				<tr>
					<td><form:label path="account">Account</form:label></td>
					<td><form:input path="account" /></td>
				</tr>
				<tr>
					<td><form:label path="password">Password</form:label></td>
					<td><form:input path="password" /></td>
				</tr>
				<tr>
					<td><form:label path="birth">Birth</form:label></td>
					<td><form:input path="birth" /></td>
				</tr>
				<tr>
					<td><form:label path="phone">Phone</form:label></td>
					<td><form:input path="phone" /></td>
				</tr>
				<tr>
					<td><form:label path="email">Email</form:label></td>
					<td><form:input path="email" /></td>
				</tr>
				<tr>
					<td><form:label path="country">Country</form:label></td>
					<td><form:input path="country" /></td>
				</tr>
				<tr>
					<td><form:label path="city">City</form:label></td>
					<td><form:input path="city" /></td>
				</tr>
				<tr>
					<td><form:label path="address">Address</form:label></td>
					<td><form:input path="address" /></td>
				</tr>
				<tr>
					<td><form:label path="registration_date">Registration_date</form:label></td>
					<td><form:input path="registration_date" /></td>
				</tr>
				<tr>
					<td><form:button class="btn btn-primary" value="send">Submit</form:button></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>