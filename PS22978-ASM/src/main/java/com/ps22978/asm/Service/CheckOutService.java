package com.ps22978.asm.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ps22978.asm.Bean.Account;
import com.ps22978.asm.Bean.CartItem;
import com.ps22978.asm.Bean.Products;
import com.ps22978.asm.Bean.OrderDetail;
import com.ps22978.asm.Bean.Orders;
import com.ps22978.asm.Dao.OrderDao;
import com.ps22978.asm.Dao.OrderDetailDao;


@Service
public class CheckOutService {

	
	@Autowired
	ShoppingCartService shoppingCartService;
	
	@Autowired
	OrderDao orderDAO;
	
	@Autowired
	OrderDetailDao orderDetailDAO;
	
	public Orders order (Account user, String address) {
		Orders order = new Orders();
		order.setAccount(user);
		order.setAddress(address);
		orderDAO.save(order);
		for(CartItem item:shoppingCartService.getItems()) {
			OrderDetail orderDetail = new OrderDetail();
			orderDetail.setOrder(order);
			orderDetail.setPrice(item.getPrice());
			orderDetail.setQuantity(item.getQty());
			
			Products product = new Products();
			product.setId(item.getId());
			product.setName(item.getName());
			orderDetail.setProduct(product);
			orderDetailDAO.save(orderDetail);
		}
		shoppingCartService.clear();
		return order;
	}
}
