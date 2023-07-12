package com.ps22978.asm.AdminController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps22978.asm.Bean.ReportCategory;
import com.ps22978.asm.Bean.Top10;
import com.ps22978.asm.Bean.TopCustomer;
import com.ps22978.asm.Dao.AccountDao;
import com.ps22978.asm.Dao.OrderDao;
import com.ps22978.asm.Dao.OrderDetailDao;
import com.ps22978.asm.Dao.ProductDao;
import com.ps22978.asm.utils.CookieService;
import com.ps22978.asm.utils.ParamService;
import com.ps22978.asm.utils.SessionService;


@Controller
public class ReportAdminController {

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
	OrderDao orderDAO;

	@Autowired
	OrderDetailDao orderDetailDAO;

	@RequestMapping("/bestseller/page")
	public String bestSaler(Model model) {
		Pageable pageable = PageRequest.of(0, 12);
		Page<Top10> topList = orderDetailDAO.getTop10(pageable);
		model.addAttribute("topList", topList);
		return ("admin/bestseller");
	}

	@RequestMapping("/topcustomer/page")
	public String topCustomer(Model model) {
		List<TopCustomer> topCustomer = accDAO.getTopAccount();
		model.addAttribute("topCustomer", topCustomer);
		return ("admin/topcustomer");
	}

	@RequestMapping("reportOrderByDate")
	public String reportOrderByDate(Model model) {
		return "admin/reportOrderByDate";
	}
}
