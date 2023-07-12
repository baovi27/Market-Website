<%@ include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Ogani | Template</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">

</head>

<%@ include file="/common/head.jsp"%>
<body>
	<%@ include file="/common/header2.jsp"%>
    

    <!-- Shoping Cart Section Begin -->
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th class="shoping__product">Products</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Total</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="item" items="${cart.items}">
								<form action="/home/cart/update" method="post">
									<input type="hidden" name="id" value="${item.id}">
									<tr>
										<td class="cart-pic first-row"><img
											src="/images/${item.image}" alt="" width=20%></td>
										<td class="cart-title first-row">
											<h5>${item.name }</h5>
										</td>
										<td class="p-price first-row">${item.price }</td>
										<td>
											<div class="pt-4">
												<a	class='btn btn-warning text-light btn-xs' style="width: 38px;" href="/home/cart/sub/${item.id}"> - </a>
												<input name="qty" value="${item.qty}" min="0" onblur="this.form.submit()" class="text-center text-warning" style="width: 50px; height: 30px; font-size:18px; font-weight: bolder; border: none"> 
												<a class='btn btn-warning btn-xs text-light' style="width: 38px;" href="/home/cart/add/${item.id}">+</a> 
											</div>
										</td>
										<td class="total-price first-row">${item.price * item.qty}</td>
										<td class="close-td first-row"><a
											class='btn btn-xs text-danger' style="font-weight: bolder"
											href="/home/cart/remove/${item.id}"><span
												class="glyphicon glyphicon-trash"></span> Remove</a></td>
									</tr>
								</form>
							</c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__btns">
                        <a href="/product/page" class="primary-btn cart-btn">CONTINUE SHOPPING</a>
                        <a href="#" class="primary-btn cart-btn cart-btn-right"><span class="icon_loading"></span>
                            Upadate Cart</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="shoping__continue">
                        <div class="shoping__discount">
                            <h5>Discount Codes</h5>
                            <form action="#">
                                <input type="text" placeholder="Enter your coupon code">
                                <button type="submit" class="site-btn">APPLY COUPON</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="shoping__checkout">
                        <h5>Cart Total</h5>
                        <ul>
								<li class="cart-total">Total <span>${cart.total}</span></li>
							</ul>
							<c:if test="${!isLogin}">
								<a href="/home/login" class="proceed-btn">PROCEED TO CHECK OUT</a>
							</c:if>
							<c:if test="${isLogin}">
								<a href="/checkout" class="proceed-btn">PROCEED TO CHECK OUT</a>
							</c:if>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shoping Cart Section End -->
    
	<%@ include file="/common/footer.jsp"%>

   

</body>

</html>