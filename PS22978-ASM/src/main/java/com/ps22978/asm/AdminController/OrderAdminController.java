package com.ps22978.asm.AdminController;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps22978.asm.Bean.Orders;
import com.ps22978.asm.Dao.OrderDao;


@Controller
public class OrderAdminController {
	@Autowired
	OrderDao dao;
	
	@RequestMapping("/order/page")
	public String paginate(Model model,	@RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 10);
		Page<Orders> page = dao.findAll(pageable);
		
		int currentPage =1;
		int totalItems = page.getNumberOfElements();
		int totalPages = page.getTotalPages();
		
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentPage", currentPage);
		
		model.addAttribute("page", page);
		return "admin/OrderController";
	}
	
	@RequestMapping("/orderControl")
	public String control(Model model) {
		Orders item = new Orders();
		model.addAttribute("item", item);
		return "admin/OrderController";
	}
	
	
}
