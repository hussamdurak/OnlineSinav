package com.calisma.onlinesinav;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SecimController {

	
	@RequestMapping(value="/secim", method=RequestMethod.POST)
	public String secim(@RequestParam String adi, @RequestParam String soyadi, Model model) {
		model.addAttribute("adi", adi);
		model.addAttribute("soyadi", soyadi);
		return "secim";
	}
	
	

}
