package com.java.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.web.entity.ChuDe;
import com.java.web.services.ChuDeService;

@Controller
@RequestMapping(value = "/admin")
public class ChuDeController {
	@Autowired
	private ChuDeService chuDeService;
	
	@RequestMapping(value = "/chude", method = RequestMethod.GET)
	public String chuDeList(ModelMap map) {
		map.addAttribute("dsChuDe", chuDeService.findAll());
		return "ChuDe";
	}
	
	@RequestMapping(value = "/add-chude", method = RequestMethod.GET)
	public String addChuDe(ModelMap map) {
		map.addAttribute("chuDe", new ChuDe());
		map.addAttribute("edit", false);
		return "ChuDeForm";
	}
	
	@RequestMapping(value = "/add-chude", method = RequestMethod.POST)
	public String saveChuDe(@ModelAttribute("chuDe") ChuDe chuDe) {
//		System.out.println(chuDe.getMaChuDe());
//		if(chuDeService.findAll().contains(chuDe)) {
//			return "ChuDeForm";
//		}
		
		chuDeService.addChuDe(chuDe);
		return "redirect:/admin/chude";
	}
	
	@RequestMapping(value = "/edit-chude", method = RequestMethod.GET)
	public String editChuDe(@RequestParam String maChuDe, ModelMap map) {
		map.addAttribute("chuDe", chuDeService.findById(maChuDe));
		map.addAttribute("edit", true);
		return "ChuDeForm";
	}
	
	@RequestMapping(value = "edit-chude", method = RequestMethod.POST)
	public String updateChuDe(@ModelAttribute("chuDe") ChuDe chuDe) {
		chuDeService.updateChuDe(chuDe);
		return "redirect:/admin/chude";
	}
	
	@RequestMapping(value = "/delete-chude", method = RequestMethod.GET)
	public String deleteChuDe(@RequestParam String maChuDe) {
		chuDeService.deleteChuDe(maChuDe);
		return "redirect:/admin/chude";
	}
}
