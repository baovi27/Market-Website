
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">
</head>
<%@ include file="/common/head.jsp"%>
<body>

	<%@ include file="/common/header.jsp"%>
	
	
	
	<div class="related-products spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Related Products</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                			<div class="col-lg-9">
					<div class="row">
						<div class="offset-lg-1 col-lg-5">
							<div >
								<img class="product-big-img img-fluid"
									src="/forUser/img/products/${pr.image }" alt="">
							</div>
						</div>


						<div class="col-lg-6">
							<div class="product-details">
								<div class="pd-title">
									<h3>${pr.name}</h3>
								</div>
								<div class="pd-rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star-o"></i>
								</div>
								<div class="pd-desc">
									<h4>
										Price: $${pr.price}
									</h4>
								</div>
            </div>
        </div>
    </div>
    
    
</body>
</html>