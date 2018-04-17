package com.calisma.onlinesinav;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import DB.DB;

@Controller
public class SecenekController {
	
	DB db = new DB();
	static String sid="";
	static String soru="";
	
	@RequestMapping(value="/secenek/{id}/{icerik}", method=RequestMethod.GET)
	public String secenek(@PathVariable String id, @PathVariable String icerik, Model model) {
		soru = icerik;
		sid=id;
		model.addAttribute("id", id);
		model.addAttribute("icerik", soru);
		return "secenek";
	}
	
	@RequestMapping(value="/cevap", method=RequestMethod.POST)
	public String cevap(@RequestParam String icerik, @RequestParam String sonuc, Model model) {
		int csonuc = -1;
		if(sonuc.equals("Yanlis")) {
			csonuc = 0;
		}else {
			csonuc = 1;
		}
		
		try {
			String q = "call cevapEkle('"+sid+"', '"+icerik+"', '"+csonuc+"')";
			int yaz = db.baglan().executeUpdate(q);
		} catch (Exception e) {
			System.err.println("Cevap Yazma Hatasi : " + e);
		}
		
		model.addAttribute("icerik", soru);
		return "secenek";
	}

}
