package com.itn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itn.service.NewsService;

@Controller
public class HomeController {

	// @RequestMapping(value={"/","/index"}, method=RequestMethod.GET)
	//
	// public String indexControl(){
	//
	// return "frontend/index";
	// }

	@Autowired
	NewsService newsService;

	@GetMapping({ "/index", "/" })
	public String showNews(Model model) {
		model.addAttribute("newslist", newsService.getAllNews());
		return "frontend/index";
	}
}