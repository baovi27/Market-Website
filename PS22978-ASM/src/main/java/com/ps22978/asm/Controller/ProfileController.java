package com.ps22978.asm.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class ProfileController {

	@RequestMapping("/profile")
	public String profile() {
		
		return "user/profile";
	}
}
