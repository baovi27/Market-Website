<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

input[type="text"], input[type="name"], input[type="number"], input[type="file"],
	input[type="date"] {
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

	<h3 class="alert alert-info">
		Product Control <a href="admin/page"
			class="btn btn-success float-right">Product List</a>
	</h3>
	<div class="bg-success text-light px-3">${message }</div>
	<div class="login-container"
		style="display: flex; align-items: center; max-width: 1250px; background-color: #fff; padding: -19px; margin: 0 auto; border: 1px solid #ccc;; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);" />
	<div style="width: 850px" class="text-center">
		<img alt="" src="/images/login1.jpg">
	</div>

	<form:form name="qryform" id="qryform" action="/admin/product"
		class="bg-light" modelAttribute="item">
		<br>
		<div class="col-6">
			<div class="form-group">
				<form:input type="text" class="form-control" id="id" path="id"
					disabled="true" aria-describedby="usHid" placeholder="Product ID" />

			</div>
			<div class="form-group">
				<form:input type="name" class="form-control" id="name" path="name"
					aria-describedby="nameHid" placeholder="Product Name" />

			</div>

			<div class="form-group">
				<form:input type="number" class="form-control" id="price"
					path="price" aria-describedby="priceHid" placeholder="Price" />

			</div>
			<div class="form-group">
				<form:input type="file" class="form-control" id="image" path="image"
					aria-describedby="imageHid" placeholder="image" />

			</div>
		</div>
		<div class="col-6">
			<div class="form-group">
				<form:input type="date" class="form-control" id="createDate"
					path="createDate" aria-describedby="createDateHid"
					placeholder="createDate" />
			</div>

			<div class="form-group ">
				Category:
				<form:input path="typed" cssClass="form-control" />
			</div>

			<div class="form-group ">
				<form:radiobuttons path="available" items="${availables}"
					delimiter="" />
			</div>
		</div>
		<div class="text-muted">
			<button type="submit" class="btn btn-primary "
				formaction="/admin/product/create">Insert</button>
			<button type="submit" class="btn btn-warning"
				formaction="/admin/product/update">Update</button>
			<button type="submit" class="btn btn-danger"
				formaction="/admin/product/delete/${item.id}">Delete</button>
			<button type="submit" class="btn btn-success"
				formaction="/admin/productControl">Reset</button>
		</div>
		<br>
		</div>
		<br>
	</form:form>
	</div>

	<%@ include file="/common/footer.jsp"%>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>