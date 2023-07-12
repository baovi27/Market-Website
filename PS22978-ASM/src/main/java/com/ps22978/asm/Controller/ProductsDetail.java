package com.ps22978.asm.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps22978.asm.Bean.Products;
import com.ps22978.asm.Dao.ProductDao;
import com.ps22978.asm.utils.CookieService;
import com.ps22978.asm.utils.ParamService;
import com.ps22978.asm.utils.SessionService;


@Controller
public class ProductsDetail {
	

	@Autowired
	CookieService cookieService;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService;
	
	@Autowired
	ProductDao dao;
	
	@RequestMapping("/product/detail")
	public String index() {
		return "user/shop-detail";
	}
	
	@RequestMapping(value = "/product/detail/{id}")
	public String view(ModelMap model, @PathVariable("id") int id) {
		Products product = new Products();
		List<Products> products = dao.findAll();
		for (Products pr : products) {
			if (pr.getId() == id) {
				product = pr;
				break;
			}
		}
		model.addAttribute("products", products);
		model.addAttribute("pr", product);
		return "user/shop-detail";
	}
}
