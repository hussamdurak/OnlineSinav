package com.calisma.onlinesinav;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IncluderController {

	// header bölümü çaðýran inc fonksiyonu
	@RequestMapping(value = "/header", method = RequestMethod.GET)
	public String header() {
		return "inc/header";
	}
	
	@RequestMapping(value = "/header", method = RequestMethod.POST)
	public String pheader() {
		return "inc/header";
	}

	// footer bölümü çaðýran inc fonksiyonu
	@RequestMapping(value = "/footer", method = RequestMethod.GET)
	public String footer() {
		return "inc/footer";
	}

}
