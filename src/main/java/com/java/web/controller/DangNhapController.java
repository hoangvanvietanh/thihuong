package com.java.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.web.entity.TaiKhoan;
import com.java.web.services.TaiKhoanService;

@Controller
public class DangNhapController {
	@Autowired
	private TaiKhoanService taiKhoanService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage() {
		return "DangNhap";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST) 
	public String login(@RequestParam String email, @RequestParam String matKhau, ModelMap map, HttpSession session) {
		List<TaiKhoan> ds = taiKhoanService.findAll();
		for(TaiKhoan taiKhoan : ds) {
			if(taiKhoan.getEmail().equalsIgnoreCase(email)) {
				if(taiKhoan.getMatKhau().equalsIgnoreCase(matKhau)) {
					session.setAttribute("email", email);
					return "redirect:/admin/chude";
				}
				else {
					map.addAttribute("messagePass", true);
					return "DangNhap";
				}
			}
		}
		map.addAttribute("messageEmail", true);
		return "DangNhap";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("email");
		return "redirect:/";
	}
}
