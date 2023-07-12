package com.ps22978.asm.AdminController;


import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps22978.asm.Bean.Products;
import com.ps22978.asm.Dao.ProductDao;



@Controller
public class HomeAdminController {

	@Autowired
	ProductDao dao;

	@Autowired
	HttpServletRequest request;

//	@RequestMapping("add")
//	public String index(Model model) {
//		return "admin/ProductsController";
//	}
	
	@RequestMapping("/productControl")
	public String control(Model model) {
		Products item = new Products();
		model.addAttribute("item", item);
		return "admin/ProductsController";
	}
//	@RequestMapping("/product/create")
//	public String create(Products item) {
//		item.setCreateDate(new Date());
//		dao.save(item);
//		return "redirect:/ProductsController";
//	}
	
	@RequestMapping("admin/page")
	public String paginate(Model model,	@RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Products> page = dao.findAll(pageable);
		int currentPage =1;
		int totalItems = page.getNumberOfElements();
		int totalPages = page.getTotalPages();
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("page", page);
		return "admin/index";
	}
	
	@RequestMapping("/product/create")
	public String create(Products item) {
		item.setCreateDate(new Date());
		dao.save(item);
		return "redirect:/productControl";
	}
	
	@ModelAttribute("availables")
	public Map<Boolean, String>getAdmins(){
		Map<Boolean, String> map = new HashMap<>();
		map.put(true, "Stocking");
		map.put(false, "Out of Stock");
		return map;
	}
	
}
