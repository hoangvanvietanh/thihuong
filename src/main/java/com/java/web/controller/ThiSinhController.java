package com.java.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.java.web.entity.ThiSinh;
import com.java.web.services.ThiSinhServices;

@Controller
@RequestMapping("/")
public class ThiSinhController {
	
	@Autowired
	private ThiSinhServices thiSinhServices;
	
	@RequestMapping(method = RequestMethod.GET)
	public String create(Model model,ModelMap modelMap) {
		List<ThiSinh> dsThiSinh = thiSinhServices.dsThiSinh();
		model.addAttribute("dsThiSinh", dsThiSinh);
		return "thisinh";
	}
}
