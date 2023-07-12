
<%@ include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
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
						Order List
						<!-- <a href="orderControl" class="btn btn-success float-right">Add
						New Order</a> -->
					</h3>
					
					<table class="table text-center">
						<thead>
							<tr>
								<th style="font-weight: bolder; font-size: 18px">Order ID</th>
								<th style="font-weight: bolder; font-size: 18px">Username</th>
								<th style="font-weight: bolder; font-size: 18px">Create
									Date</th>
								<th style="font-weight: bolder; font-size: 18px">Address</th>
								<th style="font-weight: bolder; font-size: 18px">Order
									Detail</th>
								<th style="font-weight: bolder; font-size: 18px">Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${page.content}">
								<tr>
									<td>${item.id}</td>
									<td>${item.account.username}</td>
									<td>${item.createDate}</td>
									<td>${item.address}</td>
									<td><a href="/admin/orderDetail?id=${item.id }"
										style="font-size: 14px">Order Detail</a></td>
									<td><a class='btn btn-danger btn-xs'
										style="font-size: 14px" href="order/delete/${item.id}"> <span
											class="glyphicon glyphicon-edit"></span> Delete
									</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

				</div>
			</div>
		</div>
		<!-- End Container fluid  -->
	</div>
	</div>
	</div>
	</div>

	
	<%@ include file="/common/footer.jsp"%>
</body>
</html>