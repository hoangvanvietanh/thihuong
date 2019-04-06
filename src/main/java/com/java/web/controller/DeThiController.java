package com.java.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/admin")
public class DeThiController {
	
	
	@RequestMapping(value = "/dethi", method = RequestMethod.GET)
	public String deThiList() {
		return "DeThi";
	}
}
