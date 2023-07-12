package com.ps22978.asm.Controller;

import java.util.List;
import java.util.Optional;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps22978.asm.Bean.Products;
import com.ps22978.asm.Bean.Top10;
import com.ps22978.asm.Dao.AccountDao;
import com.ps22978.asm.Dao.OrderDetailDao;
import com.ps22978.asm.Dao.ProductDao;
import com.ps22978.asm.utils.CookieService;
import com.ps22978.asm.utils.ParamService;
import com.ps22978.asm.utils.SessionService;

@Controller
public class HomeController {
	@Autowired
	CookieService cookieService;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService;
	@Autowired
	AccountDao accDAO;
	@Autowired
	ProductDao proDAO;
	@Autowired
	OrderDetailDao orderDetailDAO;
	@Autowired
	ProductDao dao;
	@Autowired
	HttpServletRequest request;

	@RequestMapping("index/home")
	public String show(Model model,@RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 12);
		
		
		Pageable pageable12 = PageRequest.of(0, 12); 
		Page<Top10> topList = orderDetailDAO.getTop10(pageable12);
		model.addAttribute("topList", topList);
		
		List<Products> items = proDAO.findAll();
		model.addAttribute("items", items);
		return "user/index";
	}

}
