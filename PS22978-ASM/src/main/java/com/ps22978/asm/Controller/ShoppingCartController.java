package com.ps22978.asm.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import com.ps22978.asm.Service.ShoppingCartService;
import com.ps22978.asm.utils.ParamService;


@Controller
public class ShoppingCartController {
	@Autowired
	ShoppingCartService cart;
	@Autowired
	ParamService param;

	@RequestMapping("/home/cart")
	public String register(Model model) {
		model.addAttribute("cart", cart);
		return "user/shop-cart";
	}

	@RequestMapping("/home/cart/add/{id}")
	public String add(@PathVariable("id") Integer id) {
		cart.add(id);
		return "redirect:/home/cart";
	}

	@RequestMapping("/home/cart/sub/{id}")
	public String sub(@PathVariable("id") Integer id) {
		cart.sub(id);
		return "redirect:/home/cart";
	}

	@RequestMapping("/home/cart/remove/{id}")
	public String remove(@PathVariable("id") Integer id) {
		cart.remove(id);
		return "redirect:/home/cart";
	}

	@RequestMapping("/home/cart/update")
	public String update() {
		Integer id = param.getInt("id", 0);
		int qty = param.getInt("qty", 0);
		cart.update(id, qty);
		return "redirect:/home/cart";
	}

	@RequestMapping("/home/cart/clear")
	public String clear() {
		cart.clear();
		return "redirect:/home/cart";
	}
}
