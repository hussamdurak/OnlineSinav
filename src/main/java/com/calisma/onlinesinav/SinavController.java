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
import Properties.CevapPro;
import Properties.SoruPro;

@Controller
public class SinavController {

	DB db = new DB();
	static int sayac = -1;

	@RequestMapping(value = "/sinav", method = RequestMethod.GET)
	public String secimSinav(Model model) {
		sayac++;
		if (sayac > 2) {
			// sayaç sýfýrlandý
			sayac = -1;
			return "redirect:/sonuc";
		}
		List<SoruPro> sls = soruGetir();
		List<CevapPro> cls = cevapGetir();
		model.addAttribute("cls", cls);
		model.addAttribute("soru", sls.get(sayac).getSicerik());
		model.addAttribute("sid", sls.get(sayac).getSid());
		return "sinav";
	}

	@RequestMapping(value = "/cevapAl", method = RequestMethod.POST)
	public String sinav(@RequestParam String radio, Model model) {
		System.out.println("cevap : " + radio);
		System.out.println("dataAl çalýþtý");
		return "sinav";
	}

	public List<SoruPro> soruGetir() {
		List<SoruPro> sls = new ArrayList<SoruPro>();
		// db den soru getirme
		try {
			String q = "call soruGetir";
			ResultSet rs = db.baglan().executeQuery(q);
			while (rs.next()) {
				SoruPro sp = new SoruPro();
				sp.setSid(rs.getString(1));
				sp.setSicerik(rs.getString(2));
				sls.add(sp);
			}
		} catch (Exception e) {
			System.err.println("Soru Getirme Hatasi : " + e);
		}
		return sls;
	}

	public List<CevapPro> cevapGetir() {
		List<CevapPro> cls = new ArrayList<CevapPro>();
		List<SoruPro> sls = soruGetir();
		// db den cevaplarý getirme
		String cid = sls.get(sayac).getSid();
		try {
			String q = "call cevapGetir('" + cid + "')";
			ResultSet rs = db.baglan().executeQuery(q);
			while (rs.next()) {
				CevapPro cp = new CevapPro();
				cp.setCicerik(rs.getString(1));
				cp.setCsonuc(rs.getString(2));
				cls.add(cp);
			}
		} catch (Exception e) {
			System.err.println("Soru Getirme Hatasi : " + e);
		}
		return cls;
	}

}
