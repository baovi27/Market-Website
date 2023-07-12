<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Vazena</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">
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



	<!-- Shopping Cart Section Begin -->
	<div class="login-container"
		style="display: flex; align-items: center; max-width: 1000px; background-color: #fff; padding: -19px; margin: 0 auto; border: 1px solid #ccc;; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);">
		<div style="width: 400px" class="">
			<img alt="" src="/images/login1.jpg">
		</div>

		<form method="post" action="/order-detail"
			style="position: relative; right: -100px" class="text-center">
			<h5 class="text-danger">${message}</h5>
			<br>
			<div class="mb-3">
				<label for="fir">Address<span>*</span></label> <input type="text"
					id="fir" name="address">
			</div>
			<div class="mb-3">
				<table class="table">
					<thead>
						<tr>
							<th>Products</th>
							<th>Quanlity</th>
							<th>Total</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${cart.items}">
							<tr>
								<td>${item.name }</td>
								<td>${item.qty }</td>
								<td>$${item.price * item.qty}</td>
							</tr>


						</c:forEach>
					</tbody>




				</table>

			</div>

			<button type="submit" class="btn btn-success">Order</button>
<br>
<br>
		</form>

	</div>
	<!-- Shopping Cart Section End -->
	<br>
	<%@ include file="/common/footer.jsp"%>


</body>
</html>