package com.java.web.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.java.web.entity.ThiSinh;

@Controller
@RequestMapping("/ThongTinDeThi")
public class ThongTinDeThiController {
	@RequestMapping(method = RequestMethod.GET)
	public String create(Model model,ModelMap modelMap) {
		return "ThongTinDeThi";
	}
}
