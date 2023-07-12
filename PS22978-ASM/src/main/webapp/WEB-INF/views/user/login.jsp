<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Form</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<style>
label {
	display: block;
	font-weight: bold;
}

input[type="text"], input[type="password"] {
	width: 400px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type="submit"] {
	background-color: #4CAF50;
	color: #fff;
	border-radius: 4px;
	cursor: pointer;
	width: 200px;
}

input[type="submit"]:hover {
	background-color: #45a049;
}
</style>
</head>
<%@ include file="/common/head.jsp"%>
<body>
	<%@ include file="/common/header2.jsp"%>
	<div class="login-container"
		style="display: flex; align-items: center; max-width: 1000px; background-color: #fff; padding: -19px; margin: 0 auto; border: 1px solid #ccc;; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);">
		<div style="width:400px" class="">
			<img alt="" src="/images/login1.jpg">
		</div>

		<form method="post" action="login" style="position: relative; right:-100px" class="text-center" >
			<h5 class="text-danger">${message}</h5>
			<div class="mb-3">
				<label class="form-label">Username</label> <input type="text"
					class="form-control" id="username" name="username"
					placeholder="Enter your username" required>
			</div>
			<div class="mb-3">
				<label class="form-label">Password</label> <input type="password"
					class="form-control" id="password" name="password"
					placeholder="Enter your password" required>
			</div>

			<button type="submit" class="btn btn-success">Login</button>

		</form>

	</div>
	<br>
	<%@ include file="/common/footer.jsp"%>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>