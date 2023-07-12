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
	<br>
	<!-- Register Section Begin -->

	<div class="login-container"
		style="display: flex; align-items: center; max-width: 1290px; background-color: #fff; padding: -19px; margin: 0 auto; border: 1px solid #ccc;; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);">
		<div style="width: 100%" class="">
			<img alt="" src="/images/login1.jpg">
		</div>

		<form:form name="qryform" id="qryform" action="/admin/account"
					class="px-3" modelAttribute="item">
					<div class="card">
						<div class="card-header">
							<h3 class="alert alert-info">
								Account Control <a href="/admin/account"
									class="btn btn-success float-right">Account List</a>
							</h3>
							<div class="bg-success text-light px-3">${message }</div>
						</div>
						<div class="card-body">
							<div class="form-group row">
								<div class="col-6">
									<div class="form-group">
										<form:input type="text" class="form-control" id="username"
											path="username" aria-describedby="usHid"
											placeholder="Username" />
										<small id="usHid" class="form-text text-muted">Username
											ID is invalid</small>
									</div>
									<div class="form-group">
										<form:input type="password" class="form-control" id="password"
											path="password" aria-describedby="passHid"
											placeholder="Password" />
										<small id="passHid" class="form-text text-muted">Password
											is invalid</small>
									</div>
									<div class="form-group">
										<form:input type="file" class="form-control" id="photo"
											path="photo" aria-describedby="photoHid" placeholder="photo" />
										<small id="photoHid" class="form-text text-muted">photo
											is invalid</small>
									</div>
									<div class="form-group">
										Activity:
										<form:radiobuttons class="mx-2" path="activated"
											items="${activateds }" delimiter="" />
									</div>
								</div>
								<div class="col-6">
									<div class="form-group">
										<form:input type="text" class="form-control" id="fullname"
											path="fullname" aria-describedby="fullnameHid"
											placeholder="fullname" />
										<small id="fullnameHid" class="form-text text-muted">Fullname
											is invalid</small>
									</div>
									<div class="form-group">
										<form:input type="email" class="form-control" id="email"
											path="email" aria-describedby="emailHid" placeholder="email" />
										<small id="emailHid" class="form-text text-muted">Email
											is invalid</small>
									</div>
									<div class="form-group">
										Role:
										<form:radiobuttons class="mx-2" path="admin"
											items="${admins }" delimiter="" />
									</div>
								</div>
							</div>
						</div>
						<div class="card-footer text-muted">
							<button type="submit" class="btn btn-primary "
								formaction="/admin/account/create">Insert</button>
							<button type="submit" class="btn btn-warning"
								formaction="/admin/account/update">Update</button>
							<button type="submit" class="btn btn-danger"
								formaction="/admin/account/delete/${item.username}">Delete</button>
							<button type="submit" class="btn btn-success"
								formaction="/admin/accountControl">Reset</button>
						</div>
					</div>
				</form:form>

	</div>
	<%@ include file="/common/footer.jsp"%>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>