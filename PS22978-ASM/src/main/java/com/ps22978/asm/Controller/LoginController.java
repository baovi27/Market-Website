package com.ps22978.asm.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps22978.asm.Bean.Account;
import com.ps22978.asm.Bean.Products;
import com.ps22978.asm.Dao.AccountDao;
import com.ps22978.asm.Dao.ProductDao;
import com.ps22978.asm.utils.CookieService;
import com.ps22978.asm.utils.ParamService;
import com.ps22978.asm.utils.SessionService;

@Controller
public class LoginController {

	@Autowired
	CookieService cookieService;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService;
	@Autowired
	AccountDao accDAO;
	@Autowired
	ProductDao prodao;

	@GetMapping("home/login")
	public String index() {
		return "user/login";

	}

	@PostMapping("home/login")
	public String loginPost(Model model) {
		String username = paramService.getString("username", "");
		String password = paramService.getString("password", "");
		boolean remember = paramService.getBoolean("remember", false);
		try {
			Account user = accDAO.findById(username).get();
			if (!user.getPassword().equals(password)) {
				model.addAttribute("message", "Wrong Password!");
			} else {
				sessionService.set("user", user);
				if (remember) {
					cookieService.add("username", user.getUsername(), 10);
					cookieService.add("password", user.getPassword(), 10);
				} else {
					cookieService.remove("username");
					cookieService.remove("password");
				}
				model.addAttribute("message", "Login Successfully");
				

			}
		} catch (Exception e) {
			model.addAttribute("message", "Account is invalid!");

		}
		return"redirect:/index/home";
	}

}
