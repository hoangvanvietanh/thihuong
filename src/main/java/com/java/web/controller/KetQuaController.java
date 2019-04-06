package com.java.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/admin")
public class KetQuaController {
	
	
	@RequestMapping(value = "/ketqua", method = RequestMethod.GET)
	public String ketQuaList() {
		return "KetQua";
	}
}
