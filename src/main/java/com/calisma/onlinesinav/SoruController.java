package com.calisma.onlinesinav;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import DB.DB;
import Properties.SoruPro;

@Controller
public class SoruController {

	DB db = new DB();

	@RequestMapping(value = "/soru", method = RequestMethod.GET)
	public String soru(Model model) {
		List<SoruPro> ls = soruDoldur();
		if(ls.size() > 0) {
			model.addAttribute("ls", ls);
		}
		return "soru";
	}

	@RequestMapping(value = "/soruEkle", method = RequestMethod.POST)
	public String soruEkle(@RequestParam String soru, Model model) {
		try {
			String q = "call soruEkle('" + soru + "')";
			int yaz = db.baglan().executeUpdate(q);
		} catch (Exception e) {
			System.err.println("Soru Ekleme Hatasi " + e);
		}
		List<SoruPro> ls = soruDoldur();
		if(ls.size() > 0) {
			model.addAttribute("ls", ls);
		}
		return "soru";
	}
	
	
	public List<SoruPro> soruDoldur(){
		List<SoruPro> ls = new ArrayList<SoruPro>();
		try {
			String q = "select*from sorular";
			ResultSet rs = db.baglan().executeQuery(q);
			while(rs.next()) {
				SoruPro  sp = new SoruPro();
				sp.setSid(rs.getString(1));
				sp.setSicerik(rs.getString(2));
				ls.add(sp);
			}
		} catch (Exception e) {
			System.err.println("Soru Getirme Hatasi : " + e);
		}
		
		return ls;
	}
	
	@RequestMapping(value="sil/{id}",method = RequestMethod.GET )
	public String soruSil(@PathVariable String id, Model model) {
		
		if(!id.equals("")) {
			try {
				String q = "call soruSil('"+id+"')";
				int yaz = db.baglan().executeUpdate(q);
			} catch (Exception e) {
				System.err.println("Soru Silme Hatasi : " +e);
			}
			List<SoruPro> ls = soruDoldur();
			if(ls.size() > 0) {
				model.addAttribute("ls", ls);
			}
		}
		
		return "soru";
	}
	
	
	

}
