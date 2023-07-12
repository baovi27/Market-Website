package com.ps22978.asm.Controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps22978.asm.Bean.Products;
@Controller
public class OrderController {

	@RequestMapping("/order")
	public String show(Model model) {
//		List<Products> items=proDAO.findAll();
//		model.addAttribute("items",items);
		return "user/register";
	}
}
