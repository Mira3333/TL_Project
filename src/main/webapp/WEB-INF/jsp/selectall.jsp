<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SelectAll</title>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" /> 
 <style type="text/css">
    .kv{
        width: 100%; 
        height:98vh;
        text-align: center;
        }
</style>
</head>
<body>
		 <div class="kv"> 
		<div class="container h-100">
		<div class="row h-100 justify-content-center align-items-center">
		<table style="border:1px #cccccc solid">
			  <thead style="border: 1px solid #333">
        <tr >
            <th colspan="12"  class="text-danger">All Students Are Here</th>
        </tr>
        <tr style="border: 1px solid #333">
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
<c:forEach var="stu" items="${student}">	
    <tbody >
			<tr >
				<td style=" border: 1px solid #333;">${stu.student_id}</td>
				<td style=" border: 1px solid #333;">${stu.student_name}</td>
				<td style=" border: 1px solid #333;">${stu.student_gender}</td>
				<td style=" border: 1px solid #333;">${stu.account}</td>
				<td style=" border: 1px solid #333;">${stu.password}</td>
				<td style=" border: 1px solid #333;">${stu.birth}</td>
				<td style=" border: 1px solid #333;">${stu.phone}</td>
				<td style=" border: 1px solid #333;">${stu.email}</td>
				<td style=" border: 1px solid #333;">${stu.country}</td>
				<td style=" border: 1px solid #333;">${stu.city}</td>
				<td style=" border: 1px solid #333;">${stu.address}</td>
				<td style=" border: 1px solid #333;">${stu.registration_date}</td>
			</tr>
		</c:forEach>
			  </tbody>
			</table>
			<a href="MainPage" class="link-primary">Return to MainPage</a>
			</div>
			</div>
			</div>
</body>
</html>