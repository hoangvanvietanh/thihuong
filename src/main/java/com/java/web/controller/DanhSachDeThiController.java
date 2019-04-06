package com.java.web.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/DanhSachDeThi")
public class DanhSachDeThiController {
	
	@RequestMapping(method = RequestMethod.GET)
	public String create(Model model,ModelMap modelMap) {
		return "DanhSachDeThi";
	}
}
