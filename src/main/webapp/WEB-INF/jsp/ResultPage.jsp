<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ViewInfo</title>
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
			<div class="row h-100 justify-content-center align-items-center">
				<table style="border: 1px #cccccc solid">
					<thead style="border: 1px solid #333">
						<tr>
							<th colspan="12" style="border: 1px solid #333" class="text-danger">Below
								is someone you interested</th>
						</tr>
						<tr>
							<th>id</th>
							<th>name</th>
							<th>gender</th>
							<th>account</th>
							<th>password</th>
							<th>birth</th>
							<th>phone</th>
							<th>email</th>
							<th>country</th>
							<th>city</th>
							<th>address</th>
							<th>registration_date</th>
						</tr>
					</thead>
					<tbody style="border: 1px solid #333">
						<tr>
							<td>${student.student_id}</td>
							<td>${student.student_name}</td>
							<td>${student.student_gender}</td>
							<td>${student.account}</td>
							<td>${student.password}</td>
							<td>${student.birth}</td>
							<td>${student.phone}</td>
							<td>${student.email}</td>
							<td>${student.country}</td>
							<td>${student.city}</td>
							<td>${student.address}</td>
							<td>${student.registration_date}</td>
						</tr>
						<tr>
							<td colspan="12" style="border: 1px solid #333"><a
								href="MainPage" class="link-primary">Return to MainPage</a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>