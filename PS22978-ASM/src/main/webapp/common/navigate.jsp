<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="product__pagination">
						<a href="/product/page?p=0">First</a> <a
							href="/product/page?p=${page.number-1}"
							class="fa fa-long-arrow-left"></a> <a
							href="/product/page?p=${page.number+1}"
							class="fa fa-long-arrow-right"></a> <a
							href="/product/page?p=${page.totalPages-1}">Last</a>
					</div>
</body>
</html>