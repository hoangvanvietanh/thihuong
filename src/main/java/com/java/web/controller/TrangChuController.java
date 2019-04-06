package com.java.web.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/")
public class TrangChuController {

	@RequestMapping(method = RequestMethod.GET)
	public String create(Model model,ModelMap modelMap) {
		return "TrangChu";
	}
}
