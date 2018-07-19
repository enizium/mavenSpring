package com.itn.controller;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.itn.model.News;
import com.itn.service.NewsService;

@Controller
@RequestMapping("/Admin/News")
public class NewsController {

	@Autowired
	NewsService newsService;

	@GetMapping("/AddNews")
	public ModelAndView newNews(ModelAndView mv) {
		mv.setViewName("addnews");
		return mv;
	}

	@PostMapping("/AddNews")
	public ModelAndView saveNews(@RequestParam("title") String title, 
			@RequestParam("image") MultipartFile image,
			@RequestParam("author") String author, 
			@RequestParam("category") String category,
			@RequestParam("article") String article, 
			@RequestParam("date") String date1, ModelAndView mv) {
		String imageName = image.getOriginalFilename();
		System.out.println(imageName);
		LocalDate date = LocalDate.parse(date1);

		News news = new News(title, author, article, category, imageName, date);
		String msg;
		if (newsService.saveImage(image)) {
			newsService.saveNews(news);
			msg = "File uploaded";
			mv.addObject("message", msg);
			mv.setViewName("addnews");

		}
		return mv;

	}

	
}