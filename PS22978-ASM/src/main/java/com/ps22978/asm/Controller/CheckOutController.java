package com.ps22978.asm.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.ps22978.asm.Bean.Account;
import com.ps22978.asm.Bean.OrderDetail;
import com.ps22978.asm.Bean.Orders;
import com.ps22978.asm.Dao.OrderDetailDao;
import com.ps22978.asm.Service.CheckOutService;
import com.ps22978.asm.Service.ShoppingCartService;
import com.ps22978.asm.utils.ParamService;
import com.ps22978.asm.utils.SessionService;


@Controller
public class CheckOutController {

	
	@Autowired
	ShoppingCartService shoppingCartService;
	
	@Autowired
	SessionService sessionService;
	
	@Autowired
	ParamService paramService;
	
	@Autowired
	CheckOutService checkOutService;
	
	@Autowired
	OrderDetailDao orderDetailDAO;
	
	@RequestMapping("/checkout")
	public String checkout(Model model) {
		model.addAttribute("cart", shoppingCartService);
		return "user/checkout";
	}
	
	@RequestMapping("/order-detail")
	public String orderdetail(Model model) {
		String address = paramService.getString("address", "");
		
		if(!shoppingCartService.getItems().isEmpty()) {
			if(address.equals("")) {
				return "redirect:/product/page";
			}
			Account user = sessionService.get("user");
			Orders order = checkOutService.order(user, address);
			List<OrderDetail> items = orderDetailDAO.findByOrderID(order.getId());
			model.addAttribute("order", order);
			model.addAttribute("items",items);
			//return "orderdetail";
		}
		return "user/orderdetail";
	}
	
}
