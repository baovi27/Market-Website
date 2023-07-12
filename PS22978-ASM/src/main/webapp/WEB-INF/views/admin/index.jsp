
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<style>
.sidebar {
	height: 100vh;
	background-color: #f8f9fa;
}

.content {
	margin-top: 20px;
}

.card {
	height: 200px;
}
</style>
</head>
<%@ include file="/common/head.jsp"%>
<body>
	<%@ include file="/common/header2.jsp"%>
	<%@ include file="/common/admin_filter.jsp"%>

	<h3 class="alert alert-info">
		Product List <a href="/productControl"
			class="btn btn-success float-right">Add New Product</a>
	</h3>
	<table class="table">
		<thead>
			<tr>
				<th style="font-weight: bolder; font-size: 18px">ID</th>
				<th style="font-weight: bolder; font-size: 18px">Name</th>
				<th style="font-weight: bolder; font-size: 18px">Image</th>
				<th style="font-weight: bolder; font-size: 18px">Price</th>
				<th style="font-weight: bolder; font-size: 18px">CreateDate</th>
				<th style="font-weight: bolder; font-size: 18px">Type</th>
				<th style="font-weight: bolder; font-size: 18px">Available</th>


			</tr>
		</thead>
	
	<c:forEach var="item" items="${page.content}">
		<tr>
			<td>${item.id}</td>
			<td>${item.name}</td>
			<td><img src="/images/${item.image}" width=90px; /></td>
			<td>${item.price}</td>
			<td>${item.createDate}</td>
			<td>${item.typed}</td>
			<td>${item.available}</td>
			<td><a class='btn btn-warning btn-xs' style="font-size: 18px"
				href="product/edit/${item.id}"> <span
					class="glyphicon glyphicon-edit"></span> Edit
			</a> <a href="product/delete/${item.id}" style="font-size: 18px"
				class="btn btn-danger btn-xs"> <span
					class="glyphicon glyphicon-remove"></span> Delete
			</a></td>
		</tr>
	</c:forEach>
	</tbody>
	</table>
	
	<div class="text-center">
		<a href="/admin/page?p=0" class="btn btn-success">First</a> <a
			href="/admin/page?p=${page.number-1}" class="btn btn-success">Previous</a>
		<a href="/admin/page?p=${page.number+1}" class="btn btn-success">Next</a>
		<a href="/admin/page?p=${page.totalPages-1}" class="btn btn-success">Last</a>
	</div>
	<br>

	</div>
	</div>
	<!-- End Container fluid  -->
	</div>

	</div>
	</div>

	<%@ include file="/common/footer.jsp"%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>