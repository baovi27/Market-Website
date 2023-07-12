package com.ps22978.asm.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps22978.asm.utils.SessionService;

@Controller
public class LogoutController {
	@Autowired
	SessionService sessionService;
	
	@RequestMapping("/logout")
	public String logout() {
		sessionService.remove("user");
		return "redirect:/index/home";
	}
}
