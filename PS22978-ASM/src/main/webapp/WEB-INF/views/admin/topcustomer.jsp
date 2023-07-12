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
<div class="page-wrapper py-2">
	<!-- Container fluid  -->
	<div class="container-fluid">
		<!-- Sales Cards  -->
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<h3 class="alert alert-info">
					Top Customer
				</h3>
				<table class="table text-center">
					<thead>
						<tr>
							<th style="font-weight: bolder; font-size: 18px">No.</th>
							<th style="font-weight: bolder; font-size: 18px" class ="p-0 m-0"  width="10%">Customer Image</th>
							<th style="font-weight: bolder; font-size: 18px">Customer ID</th>
							<th style="font-weight: bolder; font-size: 18px">Customer Name</th>
							<th style="font-weight: bolder; font-size: 18px">Customer Email</th>
						</tr>
					</thead>
					<tbody>
						<c:set var="i" value="0"/>
						<c:forEach var="item" items="${topCustomer}">
							<tr>
								<td>${i = i + 1 }</td>
								<td  class ="px-0 m-0"  width="10%">
									<img src="/images/${item.account.photo}" alt="" width="50%">
								</td>
								<td>${item.account.username}</td>
								<td>${item.account.fullname}</td>
								<td>${item.account.email}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- End Container fluid  -->
</body>
</html>