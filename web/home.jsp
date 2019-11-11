<%-- 
    Document   : home
    Created on : Sep 22, 2019, 12:45:58 PM
    Author     : WIN 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Home Page</title>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style type="text/css">
		body {
			color: #566787;
			background: #f5f5f5;
			font-family: 'Varela Round', sans-serif;
			font-size: 13px;
		}

		.table-wrapper {
			background: #fff;
			padding: 20px 25px;
			margin: 30px 0;
			border-radius: 3px;
			box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
		}

		.table-title {
			padding-bottom: 15px;
			background: #435d7d;
			color: #fff;
			padding: 16px 30px;
			margin: -20px -25px 10px;
			border-radius: 3px 3px 0 0;
		}

		.table-title h2 {
			margin: 5px 0 0;
			font-size: 24px;
		}

		.table-title .btn-group {
			float: right;
		}

		.table-title .btn {
			color: #fff;
			float: right;
			font-size: 13px;
			border: none;
			min-width: 50px;
			border-radius: 2px;
			border: none;
			outline: none !important;
			margin-left: 10px;
		}

		.table-title .btn i {
			float: left;
			font-size: 21px;
			margin-right: 5px;
		}

		.table-title .btn span {
			float: left;
			margin-top: 2px;
		}

		table.table tr th,
		table.table tr td {
			border-color: #e9e9e9;
			padding: 12px 15px;
			vertical-align: middle;
		}

		table.table tr th:first-child {
			width: 60px;
		}

		table.table tr th:last-child {
			width: 100px;
		}

		table.table-striped tbody tr:nth-of-type(odd) {
			background-color: #fcfcfc;
		}

		table.table-striped.table-hover tbody tr:hover {
			background: #f5f5f5;
		}

		table.table th i {
			font-size: 13px;
			margin: 0 5px;
			cursor: pointer;
		}

		table.table td:last-child i {
			opacity: 0.9;
			font-size: 22px;
			margin: 0 5px;
		}

		table.table td a {
			font-weight: bold;
			color: #566787;
			display: inline-block;
			text-decoration: none;
			outline: none !important;
		}

		table.table td a:hover {
			color: #2196F3;
		}

		table.table td a.edit {
			color: #FFC107;
		}

		table.table td a.delete {
			color: #F44336;
		}

		table.table td i {
			font-size: 19px;
		}

		table.table .avatar {
			border-radius: 50%;
			vertical-align: middle;
			margin-right: 10px;
		}
	</style>
</head>

<body>
	<div class="container">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2>
							<p>Modul RSBK - Kelompok 27</p>
							<h5>Selamat Datang, <%=session.getAttribute("userName")%></h5>
						</h2>
					</div>
					<div class="col-sm-6">
						<a href="./login.jsp" class="btn btn-success"><i class="material-icons">exit_to_app</i>
							<span>Logout</span></a>
					</div>
				</div>
			</div>
		</div>

		<div class="table-wrapper">
			<form action="./StudentServlet" method="POST">
				<div class="modal-body">
					<div class="form-group">
						<label>Student ID</label>
						<input type="text" name="studentId" value="${student.studentId}" class="form-control">
					</div>
					<div class="form-group">
						<label>First Name</label>
						<input type="text" name="firstname" value="${student.firstName}" class="form-control">
					</div>
					<div class="form-group">
						<label>Last Name</label>
						<input type="text" name="lastname" value="${student.lastName}" class="form-control">
					</div>
					<div class="form-group">
						<label>Address</label>
						<input type="text" name="address" value="${student.address}" class="form-control">
					</div>
				</div>
				<div class="modal-footer">
					<input type="submit" class="btn btn-info" name="action" value="Add">
					<input type="submit" class="btn btn-default" name="action" value="Edit">
					<input type="submit" class="btn btn-danger" name="action" value="Delete">
					<input type="submit" class="btn btn-warning" name="action" value="Search">
				</div>
			</form>
		</div>

		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2>Data Mahasiswa</h2>
					</div>
				</div>
			</div>

			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th style="width:150px">Student ID</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Address</th>
					</tr>
				</thead>
				<tbody>
					<s:forEach items="${allStudents}" var="stud">
						<tr>
							<td>${stud.studentId}</td>
							<td>${stud.firstName}</td>
							<td>${stud.lastName}</td>
							<td>${stud.address}</td>
						</tr>
					</s:forEach>
				</tbody>
			</table>
		</div>
	</div>

</body>

</html>