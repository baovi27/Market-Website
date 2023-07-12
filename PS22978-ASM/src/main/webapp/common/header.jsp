<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

		<%@ include file="/common/header2.jsp"%>
	<!-- Hero Section Begin -->
	<section class="hero">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="hero__categories">
						<div class="hero__categories__all">
							<i class="fa fa-bars"></i> <span>All departments</span>
						</div>
						<ul>
							<li><a href="/product/type-meat">Meat</a></li>
							<li><a href="/product/type-fruit">Fruit</a></li>
							<li><a href="/product/type-salad">Salad</a></li>
							<li><a href="/product/type-vegetable">Vegetable</a></li>
							<li><a href="/product/type-fastfood">Fastfood</a></li>
							<li><a href="/product/type-traditional">Traditional</a></li>
							<li><a href="/product/type-drink">Drink</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-9">
					<div class="hero__search">
						<div class="hero__search__form">
							<form action="/product/name">
								<div class="hero__search__categories">
									All Categories <span class="arrow_carrot-down"></span>
								</div>
								<input name="name" placeholder="Name?" />
								<button class="site-btn">SEARCH</button>
							</form>
						</div>
						<div class="hero__search__phone">
							<div class="hero__search__phone__icon">
								<i class="fa fa-phone"></i>
							</div>
							<div class="hero__search__phone__text">
								<h5>+65 11.188.888</h5>
								<span>support 24/7 time</span>
							</div>
						</div>
					</div>
					<img alt="" src="/images/bannerfinal.png">
						<div class="hero__text">
							<a href="#" class="primary-btn">SHOP NOW</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->





</body>
</html>