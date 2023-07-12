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

		<!-- Container fluid  -->
		<div class="container-fluid">
			<!-- Sales Cards  -->
			<div class="row">
				<div class="col-md-10 offset-md-1">
					<h3 class="alert alert-info">
						Account List <a href="/home/register"
							class="btn btn-success float-right">Add New Account</a>
					</h3>

					<table class="table text-center">
						<thead>
							<tr>
								<th class="p-0 m-0" width="10%"
									style="font-weight: bolder; font-size: 18px">Photo</th>
								<th style="font-weight: bolder; font-size: 18px">Username</th>
								<th style="font-weight: bolder; font-size: 18px">Password</th>
								<th style="font-weight: bolder; font-size: 18px">Fullname</th>
								<th style="font-weight: bolder; font-size: 18px">Email</th>
								<th style="font-weight: bolder; font-size: 18px">Activated</th>
								<th style="font-weight: bolder; font-size: 18px">Admin</th>
								<th style="font-weight: bolder; font-size: 18px">Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${page.content}">
								<tr>
									<td class="px-0 m-0" width="10%"><img
										src="/images/${item.photo}" alt="" width="50%"
										class="img-fluid"></td>
									<td>${item.username}</td>
									<td>${item.password}</td>
									<td>${item.fullname}</td>
									<td>${item.email}</td>

									<td>${item.activated}</td>
									<td>${item.admin}</td>
									<td><a class='btn btn-warning btn-xs'
										style="font-size: 14px" href="/account/edit/${item.username}">
											<span class="glyphicon glyphicon-edit"></span> Edit
									</a> <a href="/account/delete/${item.username}"
										style="font-size: 14px" class="btn btn-danger btn-xs"> <span
											class="glyphicon glyphicon-remove"></span> Delete
									</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<hr />
					<div class="text-center">
						<a href="/account/page?p=0" class="btn btn-primary">First</a> <a
							href="/account/page?p=${page.number-1}" class="btn btn-primary">Previous</a>
						<a href="/account/page?p=${page.number+1}"
							class="btn btn-primary">Next</a> <a
							href="/account/page?p=${page.totalPages-1}"
							class="btn btn-primary">Last</a>
					</div>
					<hr />
				</div>
			</div>
		</div>
		</div>
		</div>
		</div>
			<%@ include file="/common/footer.jsp"%>
</body>
</html>