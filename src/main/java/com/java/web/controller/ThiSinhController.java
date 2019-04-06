package com.java.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.java.web.entity.ThiSinh;
import com.java.web.services.ThiSinhService;

@Controller
@RequestMapping(value = "/admin")
public class ThiSinhController {
	@Autowired
	private ThiSinhService thiSinhService;
	
	@RequestMapping(value = "/thisinh", method = RequestMethod.GET)
	public String thiSinhList(ModelMap map) {
		map.addAttribute("dsThiSinh", thiSinhService.findAll());
		return "ThiSinh";
	}
}
