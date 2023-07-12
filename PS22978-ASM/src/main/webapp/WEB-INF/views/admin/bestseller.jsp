<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
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

</head>

<%@ include file="/common/head.jsp"%>
<body>
	<%@ include file="/common/header2.jsp"%>
		<%@ include file="/common/admin_filter.jsp"%>
<!-- Page wrapper  -->
<div class="page-wrapper">
	<!-- Container fluid  -->
	<div class="container-fluid">
		<!-- Sales Cards  -->
		<div class="row my-2">
			<div class="col-md-10 offset-md-1">
				<h3 class="alert alert-info">
					Best Seller List
				</h3>
				<table class="table text-center">
					<thead>
						<tr>
							<th style="font-weight: bolder; font-size: 18px">No.</th>
							<th style="font-weight: bolder; font-size: 18px">Product Image</th>
							<th style="font-weight: bolder; font-size: 18px">Product ID</th>
							<th style="font-weight: bolder; font-size: 18px">Product Name</th>
							<th style="font-weight: bolder; font-size: 18px">Product Price</th>
							<th style="font-weight: bolder; font-size: 18px">Quantity</th>
						</tr>
					</thead>
					<tbody>
						<c:set var="i" value="0"/>
						<c:forEach var="item" items="${topList.content}">
							<tr>
								<td>${i = i + 1 }</td>
								<td>
									<img src="/images/${item.product.image}" alt="" width="30%">
								</td>
								<td>${item.product.id}</td>
								<td>${item.product.name}</td>
								<td>${item.product.price}</td>
								<td>${item.sum }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- End Container fluid  -->


	<!-- footer -->

	<footer class="footer text-center"> &copy; PS11609 -
		NguyenHuyHoang </footer>

	<!-- End footer -->

</div>
</body>
</html>