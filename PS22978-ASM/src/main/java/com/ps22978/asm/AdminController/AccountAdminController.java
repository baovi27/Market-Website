package com.ps22978.asm.AdminController;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps22978.asm.Bean.Account;
import com.ps22978.asm.Dao.AccountDao;

@Controller
public class AccountAdminController {

	@Autowired
	AccountDao dao;
	
	@RequestMapping("/account/page")
	public String paginate(Model model,	@RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Account> page = dao.findAll(pageable);
		int currentPage =1;
		int totalItems = page.getNumberOfElements();
		int totalPages = page.getTotalPages();
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("page", page);
		return "admin/AccountsController";
	}
	
	@RequestMapping("/account/delete/{username}")
	public String create(@PathVariable("username") String username) {
		dao.deleteById(username);
		return "redirect:/account/page";
	}
	
	@RequestMapping("/account/edit/{username}")
	public String edit(Model model, @PathVariable("username") String username) {
		Account item = dao.findById(username).get();
		model.addAttribute("item", item);
//		List<Accounts> items = dao.findAll();
//		model.addAttribute("items", items);
		return "admin";
	}
	
}
