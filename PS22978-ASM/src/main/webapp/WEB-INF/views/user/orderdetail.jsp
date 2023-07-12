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
		<div style="width: 400px" class="">
			<img alt="" src="/images/login1.jpg">
		</div>

		<form method="post" style="position: relative; right: -100px"
			class="text-center">

			<img alt="" src="/images/checkout.png"
				style="width: 150px; height: 100px; position: relative; left: 350px; top: -50px">


			<div class="mb-3">
				<label class="form-label">Order ID</label> ${order.id }
			</div>

			<div class="mb-3">
				<label class="form-label">Name</label> ${order.address }
			</div>

			<div class="mb-3">
				<label class="form-label">Email</label> ${order.account.email }
			</div>

			<div class="mb-3">
				<label class="form-label">Date</label> ${order.createDate }
			</div>
		</form>
	</div>
	<section class="checkout-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-10">
					<div class="cart-table">
						<table class="table">
							<thead>
								<tr>
									<th>No.</th>

									<th class="p-name">Product Name</th>
									<th>Price</th>
									<th>Quantity</th>
									<th>Total</th>
								</tr>
							</thead>
							<tbody>
								<c:set var="i" value="0" />
								<c:forEach var="item" items="${items}">
									<input type="hidden" name="id" value="${item.id}">
									<tr>
										<td>${i=i+1}</td>
										<%-- <td class="cart-pic first-row">
										<img src="/forUser/img/products/${item.product.image}" alt="" width=50%></td> --%>
										<td class="cart-title first-row">
											<h5>${item.product.name }</h5>
										</td>
										<td class="p-price first-row">$${item.price }</td>
										<td class="p-price first-row">${item.quantity }</td>
										<td class="total-price first-row">$${item.price*item.quantity}</td>

									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="row">
						<div class="col-lg-4">
							<div class="cart-buttons">
								<a href="/product/page" class="primary-btn continue-shop">Continue
									shopping</a>
							</div>
						</div>
						<c:set var="total" value="${0}" />
						<c:forEach var="item" items="${items }">
							<c:set var="total" value="${total+(item.price*item.quantity) }" />
						</c:forEach>
						<div class="col-lg-4 offset-lg-4">
							<div class="proceed-checkout">
								<ul>
									<li class="cart-total">Total: &nbsp &nbsp $${total } <span></span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Shopping Cart Section End -->
</body>
</html>