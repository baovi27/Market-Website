
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
	background-color: #f8f9fa;
}

.content {
	margin-top: 20px;
}

.card {
	height: 200px;
}
</style>
<div class="container-fluid">
		<div class="row">
			<div class="col-md-2 sidebar">
				<h3>Admin Dashboard</h3>
				<ul class="list-group mt-4">
					
					<a class="list-group-item">Dashboard</li>
					<a href="/admin/page"  class="list-group-item">Products</a>
					<a  href="/order/page" class="list-group-item">Orders</a>
					<a  href="/account/page" class="list-group-item">Accounts</a>
					<a  href="/bestseller/page" class="list-group-item">Top 10</a>
					<a  href="/topcustomer/page" class="list-group-item">Top Customer</a>
				</ul>
			</div>

			<div class="col-md-10 content">
				<!-- Page wrapper  -->
				<div class="page-wrapper">
					<!-- Container fluid  -->
					<div class="container">
						<!-- Sales Cards  -->
								
								