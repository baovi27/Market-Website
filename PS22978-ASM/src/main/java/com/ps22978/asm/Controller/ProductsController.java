package com.ps22978.asm.Controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.ps22978.asm.Bean.Products;
import com.ps22978.asm.Dao.ProductDao;

@Controller
public class ProductsController {

	@Autowired
	ProductDao dao;

	@Autowired
	HttpServletRequest request;

//	@RequestMapping("index/shop")
//	public String index(Model model) {
//		List<Products> items = dao.findAll();
//		model.addAttribute("items", items);
//		return "/user/shop-sort";
//	}

	@RequestMapping("product/sort")
	public String sortDesc(Model model, @RequestParam("field") Optional<String> field) {
		Sort sort = Sort.by(Direction.DESC, field.orElse("price"));
		model.addAttribute("field", field.orElse("price").toUpperCase());
		List<Products> items = dao.findByPrice2(0, sort);
		model.addAttribute("items", items);
		return "user/shop-sort";
	}

	@RequestMapping("product/asc")
	public String sortAsc(Model model, @RequestParam("asc") Optional<String> asc) {
		Sort sort = Sort.by(Direction.ASC, asc.orElse("price"));
		model.addAttribute("asc", asc.orElse("price").toUpperCase());
		List<Products> items = dao.findByPriceAsc(0, sort);
		model.addAttribute("items", items);
		return "user/shop-sort";
	}

	@RequestMapping("product/page")
	public String paginate(Model model, @RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 12);
		Page<Products> page = dao.findAll(pageable);
		model.addAttribute("page", page);
		return "user/shop-grid";
	}
	
	
	
//	@RequestMapping("/product/search")
//	public String search(Model model, 
//			@RequestParam("min") Optional<Double> min,
//			@RequestParam("max") Optional<Double> max) {
//		
//		double minPrice = min.orElse(Double.MIN_VALUE);
//		double maxPrice = max.orElse(Double.MAX_VALUE);
//	
//		//List<Product> items = dao.findByPrice(minPrice, maxPrice);
//		List<Products> items = dao.findByPriceBetween(minPrice, maxPrice);
//		model.addAttribute("items", items);
//		return "product/search";
//	}
//	
	

	@RequestMapping("/product/name")
	public String name(Model model, @RequestParam("name") String name) {
		List<Products> items = dao.findByKeyword("%" + name + "%");
		// List<Product> items = dao.findByKeyword2("%"+name+"%");
		model.addAttribute("items", items);
		return "user/shop-sort";
	}

	@RequestMapping("/product/type-meat")
	public String meat(Model model) {
		List<Products> items = dao.findByMeat("Meat");
		model.addAttribute("items", items);
		return "user/shop-sort";
	}

	@RequestMapping("/product/type-fruit")
	public String fruit(Model model) {
		List<Products> items = dao.findByFruit("Fruit");
		model.addAttribute("items", items);
		return "user/shop-sort";
	}

	@RequestMapping("/product/type-salad")
	public String Salad(Model model) {
		List<Products> items = dao.findBySalad("Salad");
		model.addAttribute("items", items);
		return "user/shop-sort";
	}

	@RequestMapping("/product/type-vegetable")
	public String Vegetable(Model model) {
		List<Products> items = dao.findByFruit("Vegetable");
		model.addAttribute("items", items);
		return "user/shop-sort";
	}

	@RequestMapping("/product/type-fastfood")
	public String FastFood(Model model) {
		List<Products> items = dao.findByFruit("FastFood");
		model.addAttribute("items", items);
		return "user/shop-sort";
	}

	@RequestMapping("/product/type-traditional")
	public String Traditional(Model model) {
		List<Products> items = dao.findByFruit("Traditional");
		model.addAttribute("items", items);
		return "user/shop-sort";
	}

	@RequestMapping("/product/type-drink")
	public String Drink(Model model) {
		List<Products> items = dao.findByFruit("Drink");
		model.addAttribute("items", items);
		return "user/shop-sort";
	}

}
